import sys.FileSystem;
import sys.io.File;

final libs = [
    "bytes",
    "encoding/base64",
    "encoding/hex",
    "errors",
    "hash/adler32",
    "math",
    "math/bits",
    "path",
    "sort",
    "strconv",
    "strings",
    "text/scanner",
    "unicode",
    "unicode/utf16",
    "unicode/utf8"
];

var runnningCount = 0;
var runningCountMutex = new sys.thread.Mutex();
var hxbBool = false;
var ciBool = false;

function main() {
    // create hxmls
    var state = 0;
    final args = Sys.args();
    if (args.length > 0) {
        ciBool = args[0] == "1";
    }
    if (args.length > 1) {
        state = Std.parseInt(args[1]);
    }
    while (true) {
        switch state {
            case 0:
                createHxmls();
                wait();
            case 1:
                if (hxbBool) {
                    createHxb();
                    wait();
                }
            case 2:
                listDirectory();
                buildHxmls();
                wait();
            case 3:
                runHxmls();
                wait();
            case 4:
                createNonTestPkgs();
                wait();
            case 5:
                // internal examples
                Sys.setCwd("examples");
                runExamples("_internal");
                wait();
                Sys.setCwd("..");
            case 6:
                // normal examples
                // Sys.setCwd("examples");
                // runExamples("");
                // Sys.setCwd("..");
            case 7:
                cleanup();
                Sys.println("EXIT");
            default:
                break;
        }
        state++;
    }
}

function wait() {
    while (runnningCount > 0) {
        Sys.println("RUN COUNT: " + runnningCount);
        Sys.sleep(2);
    }
    Sys.println("END WAIT");
}

function createNonTestPkgs() {
    for (i in 0...libs.length) {
        runCommand(libs[i], (ciBool ? 'npx ' : '') + 'haxelib run go2hx -compiler_interp -nodep -port ${5000 + i} ${libs[i]}');
    }
}

function createHxmls() {
    for (i in 0...libs.length) {
        runCommand(libs[i], (ciBool ? 'npx ' : '') + 'haxelib run go2hx -compiler_interp -nodep -port ${4000 + i} ${libs[i]} --norun --test --hxml $i.hxml');
    }
}

function createHxb() {
    runCommand('hxb', (ciBool ? 'npx ' : '') + 'haxelib run go2hx hxb golibs');
}

final targets = [
    "hl", //"js", //"jvm",//, "cpp"
];

function buildHxmls() {
    for (i in 0...libs.length) {
        for (target in targets) {
            runCommand(libs[i], (ciBool ? 'npx ' : '') + 'haxe $i.hxml ' + buildTarget(target, '$i') + (hxbBool ? ' --hxb-lib go2hxlibs.zip' : ''));
        }
    }
}

function runExamples(suffix:String) {
    for (i in 0...libs.length) {
        final name = pathToName(libs[i]);
        runCommand(libs[i], (ciBool ? 'npx ' : '') + 'haxe $name$suffix.hxml');
    }
}

function pathToName(path:String):String {
    return StringTools.replace(path, "/", "_");
}

function runHxmls() {
    for (i in 0...libs.length) {
        for (target in targets) {
            if (target != "interp") {
                runCommand(libs[i], runTarget(target, '$i', [], mainFromHxml('$i.hxml')), false);
            }
        }
    }
}

function runCommand(libName:String, command:String, usingThread:Bool=true) {
    Sys.println('$libName : $command');
    var code = 0;
    if (usingThread) {
        runnningCount++;
        tp.run(() -> {
            code = Sys.command(command);
            if (code != 0) {
                Sys.println('$libName failed to run command: $command');
                tp.shutdown();
                Sys.exit(1);
            }
            trace('FINISH COMMAND: $command');
            runningCountMutex.acquire();
            runnningCount--;
            runningCountMutex.release();
        });
    }else{
        code = Sys.command(command);
        if (code != 0) {
            Sys.println('$libName failed to run command: $command');
            tp.shutdown();
            Sys.exit(1);
        }
        trace('FINISH COMMAND: $command');
    }
}

function cleanup() {
    for (i in 0...libs.length) {
        if (FileSystem.exists('$i.hxml'))
            FileSystem.deleteFile('$i.hxml');
    }
}

function listDirectory() {
    for (path in sys.FileSystem.readDirectory(".")) {
        Sys.println(path);
    }
}

function mainFromHxml(hxml:String):String {
    final line = sys.io.File.getContent(hxml).split("\n")[0];
    final index = line.lastIndexOf(".");
    return line.substr(index) + 1;
}


function buildTarget(target:String, out:String):String {
	return switch target {
        case "jvm":
            '--$target build/$out.jar';
        case "hl":
            '--$target build/$out.$target';
        case "js":
            '-lib hxnodejs --$target build/$out.$target';
		case "cpp":
			'--$target build/$target/$out';
		case "interp":
			"--interp";
		default:
			throw "unknown target: " + target;
	}
}

function runTarget(target:String, out:String, args:Array<String>, main:String):String {
	final index = main.lastIndexOf(".");
	if (index != -1)
		main = main.substr(index + 1);
	var s = switch target {
		case "interp":
			"";
		case "cpp":
			'./build/$target/' + out + "/" + main;
		case "jvm":
			'java -jar build/$out.jar';
		case "python":
			if (Sys.systemName() == "Mac") {
				'python3 build/$out';
			} else {
				'python build/$out';
			}
		case "hl":
			'$target build/$out.hl';
		case "js":
			'NODE_OPTIONS=--enable-source-maps node build/$out.js';
		default:
			throw "unknown target: " + target;
	};
	if (args.length > 0)
		s += " " + args.join(" ");
	return s;
}

final tp = new sys.thread.ElasticThreadPool(2, 120);