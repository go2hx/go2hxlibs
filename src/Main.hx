import sys.io.Process;
import haxe.Json;
import sys.io.File;
import sys.FileSystem;
import haxe.io.Path;
function main() {
    if (!FileSystem.exists("go2hx"))
        Sys.command("git clone --depth 1 https://github.com/go2hx/go2hx");
    final http = new haxe.Http("https://api.github.com/repos/go2hx/go2hx/actions/runs?per_page=1");
    http.setHeader("Accept","application/vnd.github+json");
    http.setHeader("X-GitHub-Api-Version","2022-11-28");
    http.setHeader("User-Agent","libraries");

    http.onData = data -> {
        // if latest github action is a failure 
        if (Json.parse(data).workflow_runs[0].conclusion == "failure")
            return;
        run();
    };
    http.onError = err -> {
        trace(err);
    };
    http.request(false);
}

function run() {
    // std();
    libs();
}

function std() {
    final pkgs:Map<String,Array<String>> = [];
    final stdJson:Array<String> = Json.parse(File.getContent("go2hx/tests/std.json"));
    // set pkgs map
    for (data in stdJson) {
        final list = data.split("|");
        final target = list[0];
        final name = list[1];
        if (!pkgs.exists(name))
            pkgs[name] = [];
        pkgs[name].push(target);
    }
    // move pkg folder content into libraries
    for (name => _ in pkgs) {
        copyFolder(Path.join(["go2hx/stdgo/",name]),"stdgo/" + name);
        name += "_test";
        copyFolder(Path.join(["go2hx/stdgo/",name]),"stdgo/" + name);
    }
}

function copyFolder(source:String, dest:String) {
    if (!FileSystem.isDirectory(dest)){
        FileSystem.createDirectory(dest);
    }
    for (file in FileSystem.readDirectory(source)) {
        var srcPath:String = Path.join([source, file]);
        var destPath:String = Path.join([dest, file]);
        if (FileSystem.isDirectory(srcPath)) {
            copyFolder(srcPath, destPath);
        }
        else{
            File.copy(srcPath, destPath);
        }
    }
}

function libs() {
    final libs:Array<String> = Json.parse(File.getContent("libs.json"));
    for (lib in libs) {
        final lib_name = formatLibName(lib);
        Sys.command('haxelib run go2hx --test --norun --hxml $lib_name.hxml $lib');
        // go2hxdoc runs here

        // if there is a regression don't commit

        // run only self contained code, don't allow go2hx lib to be added to the hxml
    }
}

function formatLibName(lib:String):String {
    final index = lib.indexOf("/");
    lib = lib.substr(index + 1);
    lib = StringTools.replace(lib,"/","_");
    return lib;
}