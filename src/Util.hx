function pathToFileName(s:String):String {
    final i = s.lastIndexOf("/");
    final name = s.substr(i + 1);
    return name.charAt(0).toUpperCase() + name.substr(1);
}

function pathToPkg(s:String):String
    return StringTools.replace(s, "/", ".");