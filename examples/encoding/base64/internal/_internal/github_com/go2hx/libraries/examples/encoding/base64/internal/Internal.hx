package _internal.github_com.go2hx.libraries.examples.encoding.base64.internal;
function main():Void {
    var _msg:stdgo.GoString = ("Hello, 世界" : stdgo.GoString);
    var _encoded:stdgo.GoString = stdgo._internal.encoding.base64.Base64.stdEncoding.encodeToString((_msg : stdgo.Slice<stdgo.GoByte>))?.__copy__();
    stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_encoded));
    var __tmp__ = stdgo._internal.encoding.base64.Base64.stdEncoding.decodeString(_encoded?.__copy__()), _decoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
    if (_err != null) {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        return;
    };
    stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_decoded : stdgo.GoString)));
}
