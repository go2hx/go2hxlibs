package _internal.github_com.go2hx.libraries.examples.unicode.utf16.internal;
function main():Void {
    ({
        var __tmp__ = stdgo._internal.unicode.utf16.Utf16.encodeRune((19990 : stdgo.GoInt32));
        stdgo.Go.println((__tmp__._0 : stdgo.GoInt32), (__tmp__._1 : stdgo.GoInt32));
    });
    stdgo.Go.println(stdgo._internal.unicode.utf16.Utf16.isSurrogate((19990 : stdgo.GoInt32)));
}
