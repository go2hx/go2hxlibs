package stdgo._internal.encoding.base64;
private var __go2hxdoc__package : Bool;
final stdPadding : stdgo.GoInt32 = (61 : stdgo.GoInt32);
final noPadding : stdgo.GoInt32 = (-1 : stdgo.GoInt32);
final _decodeMapInitialize : stdgo.GoString = stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255);
final _encodeStd : stdgo.GoString = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : stdgo.GoString);
final _encodeURL : stdgo.GoString = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_" : stdgo.GoString);
var stdEncoding : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = newEncoding(("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" : stdgo.GoString));
var urlencoding : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = newEncoding(("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_" : stdgo.GoString));
var rawStdEncoding : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = stdEncoding.withPadding((-1 : stdgo.GoInt32));
var rawURLEncoding : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = urlencoding.withPadding((-1 : stdgo.GoInt32));
@:structInit @:using(stdgo._internal.encoding.base64.Base64.Encoding_static_extension) class Encoding {
    public var _encode : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
    public var _decodeMap : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt8)]);
    public var _padChar : stdgo.GoInt32 = 0;
    public var _strict : Bool = false;
    public function new(?_encode:stdgo.GoArray<stdgo.GoUInt8>, ?_decodeMap:stdgo.GoArray<stdgo.GoUInt8>, ?_padChar:stdgo.GoInt32, ?_strict:Bool) {
        if (_encode != null) this._encode = _encode;
        if (_decodeMap != null) this._decodeMap = _decodeMap;
        if (_padChar != null) this._padChar = _padChar;
        if (_strict != null) this._strict = _strict;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoding(_encode, _decodeMap, _padChar, _strict);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.base64.Base64.T_encoder_static_extension) class T_encoder {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>);
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoUInt8)]);
    public var _nbuf : stdgo.GoInt = 0;
    public var _out : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
    public function new(?_err:stdgo.Error, ?_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>, ?_w:stdgo._internal.io.Io.Writer, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_err != null) this._err = _err;
        if (_enc != null) this._enc = _enc;
        if (_w != null) this._w = _w;
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_err, _enc, _w, _buf, _nbuf, _out);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.base64.Base64.T_decoder_static_extension) class T_decoder {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _readErr : stdgo.Error = (null : stdgo.Error);
    public var _enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding> = (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>);
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
    public var _nbuf : stdgo.GoInt = 0;
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outbuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(768, 768, ...[for (i in 0 ... 768) (0 : stdgo.GoUInt8)]);
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>, ?_r:stdgo._internal.io.Io.Reader, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_outbuf:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_err != null) this._err = _err;
        if (_readErr != null) this._readErr = _readErr;
        if (_enc != null) this._enc = _enc;
        if (_r != null) this._r = _r;
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_out != null) this._out = _out;
        if (_outbuf != null) this._outbuf = _outbuf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(_err, _readErr, _enc, _r, _buf, _nbuf, _out, _outbuf);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_static_extension) class T_newlineFilteringReader {
    public var _wrapped : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public function new(?_wrapped:stdgo._internal.io.Io.Reader) {
        if (_wrapped != null) this._wrapped = _wrapped;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_newlineFilteringReader(_wrapped);
    }
}
@:named @:using(stdgo._internal.encoding.base64.Base64.CorruptInputError_static_extension) typedef CorruptInputError = stdgo.GoInt64;
function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<Encoding> {
        if ((_encoder.length) != ((64 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("encoding alphabet is not 64-bytes long" : stdgo.GoString));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_encoder.length) : Bool), _i++, {
                if (((_encoder[(_i : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_encoder[(_i : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                    throw stdgo.Go.toInterface(("encoding alphabet contains newline character" : stdgo.GoString));
                };
            });
        };
        var _e = (stdgo.Go.setRef(({} : stdgo._internal.encoding.base64.Base64.Encoding)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>);
        _e._padChar = (61 : stdgo.GoInt32);
        stdgo.Go.copySlice((_e._encode.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _encoder);
        stdgo.Go.copySlice((_e._decodeMap.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_encoder.length) : Bool), _i++, {
                _e._decodeMap[(_encoder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (_i : stdgo.GoByte);
            });
        };
        return _e;
    }
function newEncoder(_enc:stdgo.Ref<Encoding>, _w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _enc : _enc, _w : _w } : stdgo._internal.encoding.base64.Base64.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.T_encoder>));
    }
function _assemble32(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } {
        var _dn = (0 : stdgo.GoUInt32), _ok = false;
        if ((((_n1 | _n2 : stdgo.GoUInt8) | _n3 : stdgo.GoUInt8) | _n4 : stdgo.GoUInt8) == ((255 : stdgo.GoUInt8))) {
            return { _0 : (0u32 : stdgo.GoUInt32), _1 : false };
        };
        return { _0 : (((((_n1 : stdgo.GoUInt32) << (26i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_n2 : stdgo.GoUInt32) << (20i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_n3 : stdgo.GoUInt32) << (14i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_n4 : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32), _1 : true };
    }
function _assemble64(_n1:stdgo.GoByte, _n2:stdgo.GoByte, _n3:stdgo.GoByte, _n4:stdgo.GoByte, _n5:stdgo.GoByte, _n6:stdgo.GoByte, _n7:stdgo.GoByte, _n8:stdgo.GoByte):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        var _dn = (0 : stdgo.GoUInt64), _ok = false;
        if ((((((((_n1 | _n2 : stdgo.GoUInt8) | _n3 : stdgo.GoUInt8) | _n4 : stdgo.GoUInt8) | _n5 : stdgo.GoUInt8) | _n6 : stdgo.GoUInt8) | _n7 : stdgo.GoUInt8) | _n8 : stdgo.GoUInt8) == ((255 : stdgo.GoUInt8))) {
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : false };
        };
        return { _0 : (((((((((_n1 : stdgo.GoUInt64) << (58i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n2 : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n3 : stdgo.GoUInt64) << (46i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n4 : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n5 : stdgo.GoUInt64) << (34i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n6 : stdgo.GoUInt64) << (28i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n7 : stdgo.GoUInt64) << (22i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n8 : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : true };
    }
function newDecoder(_enc:stdgo.Ref<Encoding>, _r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _enc : _enc, _r : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader(_r) : stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader>)) } : stdgo._internal.encoding.base64.Base64.T_decoder)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.T_decoder>));
    }
class Encoding_asInterface {
    @:keep
    public dynamic function decodedLen(_n:stdgo.GoInt):stdgo.GoInt return __self__.value.decodedLen(_n);
    @:keep
    public dynamic function decode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.decode(_dst, _src);
    @:keep
    public dynamic function decodeString(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.decodeString(_s);
    @:keep
    public dynamic function _decodeQuantum(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value._decodeQuantum(_dst, _src, _si);
    @:keep
    public dynamic function encodedLen(_n:stdgo.GoInt):stdgo.GoInt return __self__.value.encodedLen(_n);
    @:keep
    public dynamic function encodeToString(_src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString return __self__.value.encodeToString(_src);
    @:keep
    public dynamic function encode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void __self__.value.encode(_dst, _src);
    @:keep
    public dynamic function strict():stdgo.Ref<Encoding> return __self__.value.strict();
    @:keep
    public dynamic function withPadding(_padding:stdgo.GoRune):stdgo.Ref<Encoding> return __self__.value.withPadding(_padding);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Encoding>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.Encoding_asInterface) class Encoding_static_extension {
    @:keep
    static public function decodedLen( _enc:stdgo.Ref<Encoding>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        if (_enc._padChar == ((-1 : stdgo.GoInt32))) {
            return ((_n * (6 : stdgo.GoInt) : stdgo.GoInt) / (8 : stdgo.GoInt) : stdgo.GoInt);
        };
        return ((_n / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function decode( _enc:stdgo.Ref<Encoding>, _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        var __blank__ = _enc._decodeMap;
        var _si = (0 : stdgo.GoInt);
        while (((false && (((_src.length) - _si : stdgo.GoInt) >= (8 : stdgo.GoInt) : Bool) : Bool) && (((_dst.length) - _n : stdgo.GoInt) >= (8 : stdgo.GoInt) : Bool) : Bool)) {
            var _src2 = (_src.__slice__(_si, (_si + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = _assemble64(_enc._decodeMap[(_src2[(0 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(1 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(2 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(3 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(4 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(5 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(6 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(7 : stdgo.GoInt)] : stdgo.GoInt)]), _dn:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo._internal.encoding.binary.Binary.bigEndian.putUint64((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _dn);
                    _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
                    _si = (_si + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                        _si = __tmp__._0;
                        _ninc = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    _n = (_n + (_ninc) : stdgo.GoInt);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
            };
        };
        while (((((_src.length) - _si : stdgo.GoInt) >= (4 : stdgo.GoInt) : Bool) && (((_dst.length) - _n : stdgo.GoInt) >= (4 : stdgo.GoInt) : Bool) : Bool)) {
            var _src2 = (_src.__slice__(_si, (_si + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = _assemble32(_enc._decodeMap[(_src2[(0 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(1 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(2 : stdgo.GoInt)] : stdgo.GoInt)], _enc._decodeMap[(_src2[(3 : stdgo.GoInt)] : stdgo.GoInt)]), _dn:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo._internal.encoding.binary.Binary.bigEndian.putUint32((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _dn);
                    _n = (_n + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    _si = (_si + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                        _si = __tmp__._0;
                        _ninc = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    _n = (_n + (_ninc) : stdgo.GoInt);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
            };
        };
        while ((_si < (_src.length) : Bool)) {
            var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                _si = __tmp__._0;
                _ninc = __tmp__._1;
                _err = __tmp__._2;
            };
            _n = (_n + (_ninc) : stdgo.GoInt);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function decodeString( _enc:stdgo.Ref<Encoding>, _s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((_enc.decodedLen((_s.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _enc.decode(_dbuf, (_s : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_dbuf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
    @:keep
    static public function _decodeQuantum( _enc:stdgo.Ref<Encoding>, _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _si:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        var _nsi = (0 : stdgo.GoInt), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _dbuf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
        var _dlen = (4 : stdgo.GoInt);
        var __blank__ = _enc._decodeMap;
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (_dbuf.length) : Bool), _j++, {
                if ((_src.length) == (_si)) {
                    if (_j == ((0 : stdgo.GoInt))) {
                        return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : (null : stdgo.Error) };
                    } else if (_j == ((1 : stdgo.GoInt)) || _enc._padChar != ((-1 : stdgo.GoInt32))) {
                        return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - _j : stdgo.GoInt) : CorruptInputError)) };
                    };
                    _dlen = _j;
                    break;
                };
                var _in = (_src[(_si : stdgo.GoInt)] : stdgo.GoUInt8);
                _si++;
                var _out = (_enc._decodeMap[(_in : stdgo.GoInt)] : stdgo.GoUInt8);
                if (_out != ((255 : stdgo.GoUInt8))) {
                    _dbuf[(_j : stdgo.GoInt)] = _out;
                    continue;
                };
                if (((_in == (10 : stdgo.GoUInt8)) || (_in == (13 : stdgo.GoUInt8)) : Bool)) {
                    _j--;
                    continue;
                };
                if ((_in : stdgo.GoRune) != (_enc._padChar)) {
                    return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : CorruptInputError)) };
                };
                {
                    final __value__ = _j;
                    if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                        return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : CorruptInputError)) };
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        while (((_si < (_src.length) : Bool) && (((_src[(_si : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_src[(_si : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _si++;
                        };
                        if (_si == ((_src.length))) {
                            return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((_src.length : CorruptInputError)) };
                        };
                        if ((_src[(_si : stdgo.GoInt)] : stdgo.GoRune) != (_enc._padChar)) {
                            return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : CorruptInputError)) };
                        };
                        _si++;
                    };
                };
                while (((_si < (_src.length) : Bool) && (((_src[(_si : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_src[(_si : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _si++;
                };
                if ((_si < (_src.length) : Bool)) {
                    _err = stdgo.Go.asInterface((_si : CorruptInputError));
                };
                _dlen = _j;
                break;
            });
        };
        var _val = (((((_dbuf[(0 : stdgo.GoInt)] : stdgo.GoUInt) << (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) | ((_dbuf[(1 : stdgo.GoInt)] : stdgo.GoUInt) << (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | ((_dbuf[(2 : stdgo.GoInt)] : stdgo.GoUInt) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | (_dbuf[(3 : stdgo.GoInt)] : stdgo.GoUInt) : stdgo.GoUInt);
        {
            final __tmp__0 = ((_val >> (0i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
            final __tmp__1 = ((_val >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
            final __tmp__2 = ((_val >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
            final __tmp__3 = _dbuf;
            final __tmp__4 = (2 : stdgo.GoInt);
            final __tmp__5 = _dbuf;
            final __tmp__6 = (1 : stdgo.GoInt);
            final __tmp__7 = _dbuf;
            final __tmp__8 = (0 : stdgo.GoInt);
            __tmp__3[__tmp__4] = __tmp__0;
            __tmp__5[__tmp__6] = __tmp__1;
            __tmp__7[__tmp__8] = __tmp__2;
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _dlen;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (4 : stdgo.GoInt)))) {
                        _dst[(2 : stdgo.GoInt)] = _dbuf[(2 : stdgo.GoInt)];
                        _dbuf[(2 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo.GoInt)))) {
                        _dst[(1 : stdgo.GoInt)] = _dbuf[(1 : stdgo.GoInt)];
                        if ((_enc._strict && (_dbuf[(2 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                            return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : CorruptInputError)) };
                        };
                        _dbuf[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                        _dst[(0 : stdgo.GoInt)] = _dbuf[(0 : stdgo.GoInt)];
                        if ((_enc._strict && (((_dbuf[(1 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) || (_dbuf[(2 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            return { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (2 : stdgo.GoInt) : stdgo.GoInt) : CorruptInputError)) };
                        };
                        break;
                        break;
                    };
                };
                break;
            };
        };
        return { _0 : _si, _1 : (_dlen - (1 : stdgo.GoInt) : stdgo.GoInt), _2 : _err };
    }
    @:keep
    static public function encodedLen( _enc:stdgo.Ref<Encoding>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        if (_enc._padChar == ((-1 : stdgo.GoInt32))) {
            return ((((_n * (8 : stdgo.GoInt) : stdgo.GoInt) + (5 : stdgo.GoInt) : stdgo.GoInt)) / (6 : stdgo.GoInt) : stdgo.GoInt);
        };
        return ((((_n + (2 : stdgo.GoInt) : stdgo.GoInt)) / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function encodeToString( _enc:stdgo.Ref<Encoding>, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_enc.encodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _enc.encode(_buf, _src);
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function encode( _enc:stdgo.Ref<Encoding>, _dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _enc:stdgo.Ref<Encoding> = _enc;
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var __blank__ = _enc._encode;
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _si = __1, _di = __0;
        var _n = ((((_src.length) / (3 : stdgo.GoInt) : stdgo.GoInt)) * (3 : stdgo.GoInt) : stdgo.GoInt);
        while ((_si < _n : Bool)) {
            var _val = ((((_src[(_si + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) | ((_src[(_si + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | (_src[(_si + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) : stdgo.GoUInt);
            _dst[(_di + (0 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (1 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[((_val & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _si = (_si + ((3 : stdgo.GoInt)) : stdgo.GoInt);
            _di = (_di + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _remain = ((_src.length) - _si : stdgo.GoInt);
        if (_remain == ((0 : stdgo.GoInt))) {
            return;
        };
        var _val = ((_src[(_si + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt);
        if (_remain == ((2 : stdgo.GoInt))) {
            _val = (_val | (((_src[(_si + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        _dst[(_di + (0 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
        _dst[(_di + (1 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
        {
            final __value__ = _remain;
            if (__value__ == ((2 : stdgo.GoInt))) {
                _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = _enc._encode[(((_val >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
                if (_enc._padChar != ((-1 : stdgo.GoInt32))) {
                    _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = (_enc._padChar : stdgo.GoByte);
                };
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                if (_enc._padChar != ((-1 : stdgo.GoInt32))) {
                    _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = (_enc._padChar : stdgo.GoByte);
                    _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = (_enc._padChar : stdgo.GoByte);
                };
            };
        };
    }
    @:keep
    static public function strict( _enc:Encoding):stdgo.Ref<Encoding> {
        @:recv var _enc:Encoding = _enc?.__copy__();
        _enc._strict = true;
        return (stdgo.Go.setRef(_enc) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>);
    }
    @:keep
    static public function withPadding( _enc:Encoding, _padding:stdgo.GoRune):stdgo.Ref<Encoding> {
        @:recv var _enc:Encoding = _enc?.__copy__();
        if (((_padding == ((13 : stdgo.GoInt32)) || _padding == ((10 : stdgo.GoInt32)) : Bool) || (_padding > (255 : stdgo.GoInt32) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("invalid padding" : stdgo.GoString));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_enc._encode.length) : Bool), _i++, {
                if ((_enc._encode[(_i : stdgo.GoInt)] : stdgo.GoRune) == (_padding)) {
                    throw stdgo.Go.toInterface(("padding contained in alphabet" : stdgo.GoString));
                };
            });
        };
        _enc._padChar = _padding;
        return (stdgo.Go.setRef(_enc) : stdgo.Ref<stdgo._internal.encoding.base64.Base64.Encoding>);
    }
}
class T_encoder_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_encoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function close( _e:stdgo.Ref<T_encoder>):stdgo.Error {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        if (((_e._err == null) && (_e._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _e._enc.encode((_e._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_e._buf.__slice__(0, _e._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
            {
                var __tmp__ = _e._w.write((_e._out.__slice__(0, _e._enc.encodedLen(_e._nbuf)) : stdgo.Slice<stdgo.GoUInt8>));
                _e._err = __tmp__._1;
            };
            _e._nbuf = (0 : stdgo.GoInt);
        };
        return _e._err;
    }
    @:keep
    static public function write( _e:stdgo.Ref<T_encoder>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_e._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _e._err };
        };
        if ((_e._nbuf > (0 : stdgo.GoInt) : Bool)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(((_i < (_p.length) : Bool) && (_e._nbuf < (3 : stdgo.GoInt) : Bool) : Bool), _i++, {
                    _e._buf[(_e._nbuf : stdgo.GoInt)] = _p[(_i : stdgo.GoInt)];
                    _e._nbuf++;
                });
            };
            _n = (_n + (_i) : stdgo.GoInt);
            _p = (_p.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            if ((_e._nbuf < (3 : stdgo.GoInt) : Bool)) {
                return { _0 : _n, _1 : _err };
            };
            _e._enc.encode((_e._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_e._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            {
                {
                    var __tmp__ = _e._w.write((_e._out.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return { _0 : _n, _1 : _e._err };
                };
            };
            _e._nbuf = (0 : stdgo.GoInt);
        };
        while (((_p.length) >= (3 : stdgo.GoInt) : Bool)) {
            var _nn = (768 : stdgo.GoInt);
            if ((_nn > (_p.length) : Bool)) {
                _nn = (_p.length);
                _nn = (_nn - ((_nn % (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            _e._enc.encode((_e._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__(0, _nn) : stdgo.Slice<stdgo.GoUInt8>));
            {
                {
                    var __tmp__ = _e._w.write((_e._out.__slice__((0 : stdgo.GoInt), ((_nn / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _e._err = __tmp__._1;
                };
                if (_e._err != null) {
                    return { _0 : _n, _1 : _e._err };
                };
            };
            _n = (_n + (_nn) : stdgo.GoInt);
            _p = (_p.__slice__(_nn) : stdgo.Slice<stdgo.GoUInt8>);
        };
        stdgo.Go.copySlice((_e._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _p);
        _e._nbuf = (_p.length);
        _n = (_n + ((_p.length)) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
}
class T_decoder_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_decoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function read( _d:stdgo.Ref<T_decoder>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_d._out.length) > (0 : stdgo.GoInt) : Bool)) {
            _n = stdgo.Go.copySlice(_p, _d._out);
            _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
        if (_d._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
        };
        while (((_d._nbuf < (4 : stdgo.GoInt) : Bool) && (_d._readErr == null) : Bool)) {
            var _nn = (((_p.length) / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
            if ((_nn < (4 : stdgo.GoInt) : Bool)) {
                _nn = (4 : stdgo.GoInt);
            };
            if ((_nn > (_d._buf.length) : Bool)) {
                _nn = (_d._buf.length);
            };
            {
                var __tmp__ = _d._r.read((_d._buf.__slice__(_d._nbuf, _nn) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = __tmp__._0;
                _d._readErr = __tmp__._1;
            };
            _d._nbuf = (_d._nbuf + (_nn) : stdgo.GoInt);
        };
        if ((_d._nbuf < (4 : stdgo.GoInt) : Bool)) {
            if (((_d._enc._padChar == (-1 : stdgo.GoInt32)) && (_d._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
                var _nw:stdgo.GoInt = (0 : stdgo.GoInt);
                {
                    var __tmp__ = _d._enc.decode((_d._outbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__(0, _d._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
                    _nw = __tmp__._0;
                    _d._err = __tmp__._1;
                };
                _d._nbuf = (0 : stdgo.GoInt);
                _d._out = (_d._outbuf.__slice__(0, _nw) : stdgo.Slice<stdgo.GoUInt8>);
                _n = stdgo.Go.copySlice(_p, _d._out);
                _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n > (0 : stdgo.GoInt) : Bool) || ((_p.length) == ((0 : stdgo.GoInt)) && ((_d._out.length) > (0 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                };
                if (_d._err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
                };
            };
            _d._err = _d._readErr;
            if (((stdgo.Go.toInterface(_d._err) == stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) && (_d._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
                _d._err = stdgo._internal.io.Io.errUnexpectedEOF;
            };
            return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
        };
        var _nr = ((_d._nbuf / (4 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
        var _nw = ((_d._nbuf / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt);
        if ((_nw > (_p.length) : Bool)) {
            {
                var __tmp__ = _d._enc.decode((_d._outbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__(0, _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _nw = __tmp__._0;
                _d._err = __tmp__._1;
            };
            _d._out = (_d._outbuf.__slice__(0, _nw) : stdgo.Slice<stdgo.GoUInt8>);
            _n = stdgo.Go.copySlice(_p, _d._out);
            _d._out = (_d._out.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            {
                var __tmp__ = _d._enc.decode(_p, (_d._buf.__slice__(0, _nr) : stdgo.Slice<stdgo.GoUInt8>));
                _n = __tmp__._0;
                _d._err = __tmp__._1;
            };
        };
        _d._nbuf = (_d._nbuf - (_nr) : stdgo.GoInt);
        stdgo.Go.copySlice((_d._buf.__slice__(0, _d._nbuf) : stdgo.Slice<stdgo.GoUInt8>), (_d._buf.__slice__(_nr) : stdgo.Slice<stdgo.GoUInt8>));
        return { _0 : _n, _1 : _d._err };
    }
}
class T_newlineFilteringReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_newlineFilteringReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_asInterface) class T_newlineFilteringReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_newlineFilteringReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_newlineFilteringReader> = _r;
        var __tmp__ = _r._wrapped.read(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            var _offset = (0 : stdgo.GoInt);
            for (_i => _b in (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)) {
                if (((_b != (13 : stdgo.GoUInt8)) && (_b != (10 : stdgo.GoUInt8)) : Bool)) {
                    if (_i != (_offset)) {
                        _p[(_offset : stdgo.GoInt)] = _b;
                    };
                    _offset++;
                };
            };
            if ((_offset > (0 : stdgo.GoInt) : Bool)) {
                return { _0 : _offset, _1 : _err };
            };
            {
                var __tmp__ = _r._wrapped.read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
class CorruptInputError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CorruptInputError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.base64.Base64.CorruptInputError_asInterface) class CorruptInputError_static_extension {
    @:keep
    static public function error( _e:CorruptInputError):stdgo.GoString {
        @:recv var _e:CorruptInputError = _e;
        return (("illegal base64 data at input byte " : stdgo.GoString) + stdgo._internal.strconv.Strconv.formatInt((_e : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
