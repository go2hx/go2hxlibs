package stdgo.encoding.hex;
var errLength(get, set) : stdgo.Error;
private function get_errLength():stdgo.Error return stdgo._internal.encoding.hex.Hex.errLength;
private function set_errLength(v:stdgo.Error):stdgo.Error {
    stdgo._internal.encoding.hex.Hex.errLength = v;
    return v;
}
@:structInit @:private @:using(stdgo.encoding.hex.Hex.T_encoder_static_extension) abstract T_encoder(stdgo._internal.encoding.hex.Hex.T_encoder) from stdgo._internal.encoding.hex.Hex.T_encoder to stdgo._internal.encoding.hex.Hex.T_encoder {
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._w = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _out(get, set) : haxe.ds.Vector<std.UInt>;
    function get__out():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._out) i]);
    function set__out(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._out = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_err:stdgo.Error, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.hex.Hex.T_encoder(_w, _err, ([for (i in _out) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.hex.Hex.T_decoder_static_extension) abstract T_decoder(stdgo._internal.encoding.hex.Hex.T_decoder) from stdgo._internal.encoding.hex.Hex.T_decoder to stdgo._internal.encoding.hex.Hex.T_decoder {
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _in(get, set) : Array<std.UInt>;
    function get__in():Array<std.UInt> return [for (i in this._in) i];
    function set__in(v:Array<std.UInt>):Array<std.UInt> {
        this._in = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _arr(get, set) : haxe.ds.Vector<std.UInt>;
    function get__arr():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._arr) i]);
    function set__arr(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._arr = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_err:stdgo.Error, ?_in:Array<std.UInt>, ?_arr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.hex.Hex.T_decoder(_r, _err, ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _arr) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.hex.Hex.T_dumper_static_extension) abstract T_dumper(stdgo._internal.encoding.hex.Hex.T_dumper) from stdgo._internal.encoding.hex.Hex.T_dumper to stdgo._internal.encoding.hex.Hex.T_dumper {
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._w = v;
        return v;
    }
    public var _rightChars(get, set) : haxe.ds.Vector<std.UInt>;
    function get__rightChars():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._rightChars) i]);
    function set__rightChars(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._rightChars = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _used(get, set) : StdTypes.Int;
    function get__used():StdTypes.Int return this._used;
    function set__used(v:StdTypes.Int):StdTypes.Int {
        this._used = v;
        return v;
    }
    public var _n(get, set) : std.UInt;
    function get__n():std.UInt return this._n;
    function set__n(v:std.UInt):std.UInt {
        this._n = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_rightChars:haxe.ds.Vector<std.UInt>, ?_buf:haxe.ds.Vector<std.UInt>, ?_used:StdTypes.Int, ?_n:std.UInt, ?_closed:Bool) this = new stdgo._internal.encoding.hex.Hex.T_dumper(_w, ([for (i in _rightChars) i] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _used, _n, _closed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef InvalidByteError = stdgo._internal.encoding.hex.Hex.InvalidByteError;
class T_encoder_static_extension {
    static public function write(_e:T_encoder, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex.T_encoder_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_decoder_static_extension {
    static public function read(_d:T_decoder, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_dumper_static_extension {
    static public function close(_h:T_dumper):stdgo.Error {
        return stdgo._internal.encoding.hex.Hex.T_dumper_static_extension.close(_h);
    }
    static public function write(_h:T_dumper, _data:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex.T_dumper_static_extension.write(_h, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class InvalidByteError_static_extension {
    static public function error(_e:InvalidByteError):String {
        return stdgo._internal.encoding.hex.Hex.InvalidByteError_static_extension.error(_e);
    }
}
/**
    Package hex implements hexadecimal encoding and decoding.
**/
class Hex {
    /**
        EncodedLen returns the length of an encoding of n source bytes.
        Specifically, it returns n * 2.
    **/
    static public function encodedLen(_n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.hex.Hex.encodedLen(_n);
    }
    /**
        Encode encodes src into EncodedLen(len(src))
        bytes of dst. As a convenience, it returns the number
        of bytes written to dst, but this value is always EncodedLen(len(src)).
        Encode implements hexadecimal encoding.
    **/
    static public function encode(_dst:Array<StdTypes.Int>, _src:Array<StdTypes.Int>):StdTypes.Int {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.hex.Hex.encode(_dst, _src);
    }
    /**
        DecodedLen returns the length of a decoding of x source bytes.
        Specifically, it returns x / 2.
    **/
    static public function decodedLen(_x:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.hex.Hex.decodedLen(_x);
    }
    /**
        Decode decodes src into DecodedLen(len(src)) bytes,
        returning the actual number of bytes written to dst.
        
        Decode expects that src contains only hexadecimal
        characters and that src has even length.
        If the input is malformed, Decode returns the number
        of bytes decoded before the error.
    **/
    static public function decode(_dst:Array<StdTypes.Int>, _src:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.hex.Hex.decode(_dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        EncodeToString returns the hexadecimal encoding of src.
    **/
    static public function encodeToString(_src:Array<StdTypes.Int>):String {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.hex.Hex.encodeToString(_src);
    }
    /**
        DecodeString returns the bytes represented by the hexadecimal string s.
        
        DecodeString expects that src contains only hexadecimal
        characters and that src has even length.
        If the input is malformed, DecodeString returns
        the bytes decoded before the error.
    **/
    static public function decodeString(_s:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.hex.Hex.decodeString(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        Dump returns a string that contains a hex dump of the given data. The format
        of the hex dump matches the output of `hexdump -C` on the command line.
    **/
    static public function dump(_data:Array<StdTypes.Int>):String {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.hex.Hex.dump(_data);
    }
    /**
        NewEncoder returns an io.Writer that writes lowercase hexadecimal characters to w.
    **/
    static public function newEncoder(_w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        return stdgo._internal.encoding.hex.Hex.newEncoder(_w);
    }
    /**
        NewDecoder returns an io.Reader that decodes hexadecimal characters from r.
        NewDecoder expects that r contain only an even number of hexadecimal characters.
    **/
    static public function newDecoder(_r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.encoding.hex.Hex.newDecoder(_r);
    }
    /**
        Dumper returns a WriteCloser that writes a hex dump of all written data to
        w. The format of the dump matches the output of `hexdump -C` on the command
        line.
    **/
    static public function dumper(_w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser {
        return stdgo._internal.encoding.hex.Hex.dumper(_w);
    }
}
