package stdgo._internal.encoding.hex;
private var __go2hxdoc__package : Bool;
final _hextable : stdgo.GoString = ("0123456789abcdef" : stdgo.GoString);
final _reverseHexTable : stdgo.GoString = stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
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
final _bufferSize : stdgo.GoUInt64 = (1024i64 : stdgo.GoUInt64);
var errLength : stdgo.Error = stdgo._internal.errors.Errors.new_(("encoding/hex: odd length hex string" : stdgo.GoString));
@:structInit @:private @:using(stdgo._internal.encoding.hex.Hex.T_encoder_static_extension) class T_encoder {
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _out : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_err:stdgo.Error, ?_out:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_w, _err, _out);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.hex.Hex.T_decoder_static_extension) class T_decoder {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _in : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _arr : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_err:stdgo.Error, ?_in:stdgo.Slice<stdgo.GoUInt8>, ?_arr:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_err != null) this._err = _err;
        if (_in != null) this._in = _in;
        if (_arr != null) this._arr = _arr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(_r, _err, _in, _arr);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.hex.Hex.T_dumper_static_extension) class T_dumper {
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _rightChars : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(18, 18, ...[for (i in 0 ... 18) (0 : stdgo.GoUInt8)]);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(14, 14, ...[for (i in 0 ... 14) (0 : stdgo.GoUInt8)]);
    public var _used : stdgo.GoInt = 0;
    public var _n : stdgo.GoUInt = 0;
    public var _closed : Bool = false;
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_rightChars:stdgo.GoArray<stdgo.GoUInt8>, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_used:stdgo.GoInt, ?_n:stdgo.GoUInt, ?_closed:Bool) {
        if (_w != null) this._w = _w;
        if (_rightChars != null) this._rightChars = _rightChars;
        if (_buf != null) this._buf = _buf;
        if (_used != null) this._used = _used;
        if (_n != null) this._n = _n;
        if (_closed != null) this._closed = _closed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dumper(_w, _rightChars, _buf, _used, _n, _closed);
    }
}
@:named @:using(stdgo._internal.encoding.hex.Hex.InvalidByteError_static_extension) typedef InvalidByteError = stdgo.GoUInt8;
function encodedLen(_n:stdgo.GoInt):stdgo.GoInt {
        return (_n * (2 : stdgo.GoInt) : stdgo.GoInt);
    }
function encode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        var _j = (0 : stdgo.GoInt);
        for (__0 => _v in _src) {
            _dst[(_j : stdgo.GoInt)] = ("0123456789abcdef" : stdgo.GoString)[((_v >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)];
            _dst[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789abcdef" : stdgo.GoString)[((_v & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
            _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
        return ((_src.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
    }
function decodedLen(_x:stdgo.GoInt):stdgo.GoInt {
        return (_x / (2 : stdgo.GoInt) : stdgo.GoInt);
    }
function decode(_dst:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var __0 = (0 : stdgo.GoInt), __1 = (1 : stdgo.GoInt);
var _j = __1, _i = __0;
        stdgo.Go.cfor((_j < (_src.length) : Bool), _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
            var _p = (_src[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
            var _q = (_src[(_j : stdgo.GoInt)] : stdgo.GoUInt8);
            var _a = (stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_p : stdgo.GoInt)] : stdgo.GoUInt8);
            var _b = (stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_q : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((_a > (15 : stdgo.GoUInt8) : Bool)) {
                return { _0 : _i, _1 : stdgo.Go.asInterface((_p : InvalidByteError)) };
            };
            if ((_b > (15 : stdgo.GoUInt8) : Bool)) {
                return { _0 : _i, _1 : stdgo.Go.asInterface((_q : InvalidByteError)) };
            };
            _dst[(_i : stdgo.GoInt)] = (((_a << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) | _b : stdgo.GoUInt8);
            _i++;
        });
        if (((_src.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            if ((stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_src[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] > (15 : stdgo.GoUInt8) : Bool)) {
                return { _0 : _i, _1 : stdgo.Go.asInterface((_src[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)] : InvalidByteError)) };
            };
            return { _0 : _i, _1 : errLength };
        };
        return { _0 : _i, _1 : (null : stdgo.Error) };
    }
function encodeToString(_src:stdgo.Slice<stdgo.GoByte>):stdgo.GoString {
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((encodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        encode(_dst, _src);
        return (_dst : stdgo.GoString)?.__copy__();
    }
function decodeString(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        var _src = (_s : stdgo.Slice<stdgo.GoByte>);
        var __tmp__ = decode(_src, _src), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_src.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
function dump(_data:stdgo.Slice<stdgo.GoByte>):stdgo.GoString {
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _buf.grow(((((1 : stdgo.GoInt) + (((((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) * (79 : stdgo.GoInt) : stdgo.GoInt));
        var _dumper = (dumper(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>))) : stdgo._internal.io.Io.WriteCloser);
        _dumper.write(_data);
        _dumper.close();
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
function newEncoder(_w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w } : stdgo._internal.encoding.hex.Hex.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.hex.Hex.T_encoder>));
    }
function newDecoder(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.encoding.hex.Hex.T_decoder)) : stdgo.Ref<stdgo._internal.encoding.hex.Hex.T_decoder>));
    }
function dumper(_w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w } : stdgo._internal.encoding.hex.Hex.T_dumper)) : stdgo.Ref<stdgo._internal.encoding.hex.Hex.T_dumper>));
    }
function _toChar(_b:stdgo.GoByte):stdgo.GoByte {
        if (((_b < (32 : stdgo.GoUInt8) : Bool) || (_b > (126 : stdgo.GoUInt8) : Bool) : Bool)) {
            return (46 : stdgo.GoUInt8);
        };
        return _b;
    }
class T_encoder_asInterface {
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
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function write( _e:stdgo.Ref<T_encoder>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while ((((_p.length) > (0 : stdgo.GoInt) : Bool) && (_e._err == null) : Bool)) {
            var _chunkSize = (512 : stdgo.GoInt);
            if (((_p.length) < _chunkSize : Bool)) {
                _chunkSize = (_p.length);
            };
            var _written:stdgo.GoInt = (0 : stdgo.GoInt);
            var _encoded = (encode((_e._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__(0, _chunkSize) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            {
                var __tmp__ = _e._w.write((_e._out.__slice__(0, _encoded) : stdgo.Slice<stdgo.GoUInt8>));
                _written = __tmp__._0;
                _e._err = __tmp__._1;
            };
            _n = (_n + ((_written / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            _p = (_p.__slice__(_chunkSize) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return { _0 : _n, _1 : _e._err };
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
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function read( _d:stdgo.Ref<T_decoder>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((((_d._in.length) < (2 : stdgo.GoInt) : Bool) && (_d._err == null) : Bool)) {
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _numRead = __1, _numCopy = __0;
            _numCopy = stdgo.Go.copySlice((_d._arr.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _d._in);
            {
                var __tmp__ = _d._r.read((_d._arr.__slice__(_numCopy) : stdgo.Slice<stdgo.GoUInt8>));
                _numRead = __tmp__._0;
                _d._err = __tmp__._1;
            };
            _d._in = (_d._arr.__slice__(0, (_numCopy + _numRead : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (((stdgo.Go.toInterface(_d._err) == stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) && (((_d._in.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                {
                    var _a = (stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
0,
1,
2,
3,
4,
5,
6,
"\x07\x08\t",
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
"\n\x0B\x0C\r",
14,
15,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255)[(_d._in[((_d._in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((_a > (15 : stdgo.GoUInt8) : Bool)) {
                        _d._err = stdgo.Go.asInterface((_d._in[((_d._in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : InvalidByteError));
                    } else {
                        _d._err = stdgo._internal.io.Io.errUnexpectedEOF;
                    };
                };
            };
        };
        {
            var _numAvail = ((_d._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
            if (((_p.length) > _numAvail : Bool)) {
                _p = (_p.__slice__(0, _numAvail) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var __tmp__ = decode(_p, (_d._in.__slice__(0, ((_p.length) * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _numDec:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _d._in = (_d._in.__slice__(((2 : stdgo.GoInt) * _numDec : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (_err != null) {
            {
                final __tmp__0 = (null : stdgo.Slice<stdgo.GoUInt8>);
                final __tmp__1 = _err;
                _d._in = __tmp__0;
                _d._err = __tmp__1;
            };
        };
        if (((_d._in.length) < (2 : stdgo.GoInt) : Bool)) {
            return { _0 : _numDec, _1 : _d._err };
        };
        return { _0 : _numDec, _1 : (null : stdgo.Error) };
    }
}
class T_dumper_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function write(_data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dumper>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_dumper_asInterface) class T_dumper_static_extension {
    @:keep
    static public function close( _h:stdgo.Ref<T_dumper>):stdgo.Error {
        @:recv var _h:stdgo.Ref<T_dumper> = _h;
        var _err = (null : stdgo.Error);
        if (_h._closed) {
            return _err;
        };
        _h._closed = true;
        if (_h._used == ((0 : stdgo.GoInt))) {
            return _err;
        };
        _h._buf[(0 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(1 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(2 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        _h._buf[(4 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
        var _nBytes = (_h._used : stdgo.GoInt);
        while ((_h._used < (16 : stdgo.GoInt) : Bool)) {
            var _l = (3 : stdgo.GoInt);
            if (_h._used == ((7 : stdgo.GoInt))) {
                _l = (4 : stdgo.GoInt);
            } else if (_h._used == ((15 : stdgo.GoInt))) {
                _l = (5 : stdgo.GoInt);
            };
            {
                var __tmp__ = _h._w.write((_h._buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            _h._used++;
        };
        _h._rightChars[(_nBytes : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
        _h._rightChars[(_nBytes + (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
        {
            var __tmp__ = _h._w.write((_h._rightChars.__slice__(0, (_nBytes + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _err = __tmp__._1;
        };
        return _err;
    }
    @:keep
    static public function write( _h:stdgo.Ref<T_dumper>, _data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<T_dumper> = _h;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_h._closed) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors.new_(("encoding/hex: dumper closed" : stdgo.GoString)) };
        };
        for (_i => _ in _data) {
            if (_h._used == ((0 : stdgo.GoInt))) {
                _h._buf[(0 : stdgo.GoInt)] = ((_h._n >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
                _h._buf[(1 : stdgo.GoInt)] = ((_h._n >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
                _h._buf[(2 : stdgo.GoInt)] = ((_h._n >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoByte);
                _h._buf[(3 : stdgo.GoInt)] = (_h._n : stdgo.GoByte);
                encode((_h._buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_h._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _h._buf[(12 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                _h._buf[(13 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                {
                    var __tmp__ = _h._w.write((_h._buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            };
            encode((_h._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_data.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _h._buf[(2 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
            var _l = (3 : stdgo.GoInt);
            if (_h._used == ((7 : stdgo.GoInt))) {
                _h._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                _l = (4 : stdgo.GoInt);
            } else if (_h._used == ((15 : stdgo.GoInt))) {
                _h._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                _h._buf[(4 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
                _l = (5 : stdgo.GoInt);
            };
            {
                var __tmp__ = _h._w.write((_h._buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _n++;
            _h._rightChars[(_h._used : stdgo.GoInt)] = _toChar(_data[(_i : stdgo.GoInt)]);
            _h._used++;
            _h._n++;
            if (_h._used == ((16 : stdgo.GoInt))) {
                _h._rightChars[(16 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
                _h._rightChars[(17 : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
                {
                    var __tmp__ = _h._w.write((_h._rightChars.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                _h._used = (0 : stdgo.GoInt);
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
class InvalidByteError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<InvalidByteError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.hex.Hex.InvalidByteError_asInterface) class InvalidByteError_static_extension {
    @:keep
    static public function error( _e:InvalidByteError):stdgo.GoString {
        @:recv var _e:InvalidByteError = _e;
        return stdgo._internal.fmt.Fmt.sprintf(("encoding/hex: invalid byte: %#U" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoRune)))?.__copy__();
    }
}
