import sys.io.File;

function main() {
    final startStr = "### Libraries\n";
    final readmeContent = File.getContent("README.MD");
    var index = readmeContent.indexOf(startStr) + startStr.length;
    final list = [
        "",
        "| api | go api | example | internal example |",
        "| - | - | - | - |",
    ];
    for (lib in libs) {
        final pkg = Util.pathToPkg(lib);
        final fileName = pathToFullFileName(lib);
        final parts = [
            '[stdgo.$pkg](https://go2hx.github.io/stdgo/$lib)',
            '[go api](https://pkg.go.dev/$lib)',
            '[example](https://github.com/go2hx/go2hxlibs/blob/master/examples/$fileName.hx)',
            '[internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/$lib/internal/_internal/github_com/go2hx/libraries/examples/$lib/internal/Internal.hx)',
        ];
        list.push("| " + parts.join(" | ") + "|");
    }
    File.saveContent("README.MD", readmeContent.substr(0, index) + list.join("\n"));
}

function pathToFullFileName(s:String):String {
    final i = s.lastIndexOf("/");
    final name = s.substr(i + 1);
    final s = s + "/" + name.charAt(0).toUpperCase() + name.substr(1);
    return s;
}

final libs:Array<String> = haxe.Json.parse(File.getContent("libs.json"));