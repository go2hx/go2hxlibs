import sys.io.File;
import sys.FileSystem;

var hxmlContent:FileContent = null;
var hxmlInternalContent:FileContent = null;
var shInternalContent:FileContent = null;
var haxeFileContent:FileContent = null;
var goFileContent:FileContent = null;
final goFileContentPath = "path/internal/name.go";

function main() {
    Sys.setCwd("examples/tmpl");
    //trace(FileSystem.readDirectory("."));
    hxmlContent = new FileContent("name.hxml");
    hxmlInternalContent = new FileContent("name_internal.hxml");
    haxeFileContent = new FileContent("path/Name.hx");
    goFileContent = new FileContent(goFileContentPath);
    for (lib in libs)
        create(lib);
}

function create(libName:String) {
    final compile = Sys.args()[0] == "1";
    if (compile) {
        final filePath = tmpl(libName, goFileContentPath);
        if (File.getContent("../" + filePath) == "") {
            trace("empty go file:", libName);
            return;
        }
        final cmd = "npx haxelib run go2hx ../path/internal -out ../path/internal";
        final cmd = tmpl(libName, cmd);
        trace(cmd);
        if (Sys.command(cmd) != 0)
            throw "fail";
        return;
    }
    FileSystem.createDirectory("../" + libName);
    FileSystem.createDirectory("../" + libName + "/internal");
    hxmlContent.set(libName);
    hxmlInternalContent.set(libName);
    haxeFileContent.set(libName);
    if (goFileContent.empty())
        goFileContent.set(libName);
}

enum ToType {
    Path;
    Pkg;
    Name;
    FileName;
}

function pathToType(s:String,t:ToType):String {
    return switch t {
        case Path:
            return s;
        case Pkg:
            Util.pathToPkg(s);
        case Name:
            StringTools.replace(s, "/", "_");
        case FileName:
            Util.pathToFileName(s);
    }
}

function tmpl(path:String, content:String):String {
    content = StringTools.replace(content, "name", pathToType(path, Name));
    content = StringTools.replace(content, "Name", pathToType(path, FileName));
    content = StringTools.replace(content, "pkg", pathToType(path, Pkg));
    content = StringTools.replace(content, "path", pathToType(path, Path));
    return content;
}

class FileContent {
    var content = "";
    var filePath = "";
    public function new(filePath:String) {
        this.filePath = filePath;
        content = File.getContent(filePath);
    }
    public function set(path:String) {
        final content = tmpl(path, content);
        File.saveContent("../" + tmpl(path, filePath), content);
    }
    public function empty():Bool
        return content == "";
}

final libs:Array<String> = haxe.Json.parse(File.getContent("libs.json"));
