package _internal.github_com.go2hx.libraries.examples.unicode.utf8.internal;
function main():Void {
    var _str:stdgo.GoString = ("Hello, 世界" : stdgo.GoString);
    stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("bytes =" : stdgo.GoString)), stdgo.Go.toInterface((_str.length)));
    stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("runes =" : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.unicode.utf8.Utf8.runeCountInString(_str?.__copy__())));
}
