import sys.FileSystem;
import sys.io.File;

final libs = [
    "unicode",
    "unicode/utf8",
    "unicode/utf16",
    "math",
    "strings",
    "bytes",
];

var runnningCount = 0;
var runningCountMutex = new sys.thread.Mutex();

function main() {
    // create hxmls
    createHxmls();
    wait();
    createHxb();
    wait();
    listDirectory();
    buildHxmls();
    wait();
    runHxmls();
    wait();
    cleanup();
    Sys.println("EXIT");
}

function wait() {
    while (runnningCount > 0) {
        Sys.println("RUN COUNT: " + runnningCount);
        Sys.sleep(10);
    }
    Sys.println("END WAIT");
}

function createHxmls() {
    for (i in 0...libs.length) {
        runCommand(libs[i], 'haxelib run go2hx -compiler_interp -nodep ${libs[i]} --norun --test --hxml $i.hxml');
    }
}

function createHxb() {
    runCommand('hxb', 'haxelib run go2hx hxb golibs');
}

final targets = [
    "hl", //"js", //"jvm",//, "cpp"
];

function buildHxmls() {
    for (i in 0...libs.length) {
        for (target in targets) {
            runCommand(libs[i], 'haxe $i.hxml --hxb-lib go2hxlibs.zip ' + buildTarget(target, '$i'));
        }
    }
}

function runHxmls() {
    for (i in 0...libs.length) {
        for (target in targets) {
            if (target != "interp") {
                runCommand(libs[i], runTarget(target, '$i', [], mainFromHxml('$i.hxml')));
            }
        }
    }
}

function runCommand(libName:String, command:String) {
    Sys.println('$libName : $command');
    runnningCount++;
    var code = 0;
    tp.run(() -> {
        code = Sys.command(command);
        if (code != 0) {
            Sys.println('$libName failed to run command: $command');
            tp.shutdown();
            Sys.exit(1);
        }
        trace('FINISH COMMAND: $code $command');
        runningCountMutex.acquire();
        runnningCount--;
        runningCountMutex.release();
    });
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