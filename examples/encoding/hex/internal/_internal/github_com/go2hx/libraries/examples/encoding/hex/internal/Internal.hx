package _internal.github_com.go2hx.libraries.examples.encoding.hex.internal;
function main():Void {
    {};
    var __tmp__ = stdgo._internal.encoding.hex.Hex.decodeString(("48656c6c6f20476f7068657221" : stdgo.GoString)), _decoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
    if (_err != null) {
        throw stdgo.Go.toInterface(_err);
    };
    stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_decoded));
}
