package _internal.github_com.go2hx.libraries.examples.hash.adler32.internal;
function main():Void {
    stdgo.Go.println(Std.string(((stdgo._internal.hash.adler32.Adler32.checksum((("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)) : UInt) : Float)));
}
