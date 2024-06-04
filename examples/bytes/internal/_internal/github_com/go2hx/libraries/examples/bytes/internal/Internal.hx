package _internal.github_com.go2hx.libraries.examples.bytes.internal;
function main():Void {
    var _needle:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
    var _haystack:stdgo.Slice<stdgo.Slice<stdgo.GoByte>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    var _i:stdgo.GoInt = stdgo._internal.sort.Sort.search((_haystack.length), function(_i:stdgo.GoInt):Bool {
        return (stdgo._internal.bytes.Bytes.compare(_haystack[(_i : stdgo.GoInt)], _needle) >= (0 : stdgo.GoInt) : Bool);
    });
    if (((_i < (_haystack.length) : Bool) && stdgo._internal.bytes.Bytes.equal(_haystack[(_i : stdgo.GoInt)], _needle) : Bool)) {};
}
