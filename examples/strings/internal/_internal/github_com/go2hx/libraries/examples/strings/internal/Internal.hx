package _internal.github_com.go2hx.libraries.examples.strings.internal;
function main():Void {
    stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.toValidUTF8(("abc" : stdgo.GoString), ("�" : stdgo.GoString))));
    stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.toValidUTF8(stdgo.Go.str("a", 255, "b", 192, 175, "c", 255)?.__copy__(), stdgo.Go.str()?.__copy__())));
    stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.toValidUTF8(stdgo.Go.str(237, 160, 128)?.__copy__(), ("abc" : stdgo.GoString))));
}
