package stdgo.encoding.base64;
final stdPadding : StdTypes.Int = stdgo._internal.encoding.base64.Base64.stdPadding;
final noPadding : StdTypes.Int = stdgo._internal.encoding.base64.Base64.noPadding;
var stdEncoding(get, set) : Encoding;
private function get_stdEncoding():Encoding return stdgo._internal.encoding.base64.Base64.stdEncoding;
private function set_stdEncoding(v:Encoding):Encoding {
    stdgo._internal.encoding.base64.Base64.stdEncoding = v;
    return v;
}
var urlencoding(get, set) : Encoding;
private function get_urlencoding():Encoding return stdgo._internal.encoding.base64.Base64.urlencoding;
private function set_urlencoding(v:Encoding):Encoding {
    stdgo._internal.encoding.base64.Base64.urlencoding = v;
    return v;
}
var rawStdEncoding(get, set) : Encoding;
private function get_rawStdEncoding():Encoding return stdgo._internal.encoding.base64.Base64.rawStdEncoding;
private function set_rawStdEncoding(v:Encoding):Encoding {
    stdgo._internal.encoding.base64.Base64.rawStdEncoding = v;
    return v;
}
var rawURLEncoding(get, set) : Encoding;
private function get_rawURLEncoding():Encoding return stdgo._internal.encoding.base64.Base64.rawURLEncoding;
private function set_rawURLEncoding(v:Encoding):Encoding {
    stdgo._internal.encoding.base64.Base64.rawURLEncoding = v;
    return v;
}
@:structInit @:using(stdgo.encoding.base64.Base64.Encoding_static_extension) abstract Encoding(stdgo._internal.encoding.base64.Base64.Encoding) from stdgo._internal.encoding.base64.Base64.Encoding to stdgo._internal.encoding.base64.Base64.Encoding {
    public var _encode(get, set) : haxe.ds.Vector<std.UInt>;
    function get__encode():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._encode) i]);
    function set__encode(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._encode = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _decodeMap(get, set) : haxe.ds.Vector<std.UInt>;
    function get__decodeMap():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._decodeMap) i]);
    function set__decodeMap(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._decodeMap = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _padChar(get, set) : StdTypes.Int;
    function get__padChar():StdTypes.Int return this._padChar;
    function set__padChar(v:StdTypes.Int):StdTypes.Int {
        this._padChar = v;
        return v;
    }
    public var _strict(get, set) : Bool;
    function get__strict():Bool return this._strict;
    function set__strict(v:Bool):Bool {
        this._strict = v;
        return v;
    }
    public function new(?_encode:haxe.ds.Vector<std.UInt>, ?_decodeMap:haxe.ds.Vector<std.UInt>, ?_padChar:StdTypes.Int, ?_strict:Bool) this = new stdgo._internal.encoding.base64.Base64.Encoding(([for (i in _encode) i] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _decodeMap) i] : stdgo.GoArray<stdgo.GoUInt8>), _padChar, _strict);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.base64.Base64.T_encoder_static_extension) abstract T_encoder(stdgo._internal.encoding.base64.Base64.T_encoder) from stdgo._internal.encoding.base64.Base64.T_encoder to stdgo._internal.encoding.base64.Base64.T_encoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _enc(get, set) : Encoding;
    function get__enc():Encoding return this._enc;
    function set__enc(v:Encoding):Encoding {
        this._enc = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._w = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = v;
        return v;
    }
    public var _out(get, set) : haxe.ds.Vector<std.UInt>;
    function get__out():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._out) i]);
    function set__out(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._out = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_enc:Encoding, ?_w:stdgo._internal.io.Io.Writer, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base64.Base64.T_encoder(_err, _enc, _w, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _nbuf, ([for (i in _out) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.base64.Base64.T_decoder_static_extension) abstract T_decoder(stdgo._internal.encoding.base64.Base64.T_decoder) from stdgo._internal.encoding.base64.Base64.T_decoder to stdgo._internal.encoding.base64.Base64.T_decoder {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _readErr(get, set) : stdgo.Error;
    function get__readErr():stdgo.Error return this._readErr;
    function set__readErr(v:stdgo.Error):stdgo.Error {
        this._readErr = v;
        return v;
    }
    public var _enc(get, set) : Encoding;
    function get__enc():Encoding return this._enc;
    function set__enc(v:Encoding):Encoding {
        this._enc = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nbuf(get, set) : StdTypes.Int;
    function get__nbuf():StdTypes.Int return this._nbuf;
    function set__nbuf(v:StdTypes.Int):StdTypes.Int {
        this._nbuf = v;
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outbuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__outbuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._outbuf) i]);
    function set__outbuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._outbuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_enc:Encoding, ?_r:stdgo._internal.io.Io.Reader, ?_buf:haxe.ds.Vector<std.UInt>, ?_nbuf:StdTypes.Int, ?_out:Array<std.UInt>, ?_outbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.base64.Base64.T_decoder(_err, _readErr, _enc, _r, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _nbuf, ([for (i in _out) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _outbuf) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.base64.Base64.T_newlineFilteringReader_static_extension) abstract T_newlineFilteringReader(stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader) from stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader to stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader {
    public var _wrapped(get, set) : stdgo._internal.io.Io.Reader;
    function get__wrapped():stdgo._internal.io.Io.Reader return this._wrapped;
    function set__wrapped(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._wrapped = v;
        return v;
    }
    public function new(?_wrapped:stdgo._internal.io.Io.Reader) this = new stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader(_wrapped);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CorruptInputError = stdgo._internal.encoding.base64.Base64.CorruptInputError;
class Encoding_static_extension {
    static public function decodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.base64.Base64.Encoding_static_extension.decodedLen(_enc, _n);
    }
    static public function decode(_enc:Encoding, _dst:Array<StdTypes.Int>, _src:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64.Encoding_static_extension.decode(_enc, _dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function decodeString(_enc:Encoding, _s:String):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.base64.Base64.Encoding_static_extension.decodeString(_enc, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _decodeQuantum(_enc:Encoding, _dst:Array<StdTypes.Int>, _src:Array<StdTypes.Int>, _si:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64.Encoding_static_extension._decodeQuantum(_enc, _dst, _src, _si);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function encodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.base64.Base64.Encoding_static_extension.encodedLen(_enc, _n);
    }
    static public function encodeToString(_enc:Encoding, _src:Array<StdTypes.Int>):String {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.base64.Base64.Encoding_static_extension.encodeToString(_enc, _src);
    }
    static public function encode(_enc:Encoding, _dst:Array<StdTypes.Int>, _src:Array<StdTypes.Int>):Void {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.encoding.base64.Base64.Encoding_static_extension.encode(_enc, _dst, _src);
    }
    static public function strict(_enc:Encoding):Encoding {
        return stdgo._internal.encoding.base64.Base64.Encoding_static_extension.strict(_enc);
    }
    static public function withPadding(_enc:Encoding, _padding:StdTypes.Int):Encoding {
        return stdgo._internal.encoding.base64.Base64.Encoding_static_extension.withPadding(_enc, _padding);
    }
}
class T_encoder_static_extension {
    static public function close(_e:T_encoder):stdgo.Error {
        return stdgo._internal.encoding.base64.Base64.T_encoder_static_extension.close(_e);
    }
    static public function write(_e:T_encoder, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64.T_encoder_static_extension.write(_e, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_decoder_static_extension {
    static public function read(_d:T_decoder, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64.T_decoder_static_extension.read(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_newlineFilteringReader_static_extension {
    static public function read(_r:T_newlineFilteringReader, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class CorruptInputError_static_extension {
    static public function error(_e:CorruptInputError):String {
        return stdgo._internal.encoding.base64.Base64.CorruptInputError_static_extension.error(_e);
    }
}
/**
    Package base64 implements base64 encoding as specified by RFC 4648.
**/
class Base64 {
    /**
        NewEncoding returns a new padded Encoding defined by the given alphabet,
        which must be a 64-byte string that does not contain the padding character
        or CR / LF ('\r', '\n'). The alphabet is treated as sequence of byte values
        without any special treatment for multi-byte UTF-8.
        The resulting Encoding uses the default padding character ('='),
        which may be changed or disabled via WithPadding.
    **/
    static public function newEncoding(_encoder:String):Encoding {
        return stdgo._internal.encoding.base64.Base64.newEncoding(_encoder);
    }
    /**
        NewEncoder returns a new base64 stream encoder. Data written to
        the returned writer will be encoded using enc and then written to w.
        Base64 encodings operate in 4-byte blocks; when finished
        writing, the caller must Close the returned encoder to flush any
        partially written blocks.
    **/
    static public function newEncoder(_enc:Encoding, _w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.WriteCloser {
        return stdgo._internal.encoding.base64.Base64.newEncoder(_enc, _w);
    }
    /**
        NewDecoder constructs a new base64 stream decoder.
    **/
    static public function newDecoder(_enc:Encoding, _r:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        return stdgo._internal.encoding.base64.Base64.newDecoder(_enc, _r);
    }
}
