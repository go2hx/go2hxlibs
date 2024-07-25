package stdgo._internal.text.scanner;
private var __go2hxdoc__package : Bool;
final scanIdents : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
final scanInts : stdgo.GoUInt64 = (8i64 : stdgo.GoUInt64);
final scanFloats : stdgo.GoUInt64 = (16i64 : stdgo.GoUInt64);
final scanChars : stdgo.GoUInt64 = (32i64 : stdgo.GoUInt64);
final scanStrings : stdgo.GoUInt64 = (64i64 : stdgo.GoUInt64);
final scanRawStrings : stdgo.GoUInt64 = (128i64 : stdgo.GoUInt64);
final scanComments : stdgo.GoUInt64 = (256i64 : stdgo.GoUInt64);
final skipComments : stdgo.GoUInt64 = (512i64 : stdgo.GoUInt64);
final goTokens : stdgo.GoUInt64 = (1012i64 : stdgo.GoUInt64);
final eof : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final ident = (0i64 : stdgo.GoUInt64);
final int_ = (0i64 : stdgo.GoUInt64);
final float_ = (0i64 : stdgo.GoUInt64);
final char = (0i64 : stdgo.GoUInt64);
final string = (0i64 : stdgo.GoUInt64);
final rawString = (0i64 : stdgo.GoUInt64);
final comment = (0i64 : stdgo.GoUInt64);
final _skipComment = (0i64 : stdgo.GoUInt64);
final goWhitespace : stdgo.GoUInt64 = (4294977024i64 : stdgo.GoUInt64);
final _bufLen : stdgo.GoUInt64 = (1024i64 : stdgo.GoUInt64);
var _tokenString : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString> = ({
    final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
    x.__defaultValue__ = () -> ("" : stdgo.GoString);
    x.set((-1 : stdgo.GoInt32), ("EOF" : stdgo.GoString));
x.set((-2 : stdgo.GoInt32), ("Ident" : stdgo.GoString));
x.set((-3 : stdgo.GoInt32), ("Int" : stdgo.GoString));
x.set((-4 : stdgo.GoInt32), ("Float" : stdgo.GoString));
x.set((-5 : stdgo.GoInt32), ("Char" : stdgo.GoString));
x.set((-6 : stdgo.GoInt32), ("String" : stdgo.GoString));
x.set((-7 : stdgo.GoInt32), ("RawString" : stdgo.GoString));
x.set((-8 : stdgo.GoInt32), ("Comment" : stdgo.GoString));
    x;
} : stdgo.GoMap<stdgo.GoInt32, stdgo.GoString>);
@:structInit @:using(stdgo._internal.text.scanner.Scanner.Position_static_extension) class Position {
    public var filename : stdgo.GoString = "";
    public var offset : stdgo.GoInt = 0;
    public var line : stdgo.GoInt = 0;
    public var column : stdgo.GoInt = 0;
    public function new(?filename:stdgo.GoString, ?offset:stdgo.GoInt, ?line:stdgo.GoInt, ?column:stdgo.GoInt) {
        if (filename != null) this.filename = filename;
        if (offset != null) this.offset = offset;
        if (line != null) this.line = line;
        if (column != null) this.column = column;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Position(filename, offset, line, column);
    }
}
@:structInit @:using(stdgo._internal.text.scanner.Scanner.Scanner_static_extension) class Scanner {
    public var _src : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _srcBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1025, 1025, ...[for (i in 0 ... 1025) (0 : stdgo.GoUInt8)]);
    public var _srcPos : stdgo.GoInt = 0;
    public var _srcEnd : stdgo.GoInt = 0;
    public var _srcBufOffset : stdgo.GoInt = 0;
    public var _line : stdgo.GoInt = 0;
    public var _column : stdgo.GoInt = 0;
    public var _lastLineLen : stdgo.GoInt = 0;
    public var _lastCharLen : stdgo.GoInt = 0;
    public var _tokBuf : stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
    public var _tokPos : stdgo.GoInt = 0;
    public var _tokEnd : stdgo.GoInt = 0;
    public var _ch : stdgo.GoInt32 = 0;
    public var error : (stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, stdgo.GoString) -> Void = null;
    public var errorCount : stdgo.GoInt = 0;
    public var mode : stdgo.GoUInt = 0;
    public var whitespace : stdgo.GoUInt64 = 0;
    public var isIdentRune : (stdgo.GoInt32, stdgo.GoInt) -> Bool = null;
    @:embedded
    public var position : stdgo._internal.text.scanner.Scanner.Position = ({} : stdgo._internal.text.scanner.Scanner.Position);
    public function new(?_src:stdgo._internal.io.Io.Reader, ?_srcBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_srcPos:stdgo.GoInt, ?_srcEnd:stdgo.GoInt, ?_srcBufOffset:stdgo.GoInt, ?_line:stdgo.GoInt, ?_column:stdgo.GoInt, ?_lastLineLen:stdgo.GoInt, ?_lastCharLen:stdgo.GoInt, ?_tokBuf:stdgo._internal.bytes.Bytes.Buffer, ?_tokPos:stdgo.GoInt, ?_tokEnd:stdgo.GoInt, ?_ch:stdgo.GoInt32, ?error:(stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, stdgo.GoString) -> Void, ?errorCount:stdgo.GoInt, ?mode:stdgo.GoUInt, ?whitespace:stdgo.GoUInt64, ?isIdentRune:(stdgo.GoInt32, stdgo.GoInt) -> Bool, ?position:stdgo._internal.text.scanner.Scanner.Position) {
        if (_src != null) this._src = _src;
        if (_srcBuf != null) this._srcBuf = _srcBuf;
        if (_srcPos != null) this._srcPos = _srcPos;
        if (_srcEnd != null) this._srcEnd = _srcEnd;
        if (_srcBufOffset != null) this._srcBufOffset = _srcBufOffset;
        if (_line != null) this._line = _line;
        if (_column != null) this._column = _column;
        if (_lastLineLen != null) this._lastLineLen = _lastLineLen;
        if (_lastCharLen != null) this._lastCharLen = _lastCharLen;
        if (_tokBuf != null) this._tokBuf = _tokBuf;
        if (_tokPos != null) this._tokPos = _tokPos;
        if (_tokEnd != null) this._tokEnd = _tokEnd;
        if (_ch != null) this._ch = _ch;
        if (error != null) this.error = error;
        if (errorCount != null) this.errorCount = errorCount;
        if (mode != null) this.mode = mode;
        if (whitespace != null) this.whitespace = whitespace;
        if (isIdentRune != null) this.isIdentRune = isIdentRune;
        if (position != null) this.position = position;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function isValid():Bool return position.isValid();
    @:embedded
    public function string():stdgo.GoString return position.string();
    public function __copy__() {
        return new Scanner(
_src,
_srcBuf,
_srcPos,
_srcEnd,
_srcBufOffset,
_line,
_column,
_lastLineLen,
_lastCharLen,
_tokBuf,
_tokPos,
_tokEnd,
_ch,
error,
errorCount,
mode,
whitespace,
isIdentRune,
position);
    }
}
function tokenString(_tok:stdgo.GoRune):stdgo.GoString {
        {
            var __tmp__ = (_tokenString != null && _tokenString.exists(_tok) ? { _0 : _tokenString[_tok], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                return _s?.__copy__();
            };
        };
        return stdgo._internal.fmt.Fmt.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface((_tok : stdgo.GoString)))?.__copy__();
    }
function _lower(_ch:stdgo.GoRune):stdgo.GoRune {
        return ((32 : stdgo.GoInt32) | _ch : stdgo.GoInt32);
    }
function _isDecimal(_ch:stdgo.GoRune):Bool {
        return (((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool);
    }
function _isHex(_ch:stdgo.GoRune):Bool {
        return ((((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool) || (((97 : stdgo.GoInt32) <= _lower(_ch) : Bool) && (_lower(_ch) <= (102 : stdgo.GoInt32) : Bool) : Bool) : Bool);
    }
function _litname(_prefix:stdgo.GoRune):stdgo.GoString {
        {
            final __value__ = _prefix;
            if (__value__ == ((120 : stdgo.GoInt32))) {
                return ("hexadecimal literal" : stdgo.GoString);
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((48 : stdgo.GoInt32))) {
                return ("octal literal" : stdgo.GoString);
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                return ("binary literal" : stdgo.GoString);
            } else {
                return ("decimal literal" : stdgo.GoString);
            };
        };
    }
function _invalidSep(_x:stdgo.GoString):stdgo.GoInt {
        var _x1 = (32 : stdgo.GoInt32);
        var _d = (46 : stdgo.GoInt32);
        var _i = (0 : stdgo.GoInt);
        if ((((_x.length) >= (2 : stdgo.GoInt) : Bool) && (_x[(0 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _x1 = _lower((_x[(1 : stdgo.GoInt)] : stdgo.GoRune));
            if (((_x1 == ((120 : stdgo.GoInt32)) || _x1 == ((111 : stdgo.GoInt32)) : Bool) || (_x1 == (98 : stdgo.GoInt32)) : Bool)) {
                _d = (48 : stdgo.GoInt32);
                _i = (2 : stdgo.GoInt);
            };
        };
        stdgo.Go.cfor((_i < (_x.length) : Bool), _i++, {
            var _p = (_d : stdgo.GoInt32);
            _d = (_x[(_i : stdgo.GoInt)] : stdgo.GoRune);
            if (_d == ((95 : stdgo.GoInt32))) {
                if (_p != ((48 : stdgo.GoInt32))) {
                    return _i;
                };
            } else if ((_isDecimal(_d) || (_x1 == ((120 : stdgo.GoInt32)) && _isHex(_d) : Bool) : Bool)) {
                _d = (48 : stdgo.GoInt32);
            } else {
                if (_p == ((95 : stdgo.GoInt32))) {
                    return (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _d = (46 : stdgo.GoInt32);
            };
        });
        if (_d == ((95 : stdgo.GoInt32))) {
            return ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
function _digitVal(_ch:stdgo.GoRune):stdgo.GoInt {
        if ((((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            return ((_ch - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
        } else if ((((97 : stdgo.GoInt32) <= _lower(_ch) : Bool) && (_lower(_ch) <= (102 : stdgo.GoInt32) : Bool) : Bool)) {
            return (((_lower(_ch) - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
        };
        return (16 : stdgo.GoInt);
    }
class Position_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function isValid():Bool return __self__.value.isValid();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Position>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.scanner.Scanner.Position_asInterface) class Position_static_extension {
    @:keep
    static public function string( _pos:Position):stdgo.GoString {
        @:recv var _pos:Position = _pos?.__copy__();
        var _s = (_pos.filename?.__copy__() : stdgo.GoString);
        if (_s == (stdgo.Go.str())) {
            _s = ("<input>" : stdgo.GoString);
        };
        if (_pos.isValid()) {
            _s = (_s + (stdgo._internal.fmt.Fmt.sprintf((":%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_pos.column)))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
    @:keep
    static public function isValid( _pos:stdgo.Ref<Position>):Bool {
        @:recv var _pos:stdgo.Ref<Position> = _pos;
        return (_pos.line > (0 : stdgo.GoInt) : Bool);
    }
}
class Scanner_asInterface {
    @:keep
    public dynamic function tokenText():stdgo.GoString return __self__.value.tokenText();
    @:keep
    public dynamic function pos():Position return __self__.value.pos();
    @:keep
    public dynamic function scan():stdgo.GoRune return __self__.value.scan();
    @:keep
    public dynamic function _scanComment(_ch:stdgo.GoRune):stdgo.GoRune return __self__.value._scanComment(_ch);
    @:keep
    public dynamic function _scanChar():Void __self__.value._scanChar();
    @:keep
    public dynamic function _scanRawString():Void __self__.value._scanRawString();
    @:keep
    public dynamic function _scanString(_quote:stdgo.GoRune):stdgo.GoInt return __self__.value._scanString(_quote);
    @:keep
    public dynamic function _scanEscape(_quote:stdgo.GoRune):stdgo.GoRune return __self__.value._scanEscape(_quote);
    @:keep
    public dynamic function _scanDigits(_ch:stdgo.GoRune, _base:stdgo.GoInt, _n:stdgo.GoInt):stdgo.GoRune return __self__.value._scanDigits(_ch, _base, _n);
    @:keep
    public dynamic function _scanNumber(_ch:stdgo.GoRune, _seenDot:Bool):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoRune; } return __self__.value._scanNumber(_ch, _seenDot);
    @:keep
    public dynamic function _digits(_ch0:stdgo.GoRune, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoRune>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } return __self__.value._digits(_ch0, _base, _invalid);
    @:keep
    public dynamic function _scanIdentifier():stdgo.GoRune return __self__.value._scanIdentifier();
    @:keep
    public dynamic function _isIdentRune(_ch:stdgo.GoRune, _i:stdgo.GoInt):Bool return __self__.value._isIdentRune(_ch, _i);
    @:keep
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._errorf(_format, ..._args);
    @:keep
    public dynamic function _error(_msg:stdgo.GoString):Void __self__.value._error(_msg);
    @:keep
    public dynamic function peek():stdgo.GoRune return __self__.value.peek();
    @:keep
    public dynamic function next():stdgo.GoRune return __self__.value.next();
    @:keep
    public dynamic function _next():stdgo.GoRune return __self__.value._next();
    @:keep
    public dynamic function init(_src:stdgo._internal.io.Io.Reader):stdgo.Ref<Scanner> return __self__.value.init(_src);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function isValid():Bool return __self__.value.isValid();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Scanner>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.text.scanner.Scanner.Scanner_asInterface) class Scanner_static_extension {
    @:keep
    static public function tokenText( _s:stdgo.Ref<Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if ((_s._tokPos < (0 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        if ((_s._tokEnd < _s._tokPos : Bool)) {
            _s._tokEnd = _s._tokPos;
        };
        if (_s._tokBuf.len() == ((0 : stdgo.GoInt))) {
            return ((_s._srcBuf.__slice__(_s._tokPos, _s._tokEnd) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        };
        _s._tokBuf.write((_s._srcBuf.__slice__(_s._tokPos, _s._tokEnd) : stdgo.Slice<stdgo.GoUInt8>));
        _s._tokPos = _s._tokEnd;
        return (_s._tokBuf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<Scanner>):Position {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _pos = ({} : stdgo._internal.text.scanner.Scanner.Position);
        _pos.filename = _s.position.filename?.__copy__();
        _pos.offset = ((_s._srcBufOffset + _s._srcPos : stdgo.GoInt) - _s._lastCharLen : stdgo.GoInt);
        if ((_s._column > (0 : stdgo.GoInt) : Bool)) {
            _pos.line = _s._line;
            _pos.column = _s._column;
        } else if ((_s._lastLineLen > (0 : stdgo.GoInt) : Bool)) {
            _pos.line = (_s._line - (1 : stdgo.GoInt) : stdgo.GoInt);
            _pos.column = _s._lastLineLen;
        } else {
            _pos.line = (1 : stdgo.GoInt);
            _pos.column = (1 : stdgo.GoInt);
        };
        return _pos;
    }
    @:keep
    static public function scan( _s:stdgo.Ref<Scanner>):stdgo.GoRune {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _s:stdgo.Ref<Scanner> = _s;
            var _ch = (_s.peek() : stdgo.GoInt32);
            _s._tokPos = (-1 : stdgo.GoInt);
            _s.position.line = (0 : stdgo.GoInt);
            @:label("redo") while ((_s.whitespace & (((1i64 : stdgo.GoUInt64) << (_ch : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                _ch = _s._next();
            };
            _s._tokBuf.reset();
            _s._tokPos = (_s._srcPos - _s._lastCharLen : stdgo.GoInt);
            _s.position.offset = (_s._srcBufOffset + _s._tokPos : stdgo.GoInt);
            if ((_s._column > (0 : stdgo.GoInt) : Bool)) {
                _s.position.line = _s._line;
                _s.position.column = _s._column;
            } else {
                _s.position.line = (_s._line - (1 : stdgo.GoInt) : stdgo.GoInt);
                _s.position.column = _s._lastLineLen;
            };
            var _tok = (_ch : stdgo.GoInt32);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (_s._isIdentRune(_ch, (0 : stdgo.GoInt))) {
                        if ((_s.mode & (4u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                            _tok = (-2 : stdgo.GoInt32);
                            _ch = _s._scanIdentifier();
                        } else {
                            _ch = _s._next();
                        };
                        break;
                    } else if (_isDecimal(_ch)) {
                        if ((_s.mode & (24u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                            {
                                var __tmp__ = _s._scanNumber(_ch, false);
                                _tok = __tmp__._0;
                                _ch = __tmp__._1;
                            };
                        } else {
                            _ch = _s._next();
                        };
                        break;
                    } else {
                        {
                            var __switchIndex__ = -1;
                            var __run__ = true;
                            while (__run__) {
                                __run__ = false;
                                {
                                    final __value__ = _ch;
                                    if (__value__ == ((-1 : stdgo.GoInt32))) {
                                        break;
                                        break;
                                    } else if (__value__ == ((34 : stdgo.GoInt32))) {
                                        if ((_s.mode & (64u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                            _s._scanString((34 : stdgo.GoInt32));
                                            _tok = (-6 : stdgo.GoInt32);
                                        };
                                        _ch = _s._next();
                                        break;
                                    } else if (__value__ == ((39 : stdgo.GoInt32))) {
                                        if ((_s.mode & (32u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                            _s._scanChar();
                                            _tok = (-5 : stdgo.GoInt32);
                                        };
                                        _ch = _s._next();
                                        break;
                                    } else if (__value__ == ((46 : stdgo.GoInt32))) {
                                        _ch = _s._next();
                                        if ((_isDecimal(_ch) && ((_s.mode & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                                            {
                                                var __tmp__ = _s._scanNumber(_ch, true);
                                                _tok = __tmp__._0;
                                                _ch = __tmp__._1;
                                            };
                                        };
                                        break;
                                    } else if (__value__ == ((47 : stdgo.GoInt32))) {
                                        _ch = _s._next();
                                        if (((((_ch == (47 : stdgo.GoInt32)) || (_ch == (42 : stdgo.GoInt32)) : Bool)) && ((_s.mode & (256u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                                            if ((_s.mode & (512u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                                _s._tokPos = (-1 : stdgo.GoInt);
                                                _ch = _s._scanComment(_ch);
                                                @:goto "redo";
                                            };
                                            _ch = _s._scanComment(_ch);
                                            _tok = (-8 : stdgo.GoInt32);
                                        };
                                        break;
                                    } else if (__value__ == ((96 : stdgo.GoInt32))) {
                                        if ((_s.mode & (128u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                                            _s._scanRawString();
                                            _tok = (-7 : stdgo.GoInt32);
                                        };
                                        _ch = _s._next();
                                        break;
                                    } else {
                                        _ch = _s._next();
                                    };
                                };
                                break;
                            };
                        };
                    };
                    break;
                };
            };
            _s._tokEnd = (_s._srcPos - _s._lastCharLen : stdgo.GoInt);
            _s._ch = _ch;
            return _tok;
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function _scanComment( _s:stdgo.Ref<Scanner>, _ch:stdgo.GoRune):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (_ch == ((47 : stdgo.GoInt32))) {
            _ch = _s._next();
            while (((_ch != (10 : stdgo.GoInt32)) && (_ch >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                _ch = _s._next();
            };
            return _ch;
        };
        _ch = _s._next();
        while (true) {
            if ((_ch < (0 : stdgo.GoInt32) : Bool)) {
                _s._error(("comment not terminated" : stdgo.GoString));
                break;
            };
            var _ch0 = (_ch : stdgo.GoInt32);
            _ch = _s._next();
            if (((_ch0 == (42 : stdgo.GoInt32)) && (_ch == (47 : stdgo.GoInt32)) : Bool)) {
                _ch = _s._next();
                break;
            };
        };
        return _ch;
    }
    @:keep
    static public function _scanChar( _s:stdgo.Ref<Scanner>):Void {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (_s._scanString((39 : stdgo.GoInt32)) != ((1 : stdgo.GoInt))) {
            _s._error(("invalid char literal" : stdgo.GoString));
        };
    }
    @:keep
    static public function _scanRawString( _s:stdgo.Ref<Scanner>):Void {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _ch = (_s._next() : stdgo.GoInt32);
        while (_ch != ((96 : stdgo.GoInt32))) {
            if ((_ch < (0 : stdgo.GoInt32) : Bool)) {
                _s._error(("literal not terminated" : stdgo.GoString));
                return;
            };
            _ch = _s._next();
        };
    }
    @:keep
    static public function _scanString( _s:stdgo.Ref<Scanner>, _quote:stdgo.GoRune):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _n = (0 : stdgo.GoInt);
        var _ch = (_s._next() : stdgo.GoInt32);
        while (_ch != (_quote)) {
            if (((_ch == (10 : stdgo.GoInt32)) || (_ch < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                _s._error(("literal not terminated" : stdgo.GoString));
                return _n;
            };
            if (_ch == ((92 : stdgo.GoInt32))) {
                _ch = _s._scanEscape(_quote);
            } else {
                _ch = _s._next();
            };
            _n++;
        };
        return _n;
    }
    @:keep
    static public function _scanEscape( _s:stdgo.Ref<Scanner>, _quote:stdgo.GoRune):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _ch = (_s._next() : stdgo.GoInt32);
        {
            final __value__ = _ch;
            if (__value__ == ((97 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((110 : stdgo.GoInt32)) || __value__ == ((114 : stdgo.GoInt32)) || __value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32)) || __value__ == ((92 : stdgo.GoInt32)) || __value__ == (_quote)) {
                _ch = _s._next();
            } else if (__value__ == ((48 : stdgo.GoInt32)) || __value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_ch, (8 : stdgo.GoInt), (3 : stdgo.GoInt));
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_s._next(), (16 : stdgo.GoInt), (2 : stdgo.GoInt));
            } else if (__value__ == ((117 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_s._next(), (16 : stdgo.GoInt), (4 : stdgo.GoInt));
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                _ch = _s._scanDigits(_s._next(), (16 : stdgo.GoInt), (8 : stdgo.GoInt));
            } else {
                _s._error(("invalid char escape" : stdgo.GoString));
            };
        };
        return _ch;
    }
    @:keep
    static public function _scanDigits( _s:stdgo.Ref<Scanner>, _ch:stdgo.GoRune, _base:stdgo.GoInt, _n:stdgo.GoInt):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        while (((_n > (0 : stdgo.GoInt) : Bool) && (_digitVal(_ch) < _base : Bool) : Bool)) {
            _ch = _s._next();
            _n--;
        };
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _s._error(("invalid char escape" : stdgo.GoString));
        };
        return _ch;
    }
    @:keep
    static public function _scanNumber( _s:stdgo.Ref<Scanner>, _ch:stdgo.GoRune, _seenDot:Bool):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoRune; } {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _base = (10 : stdgo.GoInt);
        var _prefix = (((0 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoInt32);
        var _digsep = (0 : stdgo.GoInt);
        var _invalid = (((0 : stdgo.GoInt32) : stdgo.GoRune) : stdgo.GoInt32);
        var _tok:stdgo.GoRune = (0 : stdgo.GoInt32);
        var _ds:stdgo.GoInt = (0 : stdgo.GoInt);
        if (!_seenDot) {
            _tok = (-3 : stdgo.GoInt32);
            if (_ch == ((48 : stdgo.GoInt32))) {
                _ch = _s._next();
                {
                    final __value__ = _lower(_ch);
                    if (__value__ == ((120 : stdgo.GoInt32))) {
                        _ch = _s._next();
                        {
                            final __tmp__0 = (16 : stdgo.GoInt);
                            final __tmp__1 = (120 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else if (__value__ == ((111 : stdgo.GoInt32))) {
                        _ch = _s._next();
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (111 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else if (__value__ == ((98 : stdgo.GoInt32))) {
                        _ch = _s._next();
                        {
                            final __tmp__0 = (2 : stdgo.GoInt);
                            final __tmp__1 = (98 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else {
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (48 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                        _digsep = (1 : stdgo.GoInt);
                    };
                };
            };
            {
                var __tmp__ = _s._digits(_ch, _base, stdgo.Go.pointer(_invalid));
                _ch = __tmp__._0;
                _ds = __tmp__._1;
            };
            _digsep = (_digsep | (_ds) : stdgo.GoInt);
            if (((_ch == (46 : stdgo.GoInt32)) && ((_s.mode & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                _ch = _s._next();
                _seenDot = true;
            };
        };
        if (_seenDot) {
            _tok = (-4 : stdgo.GoInt32);
            if (((_prefix == (111 : stdgo.GoInt32)) || (_prefix == (98 : stdgo.GoInt32)) : Bool)) {
                _s._error((("invalid radix point in " : stdgo.GoString) + _litname(_prefix)?.__copy__() : stdgo.GoString)?.__copy__());
            };
            {
                var __tmp__ = _s._digits(_ch, _base, stdgo.Go.pointer(_invalid));
                _ch = __tmp__._0;
                _ds = __tmp__._1;
            };
            _digsep = (_digsep | (_ds) : stdgo.GoInt);
        };
        if ((_digsep & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            _s._error((_litname(_prefix) + (" has no digits" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        {
            var _e = (_lower(_ch) : stdgo.GoInt32);
            if (((((_e == (101 : stdgo.GoInt32)) || (_e == (112 : stdgo.GoInt32)) : Bool)) && ((_s.mode & (16u32 : stdgo.GoUInt) : stdgo.GoUInt) != (0u32 : stdgo.GoUInt)) : Bool)) {
                if (((_e == ((101 : stdgo.GoInt32)) && _prefix != ((0 : stdgo.GoInt32)) : Bool) && (_prefix != (48 : stdgo.GoInt32)) : Bool)) {
                    _s._errorf(("%q exponent requires decimal mantissa" : stdgo.GoString), stdgo.Go.toInterface(_ch));
                } else if (((_e == (112 : stdgo.GoInt32)) && (_prefix != (120 : stdgo.GoInt32)) : Bool)) {
                    _s._errorf(("%q exponent requires hexadecimal mantissa" : stdgo.GoString), stdgo.Go.toInterface(_ch));
                };
                _ch = _s._next();
                _tok = (-4 : stdgo.GoInt32);
                if (((_ch == (43 : stdgo.GoInt32)) || (_ch == (45 : stdgo.GoInt32)) : Bool)) {
                    _ch = _s._next();
                };
                {
                    var __tmp__ = _s._digits(_ch, (10 : stdgo.GoInt), (null : stdgo.Pointer<stdgo.GoInt32>));
                    _ch = __tmp__._0;
                    _ds = __tmp__._1;
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                if ((_ds & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _s._error(("exponent has no digits" : stdgo.GoString));
                };
            } else if (((_prefix == (120 : stdgo.GoInt32)) && (_tok == (-4 : stdgo.GoInt32)) : Bool)) {
                _s._error(("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString));
            };
        };
        if (((_tok == (-3 : stdgo.GoInt32)) && (_invalid != (0 : stdgo.GoInt32)) : Bool)) {
            _s._errorf(("invalid digit %q in %s" : stdgo.GoString), stdgo.Go.toInterface(_invalid), stdgo.Go.toInterface(_litname(_prefix)));
        };
        if ((_digsep & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            _s._tokEnd = (_s._srcPos - _s._lastCharLen : stdgo.GoInt);
            {
                var _i = (_invalidSep(_s.tokenText()?.__copy__()) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _s._error(("\'_\' must separate successive digits" : stdgo.GoString));
                };
            };
        };
        return { _0 : _tok, _1 : _ch };
    }
    @:keep
    static public function _digits( _s:stdgo.Ref<Scanner>, _ch0:stdgo.GoRune, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoRune>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; } {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _ch = (0 : stdgo.GoInt32), _digsep = (0 : stdgo.GoInt);
        _ch = _ch0;
        if ((_base <= (10 : stdgo.GoInt) : Bool)) {
            var _max = ((((48 : stdgo.GoInt) + _base : stdgo.GoInt) : stdgo.GoRune) : stdgo.GoInt32);
            while ((_isDecimal(_ch) || (_ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                if (_ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                } else if (((_ch >= _max : Bool) && (_invalid.value == (0 : stdgo.GoInt32)) : Bool)) {
                    _invalid.value = _ch;
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                _ch = _s._next();
            };
        } else {
            while ((_isHex(_ch) || (_ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                if (_ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                _ch = _s._next();
            };
        };
        return { _0 : _ch, _1 : _digsep };
    }
    @:keep
    static public function _scanIdentifier( _s:stdgo.Ref<Scanner>):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var _ch = (_s._next() : stdgo.GoInt32);
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor(_s._isIdentRune(_ch, _i), _i++, {
                _ch = _s._next();
            });
        };
        return _ch;
    }
    @:keep
    static public function _isIdentRune( _s:stdgo.Ref<Scanner>, _ch:stdgo.GoRune, _i:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (_s.isIdentRune != null) {
            return ((_ch != (-1 : stdgo.GoInt32)) && _s.isIdentRune(_ch, _i) : Bool);
        };
        return ((_ch == ((95 : stdgo.GoInt32)) || stdgo._internal.unicode.Unicode.isLetter(_ch) : Bool) || (stdgo._internal.unicode.Unicode.isDigit(_ch) && (_i > (0 : stdgo.GoInt) : Bool) : Bool) : Bool);
    }
    @:keep
    static public function _errorf( _s:stdgo.Ref<Scanner>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        _s._error(stdgo._internal.fmt.Fmt.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
    }
    @:keep
    static public function _error( _s:stdgo.Ref<Scanner>, _msg:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        _s._tokEnd = (_s._srcPos - _s._lastCharLen : stdgo.GoInt);
        _s.errorCount++;
        if (_s.error != null) {
            _s.error(_s, _msg?.__copy__());
            return;
        };
        var _pos = (_s.position?.__copy__() : stdgo._internal.text.scanner.Scanner.Position);
        if (!_pos.isValid()) {
            _pos = _s.pos()?.__copy__();
        };
        stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)), stdgo.Go.toInterface(_msg));
    }
    @:keep
    static public function peek( _s:stdgo.Ref<Scanner>):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        if (_s._ch == ((-2 : stdgo.GoInt32))) {
            _s._ch = _s._next();
            if (_s._ch == ((65279 : stdgo.GoInt32))) {
                _s._ch = _s._next();
            };
        };
        return _s._ch;
    }
    @:keep
    static public function next( _s:stdgo.Ref<Scanner>):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        _s._tokPos = (-1 : stdgo.GoInt);
        _s.position.line = (0 : stdgo.GoInt);
        var _ch = (_s.peek() : stdgo.GoInt32);
        if (_ch != ((-1 : stdgo.GoInt32))) {
            _s._ch = _s._next();
        };
        return _ch;
    }
    @:keep
    static public function _next( _s:stdgo.Ref<Scanner>):stdgo.GoRune {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        var __0 = ((_s._srcBuf[(_s._srcPos : stdgo.GoInt)] : stdgo.GoRune) : stdgo.GoInt32), __1 = (1 : stdgo.GoInt);
var _width = __1, _ch = __0;
        if ((_ch >= (128 : stdgo.GoInt32) : Bool)) {
            while ((((_s._srcPos + (4 : stdgo.GoInt) : stdgo.GoInt) > _s._srcEnd : Bool) && !stdgo._internal.unicode.utf8.Utf8.fullRune((_s._srcBuf.__slice__(_s._srcPos, _s._srcEnd) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                if ((_s._tokPos >= (0 : stdgo.GoInt) : Bool)) {
                    _s._tokBuf.write((_s._srcBuf.__slice__(_s._tokPos, _s._srcPos) : stdgo.Slice<stdgo.GoUInt8>));
                    _s._tokPos = (0 : stdgo.GoInt);
                };
                stdgo.Go.copySlice((_s._srcBuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_s._srcBuf.__slice__(_s._srcPos, _s._srcEnd) : stdgo.Slice<stdgo.GoUInt8>));
                _s._srcBufOffset = (_s._srcBufOffset + (_s._srcPos) : stdgo.GoInt);
                var _i = (_s._srcEnd - _s._srcPos : stdgo.GoInt);
                var __tmp__ = _s._src.read((_s._srcBuf.__slice__(_i, (1024 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _s._srcPos = (0 : stdgo.GoInt);
                _s._srcEnd = (_i + _n : stdgo.GoInt);
                _s._srcBuf[(_s._srcEnd : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                        _s._error(_err.error()?.__copy__());
                    };
                    if (_s._srcEnd == ((0 : stdgo.GoInt))) {
                        if ((_s._lastCharLen > (0 : stdgo.GoInt) : Bool)) {
                            _s._column++;
                        };
                        _s._lastCharLen = (0 : stdgo.GoInt);
                        return (-1 : stdgo.GoInt32);
                    };
                    break;
                };
            };
            _ch = (_s._srcBuf[(_s._srcPos : stdgo.GoInt)] : stdgo.GoRune);
            if ((_ch >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_s._srcBuf.__slice__(_s._srcPos, _s._srcEnd) : stdgo.Slice<stdgo.GoUInt8>));
                    _ch = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (((_ch == (65533 : stdgo.GoInt32)) && (_width == (1 : stdgo.GoInt)) : Bool)) {
                    _s._srcPos = (_s._srcPos + (_width) : stdgo.GoInt);
                    _s._lastCharLen = _width;
                    _s._column++;
                    _s._error(("invalid UTF-8 encoding" : stdgo.GoString));
                    return _ch;
                };
            };
        };
        _s._srcPos = (_s._srcPos + (_width) : stdgo.GoInt);
        _s._lastCharLen = _width;
        _s._column++;
        {
            final __value__ = _ch;
            if (__value__ == ((0 : stdgo.GoInt32))) {
                _s._error(("invalid character NUL" : stdgo.GoString));
            } else if (__value__ == ((10 : stdgo.GoInt32))) {
                _s._line++;
                _s._lastLineLen = _s._column;
                _s._column = (0 : stdgo.GoInt);
            };
        };
        return _ch;
    }
    @:keep
    static public function init( _s:stdgo.Ref<Scanner>, _src:stdgo._internal.io.Io.Reader):stdgo.Ref<Scanner> {
        @:recv var _s:stdgo.Ref<Scanner> = _s;
        _s._src = _src;
        _s._srcBuf[(0 : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
        _s._srcPos = (0 : stdgo.GoInt);
        _s._srcEnd = (0 : stdgo.GoInt);
        _s._srcBufOffset = (0 : stdgo.GoInt);
        _s._line = (1 : stdgo.GoInt);
        _s._column = (0 : stdgo.GoInt);
        _s._lastLineLen = (0 : stdgo.GoInt);
        _s._lastCharLen = (0 : stdgo.GoInt);
        _s._tokPos = (-1 : stdgo.GoInt);
        _s._ch = (-2 : stdgo.GoInt32);
        _s.error = null;
        _s.errorCount = (0 : stdgo.GoInt);
        _s.mode = (1012u32 : stdgo.GoUInt);
        _s.whitespace = (4294977024i64 : stdgo.GoUInt64);
        _s.position.line = (0 : stdgo.GoInt);
        return _s;
    }
    @:embedded
    public static function string( __self__:Scanner):stdgo.GoString return __self__.string();
    @:embedded
    public static function isValid( __self__:Scanner):Bool return __self__.isValid();
}
