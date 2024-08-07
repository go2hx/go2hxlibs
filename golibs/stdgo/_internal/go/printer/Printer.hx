package stdgo._internal.go.printer;
private var __go2hxdoc__package : Bool;
final _commaTerm : stdgo._internal.go.printer.Printer.T_exprListMode = (2u32 : stdgo._internal.go.printer.Printer.T_exprListMode);
final _noIndent = (2u32 : stdgo._internal.go.printer.Printer.T_exprListMode);
final _filteredMsg : stdgo.GoString = ("contains filtered or unexported fields" : stdgo.GoString);
final _funcParam : stdgo._internal.go.printer.Printer.T_paramMode = (2 : stdgo._internal.go.printer.Printer.T_paramMode);
final _funcTParam = (2 : stdgo._internal.go.printer.Printer.T_paramMode);
final _typeTParam = (2 : stdgo._internal.go.printer.Printer.T_paramMode);
var _fileNode : stdgo.Ref<stdgo._internal.go.ast.Ast.File> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>);
var _fileSize : stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _declNode : stdgo._internal.go.ast.Ast.Decl = (null : stdgo._internal.go.ast.Ast.Decl);
var _declSize : stdgo.GoInt64 = (0 : stdgo.GoInt64);
final _maxNewlines : stdgo.GoUInt64 = (2i64 : stdgo.GoUInt64);
final _debug : Bool = false;
final _infinity : stdgo.GoUInt64 = (1073741824i64 : stdgo.GoUInt64);
final _ignore : stdgo._internal.go.printer.Printer.T_whiteSpace = ((0 : stdgo._internal.go.printer.Printer.T_whiteSpace) : T_whiteSpace);
final _blank : stdgo._internal.go.printer.Printer.T_whiteSpace = ((32 : stdgo._internal.go.printer.Printer.T_whiteSpace) : T_whiteSpace);
final _vtab : stdgo._internal.go.printer.Printer.T_whiteSpace = ((11 : stdgo._internal.go.printer.Printer.T_whiteSpace) : T_whiteSpace);
final _newline : stdgo._internal.go.printer.Printer.T_whiteSpace = ((10 : stdgo._internal.go.printer.Printer.T_whiteSpace) : T_whiteSpace);
final _formfeed : stdgo._internal.go.printer.Printer.T_whiteSpace = ((12 : stdgo._internal.go.printer.Printer.T_whiteSpace) : T_whiteSpace);
final _indent : stdgo._internal.go.printer.Printer.T_whiteSpace = ((62 : stdgo._internal.go.printer.Printer.T_whiteSpace) : T_whiteSpace);
final _unindent : stdgo._internal.go.printer.Printer.T_whiteSpace = ((60 : stdgo._internal.go.printer.Printer.T_whiteSpace) : T_whiteSpace);
final _noExtraBlank : stdgo._internal.go.printer.Printer.T_pmode = (2 : stdgo._internal.go.printer.Printer.T_pmode);
final _noExtraLinebreak = (2 : stdgo._internal.go.printer.Printer.T_pmode);
final _inSpace : stdgo.GoUInt64 = (2i64 : stdgo.GoUInt64);
final _inEscape = (2i64 : stdgo.GoUInt64);
final _inText = (2i64 : stdgo.GoUInt64);
final rawFormat : stdgo._internal.go.printer.Printer.Mode = (8u32 : stdgo._internal.go.printer.Printer.Mode);
final tabIndent = (8u32 : stdgo._internal.go.printer.Printer.Mode);
final useSpaces = (8u32 : stdgo._internal.go.printer.Printer.Mode);
final sourcePos = (8u32 : stdgo._internal.go.printer.Printer.Mode);
final _normalizeNumbers : stdgo._internal.go.printer.Printer.Mode = (1073741824u32 : stdgo._internal.go.printer.Printer.Mode);
final _dataDir : stdgo.GoString = ("testdata" : stdgo.GoString);
final _tabwidth : stdgo.GoUInt64 = (8i64 : stdgo.GoUInt64);
final _export : stdgo._internal.go.printer.Printer.T_checkMode = (16u32 : stdgo._internal.go.printer.Printer.T_checkMode);
final _rawFormat = (16u32 : stdgo._internal.go.printer.Printer.T_checkMode);
final _normNumber = (16u32 : stdgo._internal.go.printer.Printer.T_checkMode);
final _idempotent = (16u32 : stdgo._internal.go.printer.Printer.T_checkMode);
final _allowTypeParams = (16u32 : stdgo._internal.go.printer.Printer.T_checkMode);
var _aNewline : stdgo.Slice<stdgo.GoUInt8> = (("\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _printerPool : stdgo._internal.sync.Sync.Pool = ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ _wsbuf : (new stdgo.Slice<stdgo._internal.go.printer.Printer.T_whiteSpace>((0 : stdgo.GoInt).toBasic(), (16 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo._internal.go.printer.Printer.T_whiteSpace>), _output : (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (16384 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.go.printer.Printer.T_printer)) : stdgo.Ref<stdgo._internal.go.printer.Printer.T_printer>)));
    } } : stdgo._internal.sync.Sync.Pool);
var _update : stdgo.Pointer<Bool> = stdgo._internal.flag.Flag.bool_(("update" : stdgo.GoString), false, ("update golden files" : stdgo.GoString));
var _fset : stdgo.Ref<stdgo._internal.go.token.Token.FileSet> = stdgo._internal.go.token.Token.newFileSet();
var _data : stdgo.Slice<stdgo._internal.go.printer.Printer.T_entry> = (new stdgo.Slice<stdgo._internal.go.printer.Printer.T_entry>(22, 22, ...[
(new stdgo._internal.go.printer.Printer.T_entry(("empty.input" : stdgo.GoString), ("empty.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("comments.input" : stdgo.GoString), ("comments.golden" : stdgo.GoString), (0u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("comments.input" : stdgo.GoString), ("comments.x" : stdgo.GoString), (1u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("comments2.input" : stdgo.GoString), ("comments2.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("alignment.input" : stdgo.GoString), ("alignment.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("linebreaks.input" : stdgo.GoString), ("linebreaks.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("expressions.input" : stdgo.GoString), ("expressions.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("expressions.input" : stdgo.GoString), ("expressions.raw" : stdgo.GoString), (10u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("declarations.input" : stdgo.GoString), ("declarations.golden" : stdgo.GoString), (0u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("statements.input" : stdgo.GoString), ("statements.golden" : stdgo.GoString), (0u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("slow.input" : stdgo.GoString), ("slow.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("complit.input" : stdgo.GoString), ("complit.x" : stdgo.GoString), (1u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("go2numbers.input" : stdgo.GoString), ("go2numbers.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("go2numbers.input" : stdgo.GoString), ("go2numbers.norm" : stdgo.GoString), (12u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("generics.input" : stdgo.GoString), ("generics.golden" : stdgo.GoString), (24u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("gobuild1.input" : stdgo.GoString), ("gobuild1.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("gobuild2.input" : stdgo.GoString), ("gobuild2.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("gobuild3.input" : stdgo.GoString), ("gobuild3.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("gobuild4.input" : stdgo.GoString), ("gobuild4.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("gobuild5.input" : stdgo.GoString), ("gobuild5.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("gobuild6.input" : stdgo.GoString), ("gobuild6.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry),
(new stdgo._internal.go.printer.Printer.T_entry(("gobuild7.input" : stdgo.GoString), ("gobuild7.golden" : stdgo.GoString), (8u32 : stdgo._internal.go.printer.Printer.T_checkMode)) : stdgo._internal.go.printer.Printer.T_entry)].concat([for (i in 22 ... (22 > 22 ? 22 : 22 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.printer.Printer.T_entry)])) : stdgo.Slice<stdgo._internal.go.printer.Printer.T_entry>);
var _decls : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("import \"fmt\"" : stdgo.GoString), ("const pi = 3.1415\nconst e = 2.71828\n\nvar x = pi" : stdgo.GoString), ("func sum(x, y int) int\t{ return x + y }" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _stmts : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("i := 0" : stdgo.GoString), ("select {}\nvar a, b = 1, 2\nreturn a + b" : stdgo.GoString), ("go f()\ndefer func() {}()" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
@:structInit @:private @:using(stdgo._internal.go.printer.Printer.T_sizeCounter_static_extension) class T_sizeCounter {
    public var _hasNewline : Bool = false;
    public var _size : stdgo.GoInt = 0;
    public function new(?_hasNewline:Bool, ?_size:stdgo.GoInt) {
        if (_hasNewline != null) this._hasNewline = _hasNewline;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sizeCounter(_hasNewline, _size);
    }
}
@:structInit @:private class T_commentInfo {
    public var _cindex : stdgo.GoInt = 0;
    public var _comment : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public var _commentOffset : stdgo.GoInt = 0;
    public var _commentNewline : Bool = false;
    public function new(?_cindex:stdgo.GoInt, ?_comment:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>, ?_commentOffset:stdgo.GoInt, ?_commentNewline:Bool) {
        if (_cindex != null) this._cindex = _cindex;
        if (_comment != null) this._comment = _comment;
        if (_commentOffset != null) this._commentOffset = _commentOffset;
        if (_commentNewline != null) this._commentNewline = _commentNewline;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_commentInfo(_cindex, _comment, _commentOffset, _commentNewline);
    }
}
@:structInit @:private @:using(stdgo._internal.go.printer.Printer.T_printer_static_extension) class T_printer {
    @:embedded
    public var config : stdgo._internal.go.printer.Printer.Config = ({} : stdgo._internal.go.printer.Printer.Config);
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token.FileSet>);
    public var _output : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _indent : stdgo.GoInt = 0;
    public var _level : stdgo.GoInt = 0;
    public var _mode : stdgo._internal.go.printer.Printer.T_pmode = ((0 : stdgo.GoInt) : stdgo._internal.go.printer.Printer.T_pmode);
    public var _endAlignment : Bool = false;
    public var _impliedSemi : Bool = false;
    public var _lastTok : stdgo._internal.go.token.Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
    public var _prevOpen : stdgo._internal.go.token.Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
    public var _wsbuf : stdgo.Slice<stdgo._internal.go.printer.Printer.T_whiteSpace> = (null : stdgo.Slice<stdgo._internal.go.printer.Printer.T_whiteSpace>);
    public var _goBuild : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _plusBuild : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _pos : stdgo._internal.go.token.Token.Position = ({} : stdgo._internal.go.token.Token.Position);
    public var _out : stdgo._internal.go.token.Token.Position = ({} : stdgo._internal.go.token.Token.Position);
    public var _last : stdgo._internal.go.token.Token.Position = ({} : stdgo._internal.go.token.Token.Position);
    public var _linePtr : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public var _sourcePosErr : stdgo.Error = (null : stdgo.Error);
    public var _comments : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
    public var _useNodeComments : Bool = false;
    @:embedded
    public var _commentInfo : stdgo._internal.go.printer.Printer.T_commentInfo = ({} : stdgo._internal.go.printer.Printer.T_commentInfo);
    public var _nodeSizes : stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt> = (null : stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt>);
    public var _cachedPos : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var _cachedLine : stdgo.GoInt = 0;
    public function new(?config:stdgo._internal.go.printer.Printer.Config, ?_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, ?_output:stdgo.Slice<stdgo.GoUInt8>, ?_indent:stdgo.GoInt, ?_level:stdgo.GoInt, ?_mode:stdgo._internal.go.printer.Printer.T_pmode, ?_endAlignment:Bool, ?_impliedSemi:Bool, ?_lastTok:stdgo._internal.go.token.Token.Token, ?_prevOpen:stdgo._internal.go.token.Token.Token, ?_wsbuf:stdgo.Slice<stdgo._internal.go.printer.Printer.T_whiteSpace>, ?_goBuild:stdgo.Slice<stdgo.GoInt>, ?_plusBuild:stdgo.Slice<stdgo.GoInt>, ?_pos:stdgo._internal.go.token.Token.Position, ?_out:stdgo._internal.go.token.Token.Position, ?_last:stdgo._internal.go.token.Token.Position, ?_linePtr:stdgo.Pointer<stdgo.GoInt>, ?_sourcePosErr:stdgo.Error, ?_comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>, ?_useNodeComments:Bool, ?_commentInfo:stdgo._internal.go.printer.Printer.T_commentInfo, ?_nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt>, ?_cachedPos:stdgo._internal.go.token.Token.Pos, ?_cachedLine:stdgo.GoInt) {
        if (config != null) this.config = config;
        if (_fset != null) this._fset = _fset;
        if (_output != null) this._output = _output;
        if (_indent != null) this._indent = _indent;
        if (_level != null) this._level = _level;
        if (_mode != null) this._mode = _mode;
        if (_endAlignment != null) this._endAlignment = _endAlignment;
        if (_impliedSemi != null) this._impliedSemi = _impliedSemi;
        if (_lastTok != null) this._lastTok = _lastTok;
        if (_prevOpen != null) this._prevOpen = _prevOpen;
        if (_wsbuf != null) this._wsbuf = _wsbuf;
        if (_goBuild != null) this._goBuild = _goBuild;
        if (_plusBuild != null) this._plusBuild = _plusBuild;
        if (_pos != null) this._pos = _pos;
        if (_out != null) this._out = _out;
        if (_last != null) this._last = _last;
        if (_linePtr != null) this._linePtr = _linePtr;
        if (_sourcePosErr != null) this._sourcePosErr = _sourcePosErr;
        if (_comments != null) this._comments = _comments;
        if (_useNodeComments != null) this._useNodeComments = _useNodeComments;
        if (_commentInfo != null) this._commentInfo = _commentInfo;
        if (_nodeSizes != null) this._nodeSizes = _nodeSizes;
        if (_cachedPos != null) this._cachedPos = _cachedPos;
        if (_cachedLine != null) this._cachedLine = _cachedLine;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function fprint(_output:stdgo._internal.io.Io.Writer, _fset_:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface):stdgo.Error return config.fprint(_output, _fset_, _node);
    @:embedded
    public function _fprint(_output:stdgo._internal.io.Io.Writer, _fset_:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface, _nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt>):stdgo.Error return config._fprint(_output, _fset_, _node, _nodeSizes);
    public function __copy__() {
        return new T_printer(
config,
_fset,
_output,
_indent,
_level,
_mode,
_endAlignment,
_impliedSemi,
_lastTok,
_prevOpen,
_wsbuf,
_goBuild,
_plusBuild,
_pos,
_out,
_last,
_linePtr,
_sourcePosErr,
_comments,
_useNodeComments,
_commentInfo,
_nodeSizes,
_cachedPos,
_cachedLine);
    }
}
@:structInit @:private @:using(stdgo._internal.go.printer.Printer.T_trimmer_static_extension) class T_trimmer {
    public var _output : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _state : stdgo.GoInt = 0;
    public var _space : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_output:stdgo._internal.io.Io.Writer, ?_state:stdgo.GoInt, ?_space:stdgo.Slice<stdgo.GoUInt8>) {
        if (_output != null) this._output = _output;
        if (_state != null) this._state = _state;
        if (_space != null) this._space = _space;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_trimmer(_output, _state, _space);
    }
}
@:structInit @:using(stdgo._internal.go.printer.Printer.Config_static_extension) class Config {
    public var mode : stdgo._internal.go.printer.Printer.Mode = ((0 : stdgo.GoUInt) : stdgo._internal.go.printer.Printer.Mode);
    public var tabwidth : stdgo.GoInt = 0;
    public var indent : stdgo.GoInt = 0;
    public function new(?mode:stdgo._internal.go.printer.Printer.Mode, ?tabwidth:stdgo.GoInt, ?indent:stdgo.GoInt) {
        if (mode != null) this.mode = mode;
        if (tabwidth != null) this.tabwidth = tabwidth;
        if (indent != null) this.indent = indent;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Config(mode, tabwidth, indent);
    }
}
@:structInit class CommentedNode {
    public var node : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var comments : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
    public function new(?node:stdgo.AnyInterface, ?comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>) {
        if (node != null) this.node = node;
        if (comments != null) this.comments = comments;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CommentedNode(node, comments);
    }
}
@:structInit @:private class T_entry {
    public var _source : stdgo.GoString = "";
    public var _golden : stdgo.GoString = "";
    public var _mode : stdgo._internal.go.printer.Printer.T_checkMode = ((0 : stdgo.GoUInt) : stdgo._internal.go.printer.Printer.T_checkMode);
    public function new(?_source:stdgo.GoString, ?_golden:stdgo.GoString, ?_mode:stdgo._internal.go.printer.Printer.T_checkMode) {
        if (_source != null) this._source = _source;
        if (_golden != null) this._golden = _golden;
        if (_mode != null) this._mode = _mode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_entry(_source, _golden, _mode);
    }
}
@:structInit @:private @:using(stdgo._internal.go.printer.Printer.T_limitWriter_static_extension) class T_limitWriter {
    public var _remaining : stdgo.GoInt = 0;
    public var _errCount : stdgo.GoInt = 0;
    public function new(?_remaining:stdgo.GoInt, ?_errCount:stdgo.GoInt) {
        if (_remaining != null) this._remaining = _remaining;
        if (_errCount != null) this._errCount = _errCount;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_limitWriter(_remaining, _errCount);
    }
}
@:named typedef T_exprListMode = stdgo.GoUInt;
@:named typedef T_paramMode = stdgo.GoInt;
@:named typedef T_whiteSpace = stdgo.GoUInt8;
@:named typedef T_pmode = stdgo.GoInt;
@:named typedef Mode = stdgo.GoUInt;
@:named typedef T_checkMode = stdgo.GoUInt;
@:named @:using(stdgo._internal.go.printer.Printer.T_visitor_static_extension) typedef T_visitor = stdgo.Chan<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>;
function _formatDocComment(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>> {
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString), _text:stdgo.GoString = __1, _kind:stdgo.GoString = __0;
        var _directives:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>);
        if (((_list.length == (1 : stdgo.GoInt)) && stdgo._internal.strings.Strings.hasPrefix(_list[(0 : stdgo.GoInt)].text?.__copy__(), ("/*" : stdgo.GoString)) : Bool)) {
            _kind = ("/*" : stdgo.GoString);
            _text = _list[(0 : stdgo.GoInt)].text?.__copy__();
            if ((!stdgo._internal.strings.Strings.contains(_text?.__copy__(), ("\n" : stdgo.GoString)) || _allStars(_text?.__copy__()) : Bool)) {
                return _list;
            };
            _text = (_text.__slice__((2 : stdgo.GoInt), ((_text.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else if (stdgo._internal.strings.Strings.hasPrefix(_list[(0 : stdgo.GoInt)].text?.__copy__(), ("//" : stdgo.GoString))) {
            _kind = ("//" : stdgo.GoString);
            var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
            for (__0 => _c in _list) {
                var __tmp__ = stdgo._internal.strings.Strings.cutPrefix(_c.text?.__copy__(), ("//" : stdgo.GoString)), _after:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if (!_found) {
                    return _list;
                };
                if (_isDirective(_after?.__copy__())) {
                    _directives = (_directives.__append__(_c));
                    continue;
                };
                _b.writeString(stdgo._internal.strings.Strings.trimPrefix(_after?.__copy__(), (" " : stdgo.GoString))?.__copy__());
                _b.writeString(("\n" : stdgo.GoString));
            };
            _text = (_b.string() : stdgo.GoString)?.__copy__();
        } else {
            return _list;
        };
        if (_text == (stdgo.Go.str())) {
            return _list;
        };
        var _p:stdgo._internal.go.doc.comment.Comment.Parser = ({} : stdgo._internal.go.doc.comment.Comment.Parser);
        var _d = _p.parse(_text?.__copy__());
        var _pr:stdgo._internal.go.doc.comment.Comment.Printer = ({} : stdgo._internal.go.doc.comment.Comment.Printer);
        _text = (_pr.comment(_d) : stdgo.GoString)?.__copy__();
        var _slash:stdgo._internal.go.token.Token.Pos = _list[(0 : stdgo.GoInt)].slash;
        if (_kind == (("/*" : stdgo.GoString))) {
            var _c = (stdgo.Go.setRef(({ slash : _slash, text : ((("/*\n" : stdgo.GoString) + _text?.__copy__() : stdgo.GoString) + ("*/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.ast.Ast.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>);
            return (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>(1, 1, ...[_c]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>);
        };
        var _out:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>);
        while (_text != (stdgo.Go.str())) {
            var _line:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.strings.Strings.cut(_text?.__copy__(), ("\n" : stdgo.GoString));
                _line = __tmp__._0?.__copy__();
                _text = __tmp__._1?.__copy__();
            };
            if (_line == (stdgo.Go.str())) {
                _line = ("//" : stdgo.GoString);
            } else if (stdgo._internal.strings.Strings.hasPrefix(_line?.__copy__(), ("\t" : stdgo.GoString))) {
                _line = (("//" : stdgo.GoString) + _line?.__copy__() : stdgo.GoString)?.__copy__();
            } else {
                _line = (("// " : stdgo.GoString) + _line?.__copy__() : stdgo.GoString)?.__copy__();
            };
            _out = (_out.__append__((stdgo.Go.setRef(({ slash : _slash, text : _line?.__copy__() } : stdgo._internal.go.ast.Ast.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>)));
        };
        if (((_directives.length) > (0 : stdgo.GoInt) : Bool)) {
            _out = (_out.__append__((stdgo.Go.setRef(({ slash : _slash, text : ("//" : stdgo.GoString) } : stdgo._internal.go.ast.Ast.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>)));
            for (__1 => _c in _directives) {
                _out = (_out.__append__((stdgo.Go.setRef(({ slash : _slash, text : _c.text?.__copy__() } : stdgo._internal.go.ast.Ast.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>)));
            };
        };
        return _out;
    }
function _isDirective(_c:stdgo.GoString):Bool {
        if (((stdgo._internal.strings.Strings.hasPrefix(_c?.__copy__(), ("line " : stdgo.GoString)) || stdgo._internal.strings.Strings.hasPrefix(_c?.__copy__(), ("extern " : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings.hasPrefix(_c?.__copy__(), ("export " : stdgo.GoString)) : Bool)) {
            return true;
        };
        var _colon:stdgo.GoInt = stdgo._internal.strings.Strings.index(_c?.__copy__(), (":" : stdgo.GoString));
        if (((_colon <= (0 : stdgo.GoInt) : Bool) || ((_colon + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_c.length) : Bool) : Bool)) {
            return false;
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (_colon + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                if (_i == (_colon)) {
                    continue;
                };
                var _b:stdgo.GoUInt8 = _c[(_i : stdgo.GoInt)];
                if (!(((((97 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool))) {
                    return false;
                };
            });
        };
        return true;
    }
function _allStars(_text:stdgo.GoString):Bool {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_text.length) : Bool), _i++, {
                if (_text[(_i : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
                    var _j:stdgo.GoInt = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    while (((_j < (_text.length) : Bool) && (((_text[(_j : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_text[(_j : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                        _j++;
                    };
                    if (((_j < (_text.length) : Bool) && (_text[(_j : stdgo.GoInt)] != (42 : stdgo.GoUInt8)) : Bool)) {
                        return false;
                    };
                };
            });
        };
        return true;
    }
function _appendLines(_x:stdgo.Slice<stdgo.GoByte>, _y:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        if (((((_y.length) > (0 : stdgo.GoInt) : Bool) && _isNL(_y[(0 : stdgo.GoInt)]) : Bool) && (((_x.length == (0 : stdgo.GoInt)) || ((((_x.length) >= (2 : stdgo.GoInt) : Bool) && _isNL(_x[((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && _isNL(_x[((_x.length) - (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) : Bool)) {
            _y = (_y.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_x.__append__(...(_y : Array<stdgo.GoUInt8>)));
    }
function _isNL(_b:stdgo.GoByte):Bool {
        return ((_b == (10 : stdgo.GoUInt8)) || (_b == (12 : stdgo.GoUInt8)) : Bool);
    }
function _combinesWithName(_x:stdgo._internal.go.ast.Ast.Expr):Bool {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__.__underlying__().value;
                return !_isTypeElem(_x.x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__().value;
                return (_combinesWithName(_x.x) && !_isTypeElem(_x.y) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                throw stdgo.Go.toInterface(("unexpected parenthesized expression" : stdgo.GoString));
            };
        };
        return false;
    }
function _isTypeElem(_x:stdgo._internal.go.ast.Ast.Expr):Bool {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.StructType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.MapType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType>))) {
                var _x:stdgo._internal.go.ast.Ast.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast.Expr) : cast __type__;
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__.__underlying__().value;
                return _x.op == ((88 : stdgo._internal.go.token.Token.Token));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__().value;
                return (_isTypeElem(_x.x) || _isTypeElem(_x.y) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                return _isTypeElem(_x.x);
            };
        };
        return false;
    }
function _identListSize(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>, _maxSize:stdgo.GoInt):stdgo.GoInt {
        var _size:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_i => _x in _list) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _size = (_size + (((", " : stdgo.GoString).length)) : stdgo.GoInt);
            };
            _size = (_size + (stdgo._internal.unicode.utf8.Utf8.runeCountInString(_x.name?.__copy__())) : stdgo.GoInt);
            if ((_size >= _maxSize : Bool)) {
                break;
            };
        };
        return _size;
    }
function _walkBinary(_e:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>):{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.GoInt; } {
        var _has4:Bool = false, _has5:Bool = false, _maxProblem:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            final __value__ = _e.op.precedence();
            if (__value__ == ((4 : stdgo.GoInt))) {
                _has4 = true;
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                _has5 = true;
            };
        };
        {
            final __type__ = _e.x;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>))) {
                        var _l:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__().value;
                        if ((_l.op.precedence() < _e.op.precedence() : Bool)) {
                            break;
                        };
                        var __tmp__ = _walkBinary(_l), _h4:Bool = __tmp__._0, _h5:Bool = __tmp__._1, _mp:stdgo.GoInt = __tmp__._2;
                        _has4 = (_has4 || _h4 : Bool);
                        _has5 = (_has5 || _h5 : Bool);
                        if ((_maxProblem < _mp : Bool)) {
                            _maxProblem = _mp;
                        };
                    };
                    break;
                };
            };
        };
        {
            final __type__ = _e.y;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>))) {
                        var _r:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__().value;
                        if ((_r.op.precedence() <= _e.op.precedence() : Bool)) {
                            break;
                        };
                        var __tmp__ = _walkBinary(_r), _h4:Bool = __tmp__._0, _h5:Bool = __tmp__._1, _mp:stdgo.GoInt = __tmp__._2;
                        _has4 = (_has4 || _h4 : Bool);
                        _has5 = (_has5 || _h5 : Bool);
                        if ((_maxProblem < _mp : Bool)) {
                            _maxProblem = _mp;
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>))) {
                        var _r:stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__.__underlying__().value;
                        if (_e.op == ((15 : stdgo._internal.go.token.Token.Token))) {
                            _maxProblem = (5 : stdgo.GoInt);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>))) {
                        var _r:stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__.__underlying__().value;
                        {
                            final __value__ = ((_e.op.string() : stdgo.GoString) + (_r.op.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            if (__value__ == (("/*" : stdgo.GoString)) || __value__ == (("&&" : stdgo.GoString)) || __value__ == (("&^" : stdgo.GoString))) {
                                _maxProblem = (5 : stdgo.GoInt);
                            } else if (__value__ == (("++" : stdgo.GoString)) || __value__ == (("--" : stdgo.GoString))) {
                                if ((_maxProblem < (4 : stdgo.GoInt) : Bool)) {
                                    _maxProblem = (4 : stdgo.GoInt);
                                };
                            };
                        };
                    };
                    break;
                };
            };
        };
        return { _0 : _has4, _1 : _has5, _2 : _maxProblem };
    }
function _cutoff(_e:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>, _depth:stdgo.GoInt):stdgo.GoInt {
        var __tmp__ = _walkBinary(_e), _has4:Bool = __tmp__._0, _has5:Bool = __tmp__._1, _maxProblem:stdgo.GoInt = __tmp__._2;
        if ((_maxProblem > (0 : stdgo.GoInt) : Bool)) {
            return (_maxProblem + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if ((_has4 && _has5 : Bool)) {
            if (_depth == ((1 : stdgo.GoInt))) {
                return (5 : stdgo.GoInt);
            };
            return (4 : stdgo.GoInt);
        };
        if (_depth == ((1 : stdgo.GoInt))) {
            return (6 : stdgo.GoInt);
        };
        return (4 : stdgo.GoInt);
    }
function _diffPrec(_expr:stdgo._internal.go.ast.Ast.Expr, _prec:stdgo.GoInt):stdgo.GoInt {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>), _1 : false };
        }, _x = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok || (_prec != _x.op.precedence()) : Bool)) {
            return (1 : stdgo.GoInt);
        };
        return (0 : stdgo.GoInt);
    }
function _reduceDepth(_depth:stdgo.GoInt):stdgo.GoInt {
        _depth--;
        if ((_depth < (1 : stdgo.GoInt) : Bool)) {
            _depth = (1 : stdgo.GoInt);
        };
        return _depth;
    }
function _isBinary(_expr:stdgo._internal.go.ast.Ast.Expr):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>), _1 : false };
        }, __0 = __tmp__._0, _ok = __tmp__._1;
        return _ok;
    }
function _normalizedNumber(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>):stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit> {
        if (((_lit.kind != ((5 : stdgo._internal.go.token.Token.Token)) && _lit.kind != ((6 : stdgo._internal.go.token.Token.Token)) : Bool) && (_lit.kind != (7 : stdgo._internal.go.token.Token.Token)) : Bool)) {
            return _lit;
        };
        if (((_lit.value.length) < (2 : stdgo.GoInt) : Bool)) {
            return _lit;
        };
        var _x:stdgo.GoString = _lit.value?.__copy__();
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (_x.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString);
                    if (__value__ == (("0X" : stdgo.GoString))) {
                        _x = (("0x" : stdgo.GoString) + (_x.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            var _i:stdgo.GoInt = stdgo._internal.strings.Strings.lastIndexByte(_x?.__copy__(), (80 : stdgo.GoUInt8));
                            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                                _x = (((_x.__slice__(0, _i) : stdgo.GoString) + ("p" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_x.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                            };
                        };
                        break;
                    } else if (__value__ == (("0x" : stdgo.GoString))) {
                        var _i:stdgo.GoInt = stdgo._internal.strings.Strings.lastIndexByte(_x?.__copy__(), (80 : stdgo.GoUInt8));
                        if (_i == ((-1 : stdgo.GoInt))) {
                            return _lit;
                        };
                        _x = (((_x.__slice__(0, _i) : stdgo.GoString) + ("p" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_x.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == (("0O" : stdgo.GoString))) {
                        _x = (("0o" : stdgo.GoString) + (_x.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == (("0o" : stdgo.GoString))) {
                        return _lit;
                        break;
                    } else if (__value__ == (("0B" : stdgo.GoString))) {
                        _x = (("0b" : stdgo.GoString) + (_x.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == (("0b" : stdgo.GoString))) {
                        return _lit;
                        break;
                    } else {
                        {
                            var _i:stdgo.GoInt = stdgo._internal.strings.Strings.lastIndexByte(_x?.__copy__(), (69 : stdgo.GoUInt8));
                            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                                _x = (((_x.__slice__(0, _i) : stdgo.GoString) + ("e" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_x.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                break;
                            };
                        };
                        if (((_x[((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (105 : stdgo.GoUInt8)) && !stdgo._internal.strings.Strings.containsAny(_x?.__copy__(), (".e" : stdgo.GoString)) : Bool)) {
                            _x = stdgo._internal.strings.Strings.trimLeft(_x?.__copy__(), ("0_" : stdgo.GoString))?.__copy__();
                            if (_x == (("i" : stdgo.GoString))) {
                                _x = ("0i" : stdgo.GoString);
                            };
                        };
                    };
                };
                break;
            };
        };
        return (stdgo.Go.setRef(({ valuePos : _lit.valuePos, kind : _lit.kind, value : _x?.__copy__() } : stdgo._internal.go.ast.Ast.BasicLit)) : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>);
    }
function _isTypeName(_x:stdgo._internal.go.ast.Ast.Expr):Bool {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                return _isTypeName(_t.x);
            };
        };
        return false;
    }
function _stripParens(_x:stdgo._internal.go.ast.Ast.Expr):stdgo._internal.go.ast.Ast.Expr {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>), _1 : false };
            }, _px = __tmp__._0, _strip = __tmp__._1;
            if (_strip) {
                stdgo._internal.go.ast.Ast.inspect(_px.x, function(_node:stdgo._internal.go.ast.Ast.Node):Bool {
                    {
                        final __type__ = _node;
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>))) {
                            var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                            return false;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>))) {
                            var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__.__underlying__().value;
                            if (_isTypeName(_x.type)) {
                                _strip = false;
                            };
                            return false;
                        };
                    };
                    return true;
                });
                if (_strip) {
                    return _stripParens(_px.x);
                };
            };
        };
        return _x;
    }
function _stripParensAlways(_x:stdgo._internal.go.ast.Ast.Expr):stdgo._internal.go.ast.Ast.Expr {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _stripParensAlways(_x.x);
            };
        };
        return _x;
    }
function _keepTypeColumn(_specs:stdgo.Slice<stdgo._internal.go.ast.Ast.Spec>):stdgo.Slice<Bool> {
        var _m = (new stdgo.Slice<Bool>((_specs.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        var _populate:(stdgo.GoInt, stdgo.GoInt, Bool) -> Void = function(_i:stdgo.GoInt, _j:stdgo.GoInt, _keepType:Bool):Void {
            if (_keepType) {
                stdgo.Go.cfor((_i < _j : Bool), _i++, {
                    _m[(_i : stdgo.GoInt)] = true;
                });
            };
        };
        var _i0:stdgo.GoInt = (-1 : stdgo.GoInt);
        var _keepType:Bool = false;
        for (_i => _s in _specs) {
            var _t = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>);
            if (_t.values != null) {
                if ((_i0 < (0 : stdgo.GoInt) : Bool)) {
                    _i0 = _i;
                    _keepType = false;
                };
            } else {
                if ((_i0 >= (0 : stdgo.GoInt) : Bool)) {
                    _populate(_i0, _i, _keepType);
                    _i0 = (-1 : stdgo.GoInt);
                };
            };
            if (_t.type != null) {
                _keepType = true;
            };
        };
        if ((_i0 >= (0 : stdgo.GoInt) : Bool)) {
            _populate(_i0, (_specs.length), _keepType);
        };
        return _m;
    }
function _sanitizeImportPath(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>):stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit> {
        if (_lit.kind != ((9 : stdgo._internal.go.token.Token.Token))) {
            return _lit;
        };
        var __tmp__ = stdgo._internal.strconv.Strconv.unquote(_lit.value?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _lit;
        };
        if (_s == (stdgo.Go.str())) {
            return _lit;
        };
        {};
        for (__0 => _r in _s) {
            if (((!stdgo._internal.unicode.Unicode.isGraphic(_r) || stdgo._internal.unicode.Unicode.isSpace(_r) : Bool) || stdgo._internal.strings.Strings.containsRune(("!\"#$%&\'()*,:;<=>?[\\]^{|}`�" : stdgo.GoString), _r) : Bool)) {
                return _lit;
            };
        };
        _s = stdgo._internal.strconv.Strconv.quote(_s?.__copy__())?.__copy__();
        if (_s == (_lit.value)) {
            return _lit;
        };
        return (stdgo.Go.setRef(({ valuePos : _lit.valuePos, kind : (9 : stdgo._internal.go.token.Token.Token), value : _s?.__copy__() } : stdgo._internal.go.ast.Ast.BasicLit)) : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>);
    }
function _declToken(_decl:stdgo._internal.go.ast.Ast.Decl):stdgo._internal.go.token.Token.Token {
        var _tok:stdgo._internal.go.token.Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
        _tok = (0 : stdgo._internal.go.token.Token.Token);
        {
            final __type__ = _decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__().value;
                _tok = _d.tok;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__().value;
                _tok = (71 : stdgo._internal.go.token.Token.Token);
            };
        };
        return _tok;
    }
function _testprint(_out:stdgo._internal.io.Io.Writer, _node:stdgo._internal.go.ast.Ast.Node):Void {
        {
            var _err:stdgo.Error = (stdgo.Go.setRef((new stdgo._internal.go.printer.Printer.Config((1073741830u32 : stdgo._internal.go.printer.Printer.Mode), (8 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.go.printer.Printer.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer.Config>).fprint(_out, _fset, stdgo.Go.toInterface(_node));
            if (_err != null) {
                stdgo._internal.log.Log.fatalf(("print error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
function _initialize():Void {
        {};
        var __tmp__ = stdgo._internal.os.Os.readFile(("testdata/parser.go" : stdgo.GoString)), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatalf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, ("testdata/parser.go" : stdgo.GoString), stdgo.Go.toInterface(_src), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatalf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _testprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.asInterface(_file));
        if (!stdgo._internal.bytes.Bytes.equal(_buf.bytes(), _src)) {
            stdgo._internal.log.Log.fatalf(("print error: %s not idempotent" : stdgo.GoString), stdgo.Go.toInterface(("testdata/parser.go" : stdgo.GoString)));
        };
        _fileNode = _file;
        _fileSize = (_src.length : stdgo.GoInt64);
        for (__0 => _decl in _file.decls) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>), _1 : false };
                }, _decl = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && (_decl.tok == (85 : stdgo._internal.go.token.Token.Token)) : Bool)) {
                    _declNode = stdgo.Go.asInterface(_decl);
                    _declSize = ((_fset.position(_decl.end()).offset - _fset.position(_decl.pos()).offset : stdgo.GoInt) : stdgo.GoInt64);
                    break;
                };
            };
        };
    }
function benchmarkPrintFile(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        if (_fileNode == null || (_fileNode : Dynamic).__nil__) {
            _initialize();
        };
        _b.reportAllocs();
        _b.setBytes(_fileSize);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _testprint(stdgo._internal.io.Io.discard, stdgo.Go.asInterface(_fileNode));
            });
        };
    }
function benchmarkPrintDecl(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        if (_declNode == null) {
            _initialize();
        };
        _b.reportAllocs();
        _b.setBytes(_declSize);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _testprint(stdgo._internal.io.Io.discard, _declNode);
            });
        };
    }
function _isBlank(_s:stdgo.GoString):Bool {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                if ((_s[(_i : stdgo.GoInt)] > (32 : stdgo.GoUInt8) : Bool)) {
                    return false;
                };
            });
        };
        return true;
    }
function _commonPrefix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoString {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while (((((_i < (_a.length) : Bool) && (_i < (_b.length) : Bool) : Bool) && _a[(_i : stdgo.GoInt)] == (_b[(_i : stdgo.GoInt)]) : Bool) && (((_a[(_i : stdgo.GoInt)] <= (32 : stdgo.GoUInt8) : Bool) || (_a[(_i : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _i++;
        };
        return (_a.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
    }
function _trimRight(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings.trimRightFunc(_s?.__copy__(), stdgo._internal.unicode.Unicode.isSpace)?.__copy__();
    }
function _stripCommonPrefix(_lines:stdgo.Slice<stdgo.GoString>):Void {
        if (((_lines.length) <= (1 : stdgo.GoInt) : Bool)) {
            return;
        };
        var _prefix:stdgo.GoString = stdgo.Go.str()?.__copy__();
        var _prefixSet:Bool = false;
        if (((_lines.length) > (2 : stdgo.GoInt) : Bool)) {
            for (_i => _line in (_lines.__slice__((1 : stdgo.GoInt), ((_lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                if (_isBlank(_line?.__copy__())) {
                    _lines[((1 : stdgo.GoInt) + _i : stdgo.GoInt)] = stdgo.Go.str()?.__copy__();
                } else {
                    if (!_prefixSet) {
                        _prefix = _line?.__copy__();
                        _prefixSet = true;
                    };
                    _prefix = _commonPrefix(_prefix?.__copy__(), _line?.__copy__())?.__copy__();
                };
            };
        };
        if (!_prefixSet) {
            var _line:stdgo.GoString = _lines[((_lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
            _prefix = _commonPrefix(_line?.__copy__(), _line?.__copy__())?.__copy__();
        };
        var _lineOfStars:Bool = false;
        {
            var __tmp__ = stdgo._internal.strings.Strings.cut(_prefix?.__copy__(), ("*" : stdgo.GoString)), _p:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                _prefix = stdgo._internal.strings.Strings.trimSuffix(_p?.__copy__(), (" " : stdgo.GoString))?.__copy__();
                _lineOfStars = true;
            } else {
                var _first:stdgo.GoString = _lines[(0 : stdgo.GoInt)]?.__copy__();
                if (_isBlank((_first.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())) {
                    var _i:stdgo.GoInt = (_prefix.length);
                    {
                        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((((_n < (3 : stdgo.GoInt) : Bool) && (_i > (0 : stdgo.GoInt) : Bool) : Bool) && (_prefix[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool), _n++, {
                            _i--;
                        });
                    };
                    if (((_i == ((_prefix.length)) && (_i > (0 : stdgo.GoInt) : Bool) : Bool) && (_prefix[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) {
                        _i--;
                    };
                    _prefix = (_prefix.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
                } else {
                    var _suffix = (new stdgo.Slice<stdgo.GoUInt8>((_first.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    var _n:stdgo.GoInt = (2 : stdgo.GoInt);
                    while (((_n < (_first.length) : Bool) && (_first[(_n : stdgo.GoInt)] <= (32 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _suffix[(_n : stdgo.GoInt)] = _first[(_n : stdgo.GoInt)];
                        _n++;
                    };
                    if (((_n > (2 : stdgo.GoInt) : Bool) && (_suffix[(2 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) {
                        _suffix = (_suffix.__slice__((2 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        {
                            final __tmp__0 = (32 : stdgo.GoUInt8);
                            final __tmp__1 = (32 : stdgo.GoUInt8);
                            final __tmp__2 = _suffix;
                            final __tmp__3 = (0 : stdgo.GoInt);
                            final __tmp__4 = _suffix;
                            final __tmp__5 = (1 : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        _suffix = (_suffix.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    _prefix = stdgo._internal.strings.Strings.trimSuffix(_prefix?.__copy__(), (_suffix : stdgo.GoString)?.__copy__())?.__copy__();
                };
            };
        };
        var _last:stdgo.GoString = _lines[((_lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
        var _closing:stdgo.GoString = ("*/" : stdgo.GoString);
        var __tmp__ = stdgo._internal.strings.Strings.cut(_last?.__copy__(), _closing?.__copy__()), _before:stdgo.GoString = __tmp__._0, __1:stdgo.GoString = __tmp__._1, __2:Bool = __tmp__._2;
        if (_isBlank(_before?.__copy__())) {
            if (_lineOfStars) {
                _closing = (" */" : stdgo.GoString);
            };
            _lines[((_lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_prefix + _closing?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            _prefix = _commonPrefix(_prefix?.__copy__(), _last?.__copy__())?.__copy__();
        };
        for (_i => _line in _lines) {
            if (((_i > (0 : stdgo.GoInt) : Bool) && (_line != stdgo.Go.str()) : Bool)) {
                _lines[(_i : stdgo.GoInt)] = (_line.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__();
            };
        };
    }
function _nlimit(_n:stdgo.GoInt):stdgo.GoInt {
        if ((_n > (2 : stdgo.GoInt) : Bool)) {
            _n = (2 : stdgo.GoInt);
        };
        return _n;
    }
function _mayCombine(_prev:stdgo._internal.go.token.Token.Token, _next:stdgo.GoByte):Bool {
        var _b:Bool = false;
        {
            final __value__ = _prev;
            if (__value__ == ((5 : stdgo._internal.go.token.Token.Token))) {
                _b = _next == ((46 : stdgo.GoUInt8));
            } else if (__value__ == ((12 : stdgo._internal.go.token.Token.Token))) {
                _b = _next == ((43 : stdgo.GoUInt8));
            } else if (__value__ == ((13 : stdgo._internal.go.token.Token.Token))) {
                _b = _next == ((45 : stdgo.GoUInt8));
            } else if (__value__ == ((15 : stdgo._internal.go.token.Token.Token))) {
                _b = _next == ((42 : stdgo.GoUInt8));
            } else if (__value__ == ((40 : stdgo._internal.go.token.Token.Token))) {
                _b = ((_next == (45 : stdgo.GoUInt8)) || (_next == (60 : stdgo.GoUInt8)) : Bool);
            } else if (__value__ == ((17 : stdgo._internal.go.token.Token.Token))) {
                _b = ((_next == (38 : stdgo.GoUInt8)) || (_next == (94 : stdgo.GoUInt8)) : Bool);
            };
        };
        return _b;
    }
function _getDoc(_n:stdgo._internal.go.ast.Ast.Node):stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> {
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__().value;
                return _n.doc;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.File>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__.__underlying__().value;
                return _n.doc;
            };
        };
        return null;
    }
function _getLastComment(_n:stdgo._internal.go.ast.Ast.Node):stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> {
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__.__underlying__().value;
                return _n.comment;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                return _n.comment;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__().value;
                return _n.comment;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__().value;
                return _n.comment;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__().value;
                if (((_n.specs.length) > (0 : stdgo.GoInt) : Bool)) {
                    return _getLastComment(_n.specs[((_n.specs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.File>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__.__underlying__().value;
                if (((_n.comments.length) > (0 : stdgo.GoInt) : Bool)) {
                    return _n.comments[((_n.comments.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                };
            };
        };
        return null;
    }
function _newPrinter(_cfg:stdgo.Ref<Config>, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt>):stdgo.Ref<T_printer> {
        var _p = (stdgo.Go.typeAssert((_printerPool.get() : stdgo.Ref<T_printer>)) : stdgo.Ref<T_printer>);
        {
            var __tmp__ = ({ config : (_cfg : stdgo._internal.go.printer.Printer.Config)?.__copy__(), _fset : _fset, _pos : ({ line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.go.token.Token.Position), _out : ({ line : (1 : stdgo.GoInt), column : (1 : stdgo.GoInt) } : stdgo._internal.go.token.Token.Position), _wsbuf : (_p._wsbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.printer.Printer.T_whiteSpace>), _nodeSizes : _nodeSizes, _cachedPos : (-1 : stdgo._internal.go.token.Token.Pos), _output : (_p._output.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.go.printer.Printer.T_printer);
            _p.config = __tmp__.config;
            _p._fset = __tmp__._fset;
            _p._output = __tmp__._output;
            _p._indent = __tmp__._indent;
            _p._level = __tmp__._level;
            _p._mode = __tmp__._mode;
            _p._endAlignment = __tmp__._endAlignment;
            _p._impliedSemi = __tmp__._impliedSemi;
            _p._lastTok = __tmp__._lastTok;
            _p._prevOpen = __tmp__._prevOpen;
            _p._wsbuf = __tmp__._wsbuf;
            _p._goBuild = __tmp__._goBuild;
            _p._plusBuild = __tmp__._plusBuild;
            _p._pos = __tmp__._pos;
            _p._out = __tmp__._out;
            _p._last = __tmp__._last;
            _p._linePtr = __tmp__._linePtr;
            _p._sourcePosErr = __tmp__._sourcePosErr;
            _p._comments = __tmp__._comments;
            _p._useNodeComments = __tmp__._useNodeComments;
            _p._commentInfo = __tmp__._commentInfo;
            _p._nodeSizes = __tmp__._nodeSizes;
            _p._cachedPos = __tmp__._cachedPos;
            _p._cachedLine = __tmp__._cachedLine;
        };
        return _p;
    }
function fprint(_output:stdgo._internal.io.Io.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface):stdgo.Error {
        return (stdgo.Go.setRef(({ tabwidth : (8 : stdgo.GoInt) } : stdgo._internal.go.printer.Printer.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer.Config>).fprint(_output, _fset, _node);
    }
function _format(_src:stdgo.Slice<stdgo.GoByte>, _mode:T_checkMode):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(_src), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt.errorf(("parse: %s\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_src)) };
        };
        if ((_mode & (1u32 : stdgo._internal.go.printer.Printer.T_checkMode) : stdgo._internal.go.printer.Printer.T_checkMode) != ((0u32 : stdgo._internal.go.printer.Printer.T_checkMode))) {
            stdgo._internal.go.ast.Ast.fileExports(_f);
            _f.comments = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
        };
        var _cfg:stdgo._internal.go.printer.Printer.Config = ({ tabwidth : (8 : stdgo.GoInt) } : stdgo._internal.go.printer.Printer.Config);
        if ((_mode & (2u32 : stdgo._internal.go.printer.Printer.T_checkMode) : stdgo._internal.go.printer.Printer.T_checkMode) != ((0u32 : stdgo._internal.go.printer.Printer.T_checkMode))) {
            _cfg.mode = (_cfg.mode | ((1u32 : stdgo._internal.go.printer.Printer.Mode)) : stdgo._internal.go.printer.Printer.Mode);
        };
        if ((_mode & (4u32 : stdgo._internal.go.printer.Printer.T_checkMode) : stdgo._internal.go.printer.Printer.T_checkMode) != ((0u32 : stdgo._internal.go.printer.Printer.T_checkMode))) {
            _cfg.mode = (_cfg.mode | ((1073741824u32 : stdgo._internal.go.printer.Printer.Mode)) : stdgo._internal.go.printer.Printer.Mode);
        };
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _err:stdgo.Error = _cfg.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt.errorf(("print: %s" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        var _res = _buf.bytes();
        {
            var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(_res), (4u32 : stdgo._internal.go.parser.Parser.Mode)), __0:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt.errorf(("re-parse: %s\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_buf.bytes())) };
            };
        };
        return { _0 : _res, _1 : (null : stdgo.Error) };
    }
function _lineAt(_text:stdgo.Slice<stdgo.GoByte>, _offs:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        var _i:stdgo.GoInt = _offs;
        while (((_i < (_text.length) : Bool) && (_text[(_i : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
            _i++;
        };
        return (_text.__slice__(_offs, _i) : stdgo.Slice<stdgo.GoUInt8>);
    }
function _checkEqual(_aname:stdgo.GoString, _bname:stdgo.GoString, _a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        if (stdgo._internal.bytes.Bytes.equal(_a, _b)) {
            return (null : stdgo.Error);
        };
        return stdgo._internal.errors.Errors.new_((stdgo._internal.internal.diff.Diff.diff(_aname?.__copy__(), _a, _bname?.__copy__(), _b) : stdgo.GoString)?.__copy__());
    }
function _runcheck(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _source:stdgo.GoString, _golden:stdgo.GoString, _mode:T_checkMode):Void {
        var __tmp__ = stdgo._internal.os.Os.readFile(_source?.__copy__()), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        var __tmp__ = _format(_src, _mode), _res:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        if (_update.value) {
            {
                var _err:stdgo.Error = stdgo._internal.os.Os.writeFile(_golden?.__copy__(), _res, (420u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
            return;
        };
        var __tmp__ = stdgo._internal.os.Os.readFile(_golden?.__copy__()), _gld:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        {
            var _err:stdgo.Error = _checkEqual(_source?.__copy__(), _golden?.__copy__(), _res, _gld);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                return;
            };
        };
        if ((_mode & (8u32 : stdgo._internal.go.printer.Printer.T_checkMode) : stdgo._internal.go.printer.Printer.T_checkMode) != ((0u32 : stdgo._internal.go.printer.Printer.T_checkMode))) {
            {
                var __tmp__ = _format(_gld, _mode);
                _res = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                return;
            };
            {
                var _err:stdgo.Error = _checkEqual(_golden?.__copy__(), stdgo._internal.fmt.Fmt.sprintf(("format(%s)" : stdgo.GoString), stdgo.Go.toInterface(_golden))?.__copy__(), _gld, _res);
                if (_err != null) {
                    _t.errorf(("golden is not idempotent: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _source:stdgo.GoString, _golden:stdgo.GoString, _mode:T_checkMode):Void {
        var _cc = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _runcheck(_t, _source?.__copy__(), _golden?.__copy__(), _mode);
                _cc.__send__((0 : stdgo.GoInt));
            };
            a();
        });
        {
            var __select__ = true;
            while (__select__) {
                if (stdgo._internal.time.Time.after((10000000000i64 : stdgo._internal.time.Time.Duration)) != null && stdgo._internal.time.Time.after((10000000000i64 : stdgo._internal.time.Time.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time.after((10000000000i64 : stdgo._internal.time.Time.Duration)).__get__();
                        {
                            _t.errorf(("%s: running too slowly" : stdgo.GoString), stdgo.Go.toInterface(_source));
                        };
                    };
                } else if (_cc != null && _cc.__isGet__()) {
                    __select__ = false;
                    {
                        _cc.__get__();
                        {};
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
function testFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        for (__0 => _e in _data) {
            var _source:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(("testdata" : stdgo.GoString), _e._source?.__copy__())?.__copy__();
            var _golden:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(("testdata" : stdgo.GoString), _e._golden?.__copy__())?.__copy__();
            var _mode:stdgo._internal.go.printer.Printer.T_checkMode = _e._mode;
            _t.run(_e._source?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                _t.parallel();
                _check(_t, _source?.__copy__(), _golden?.__copy__(), _mode);
            });
        };
    }
function testLineComments(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(("// comment 1\n\t// comment 2\n\t// comment 3\n\tpackage main\n\t" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _fset = stdgo._internal.go.token.Token.newFileSet();
        fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        var _nlines:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _ch in _buf.bytes()) {
            if (_ch == ((10 : stdgo.GoUInt8))) {
                _nlines++;
            };
        };
        {};
        if ((_nlines < (3 : stdgo.GoInt) : Bool)) {
            _t.errorf(("got %d, expected %d\n" : stdgo.GoString), stdgo.Go.toInterface(_nlines), stdgo.Go.toInterface((3 : stdgo.GoInt)));
            _t.errorf(("result:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
        };
    }
function testBadNodes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {};
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(("package p\n(" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected illegal program" : stdgo.GoString)));
        };
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        if ((_buf.string() : stdgo.GoString) != (("package p\nBadDecl\n" : stdgo.GoString))) {
            _t.errorf(("got %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)), stdgo.Go.toInterface(("package p\nBadDecl\n" : stdgo.GoString)));
        };
    }
function _testComment(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File>, _srclen:stdgo.GoInt, _comment:stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>):Void {
        _f.comments[(0 : stdgo.GoInt)].list[(0 : stdgo.GoInt)] = _comment;
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _offs:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_offs <= _srclen : Bool), _offs++, {
                _buf.reset();
                {
                    var _err:stdgo.Error = fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(_buf.bytes()), (0u32 : stdgo._internal.go.parser.Parser.Mode)), __0:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("incorrect program for pos = %d:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_comment.slash)), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)));
                    };
                };
                _comment.slash++;
            });
        };
    }
function testBadComments(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        {};
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        var _comment = _f.comments[(0 : stdgo.GoInt)].list[(0 : stdgo.GoInt)];
        var _pos:stdgo._internal.go.token.Token.Pos = _comment.pos();
        if (_fset.positionFor(_pos, false).offset != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected offset 1" : stdgo.GoString)));
        };
        _testComment(_t, _f, (("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : stdgo.GoString).length), (stdgo.Go.setRef(({ slash : _pos, text : ("//-style comment" : stdgo.GoString) } : stdgo._internal.go.ast.Ast.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>));
        _testComment(_t, _f, (("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : stdgo.GoString).length), (stdgo.Go.setRef(({ slash : _pos, text : ("/*-style comment */" : stdgo.GoString) } : stdgo._internal.go.ast.Ast.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>));
        _testComment(_t, _f, (("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : stdgo.GoString).length), (stdgo.Go.setRef(({ slash : _pos, text : ("/*-style \n comment */" : stdgo.GoString) } : stdgo._internal.go.ast.Ast.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>));
        _testComment(_t, _f, (("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : stdgo.GoString).length), (stdgo.Go.setRef(({ slash : _pos, text : ("/*-style comment \n\n\n */" : stdgo.GoString) } : stdgo._internal.go.ast.Ast.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>));
    }
function _idents(_f:stdgo.Ref<stdgo._internal.go.ast.Ast.File>):stdgo.Chan<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>> {
        var _v:stdgo._internal.go.printer.Printer.T_visitor = (new stdgo._internal.go.printer.Printer.T_visitor(0, () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>)) : stdgo._internal.go.printer.Printer.T_visitor);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                stdgo._internal.go.ast.Ast.walk(stdgo.Go.asInterface(_v), stdgo.Go.asInterface(_f));
                if (_v != null) _v.__close__();
            };
            a();
        });
        return _v;
    }
function _identCount(_f:stdgo.Ref<stdgo._internal.go.ast.Ast.File>):stdgo.GoInt {
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_ => _ in _idents(_f)) {
            _n++;
        };
        return _n;
    }
function testSourcePos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, ("src" : stdgo.GoString), stdgo.Go.toInterface(("\npackage p\nimport ( \"go/printer\"; \"math\" )\nconst pi = 3.14; var x = 0\ntype t struct{ x, y, z int; u, v, w float32 }\nfunc (t *t) foo(a, b, c int) int {\n\treturn a*t.x + b*t.y +\n\t\t// two extra lines here\n\t\t// ...\n\t\tc*t.z\n}\n" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _f1:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _err = (stdgo.Go.setRef(({ mode : (12u32 : stdgo._internal.go.printer.Printer.Mode), tabwidth : (8 : stdgo.GoInt) } : stdgo._internal.go.printer.Printer.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer.Config>).fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f1)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(_buf.bytes()), (0u32 : stdgo._internal.go.parser.Parser.Mode)), _f2:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("%s\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_buf.bytes()));
        };
        var _n1:stdgo.GoInt = _identCount(_f1);
        var _n2:stdgo.GoInt = _identCount(_f2);
        if (_n1 == ((0 : stdgo.GoInt))) {
            _t.fatal(stdgo.Go.toInterface(("got no idents" : stdgo.GoString)));
        };
        if (_n2 != (_n1)) {
            _t.errorf(("got %d idents; want %d" : stdgo.GoString), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_n1));
        };
        var _i2range = _idents(_f2);
        for (_i1 => _ in _idents(_f1)) {
            var _i2 = _i2range.__get__();
            if (_i2.name != (_i1.name)) {
                _t.errorf(("got ident %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i2.name), stdgo.Go.toInterface(_i1.name));
            };
            var _l1:stdgo.GoInt = _fset.position(_i1.pos()).line;
            var _l2:stdgo.GoInt = _fset.position(_i2.pos()).line;
            if (_l2 != (_l1)) {
                _t.errorf(("got line %d; want %d for %s" : stdgo.GoString), stdgo.Go.toInterface(_l2), stdgo.Go.toInterface(_l1), stdgo.Go.toInterface(_i1.name));
            };
        };
        if (_t.failed()) {
            _t.logf(("\n%s" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
        };
    }
function testIssue5945(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        {};
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, ("src.go" : stdgo.GoString), stdgo.Go.toInterface(("\npackage p   // line 2\nfunc f() {} // line 3\n\nvar x, y, z int\n\n\nfunc g() { // line 8\n}\n" : stdgo.GoString)), (0u32 : stdgo._internal.go.parser.Parser.Mode)), _f1:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _err = (stdgo.Go.setRef(({ mode : (12u32 : stdgo._internal.go.printer.Printer.Mode), tabwidth : (8 : stdgo.GoInt) } : stdgo._internal.go.printer.Printer.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer.Config>).fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f1)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _got:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
        if (_got != (("//line src.go:2\npackage p\n\n//line src.go:3\nfunc f() {}\n\nvar x, y, z int\n\n//line src.go:8\nfunc g() {\n}\n" : stdgo.GoString))) {
            _t.errorf(("got:\n%s\nwant:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("//line src.go:2\npackage p\n\n//line src.go:3\nfunc f() {}\n\nvar x, y, z int\n\n//line src.go:8\nfunc g() {\n}\n" : stdgo.GoString)));
        };
    }
function testDeclLists(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _src in _decls) {
            var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface((("package p;" : stdgo.GoString) + _src?.__copy__() : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            _err = fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(_file.decls));
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            var _out:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
            if (_out != (_src)) {
                _t.errorf(("\ngot : %q\nwant: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_src));
            };
        };
    }
function testStmtLists(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _src in _stmts) {
            var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(((("package p; func _() {" : stdgo.GoString) + _src?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            _err = fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface((stdgo.Go.typeAssert((stdgo.Go.toInterface(_file.decls[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>).body.list));
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            var _out:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
            if (_out != (_src)) {
                _t.errorf(("\ngot : %q\nwant: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_src));
            };
        };
    }
function testBaseIndent(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        {};
        var __tmp__ = stdgo._internal.os.Os.readFile(("printer.go" : stdgo.GoString)), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, ("printer.go" : stdgo.GoString), stdgo.Go.toInterface(_src), (0u32 : stdgo._internal.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        {
            var _indent:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_indent < (4 : stdgo.GoInt) : Bool), _indent++, {
                var _indent:stdgo.GoInt = _indent;
                _t.run(stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_indent))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                    _t.parallel();
                    var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                    (stdgo.Go.setRef(({ tabwidth : (8 : stdgo.GoInt), indent : _indent } : stdgo._internal.go.printer.Printer.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer.Config>).fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_file)));
                    var _lines = stdgo._internal.bytes.Bytes.split(_buf.bytes(), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(10 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                    for (_i => _line in _lines) {
                        if ((_line.length) == ((0 : stdgo.GoInt))) {
                            continue;
                        };
                        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                        for (_j => _b in _line) {
                            if (_b != ((9 : stdgo.GoUInt8))) {
                                _n = _j;
                                break;
                            };
                        };
                        if ((_n < _indent : Bool)) {
                            _t.errorf(("line %d: got only %d tabs; want at least %d: %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_indent), stdgo.Go.toInterface(_line));
                        };
                    };
                });
            });
        };
    }
function testFuncType(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _src = (stdgo.Go.setRef(({ name : (stdgo.Go.setRef(({ name : ("p" : stdgo.GoString) } : stdgo._internal.go.ast.Ast.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>), decls : (new stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef(({ name : (stdgo.Go.setRef(({ name : ("f" : stdgo.GoString) } : stdgo._internal.go.ast.Ast.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>), type : (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast.FuncType() : stdgo._internal.go.ast.Ast.FuncType)) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>) } : stdgo._internal.go.ast.Ast.FuncDecl)) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>))]) : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>) } : stdgo._internal.go.ast.Ast.File)) : stdgo.Ref<stdgo._internal.go.ast.Ast.File>);
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _err:stdgo.Error = fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_src)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _got:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
        {};
        if (_got != (("package p\n\nfunc f()\n" : stdgo.GoString))) {
            _t.fatalf(("got:\n%s\nwant:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("package p\n\nfunc f()\n" : stdgo.GoString)));
        };
    }
function testWriteErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        {};
        var __tmp__ = stdgo._internal.os.Os.readFile(("printer.go" : stdgo.GoString)), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, ("printer.go" : stdgo.GoString), stdgo.Go.toInterface(_src), (0u32 : stdgo._internal.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (20 : stdgo.GoInt) : Bool), _i++, {
                var _lw = (stdgo.Go.setRef(({ _remaining : _i } : stdgo._internal.go.printer.Printer.T_limitWriter)) : stdgo.Ref<stdgo._internal.go.printer.Printer.T_limitWriter>);
                var _err:stdgo.Error = (stdgo.Go.setRef(({ mode : (1u32 : stdgo._internal.go.printer.Printer.Mode) } : stdgo._internal.go.printer.Printer.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer.Config>).fprint(stdgo.Go.asInterface(_lw), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_file)));
                if ((_lw._errCount > (1 : stdgo.GoInt) : Bool)) {
                    _t.fatal(stdgo.Go.toInterface(("Writes continued after first error returned" : stdgo.GoString)));
                };
                if ((_lw._errCount != (0 : stdgo.GoInt)) != ((_err != null))) {
                    _t.fatal(stdgo.Go.toInterface(("Expected err when errCount != 0" : stdgo.GoString)));
                };
            });
        };
    }
function testX(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var __tmp__ = _format((("\npackage p\nfunc _() {}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (0u32 : stdgo._internal.go.printer.Printer.T_checkMode)), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
    }
function testCommentedNode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, ("input.go" : stdgo.GoString), stdgo.Go.toInterface(("package main\n\nfunc foo() {\n\t// comment inside func\n}\n\n// leading comment\ntype bar int // comment2\n\n" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _err = fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface((stdgo.Go.setRef(({ node : stdgo.Go.toInterface(_f.decls[(0 : stdgo.GoInt)]), comments : _f.comments } : stdgo._internal.go.printer.Printer.CommentedNode)) : stdgo.Ref<stdgo._internal.go.printer.Printer.CommentedNode>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_buf.string() : stdgo.GoString) != (("func foo() {\n\t// comment inside func\n}" : stdgo.GoString))) {
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)), stdgo.Go.toInterface(("func foo() {\n\t// comment inside func\n}" : stdgo.GoString)));
        };
        _buf.reset();
        _err = fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface((stdgo.Go.setRef(({ node : stdgo.Go.toInterface(_f.decls[(1 : stdgo.GoInt)]), comments : _f.comments } : stdgo._internal.go.printer.Printer.CommentedNode)) : stdgo.Ref<stdgo._internal.go.printer.Printer.CommentedNode>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_buf.string() : stdgo.GoString) != (("// leading comment\ntype bar int\t// comment2\n" : stdgo.GoString))) {
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)), stdgo.Go.toInterface(("// leading comment\ntype bar int\t// comment2\n" : stdgo.GoString)));
        };
    }
function testIssue11151(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(("package p\t/*\r/1\r*\r/2*\r\r\r\r/3*\r\r+\r\r/4*/\n" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        var _got:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
        {};
        if (_got != (("package p\t/*/1*\r/2*\r/3*+/4*/\n" : stdgo.GoString))) {
            _t.errorf(("\ngot : %q\nwant: %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("package p\t/*/1*\r/2*\r/3*+/4*/\n" : stdgo.GoString)));
        };
        {
            var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(_got), (0u32 : stdgo._internal.go.parser.Parser.Mode));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.errorf(("%v\norig: %q\ngot : %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("package p\t/*\r/1\r*\r/2*\r\r\r\r/3*\r\r+\r\r/4*/\n" : stdgo.GoString)), stdgo.Go.toInterface(_got));
        };
    }
function testParenthesizedDecl(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(("package p; var ( a float64; b int )" : stdgo.GoString)), (0u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _err = fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _original:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i != ((_f.decls.length)), _i++, {
                (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f.decls[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>).lparen = (0 : stdgo._internal.go.token.Token.Pos);
            });
        };
        _buf.reset();
        _err = fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _noparen:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
        if (_noparen != (_original)) {
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_noparen), stdgo.Go.toInterface(_original));
        };
    }
function testIssue32854(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _src:stdgo.GoString = ("package foo\n\nfunc f() {\n        return Composite{\n                call(),\n        }\n}" : stdgo.GoString);
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(_src), (0u32 : stdgo._internal.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _fd = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_file.decls[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>);
        var _ret = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fd.body.list[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast.ReturnStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.ReturnStmt>);
        _ret.results[(0 : stdgo.GoInt)] = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ret.results[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>).elts[(0 : stdgo.GoInt)];
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _err:stdgo.Error = fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_ret)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _want:stdgo.GoString = ("return call()" : stdgo.GoString);
        {
            var _got:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
            if (_got != (_want)) {
                _t.fatalf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testSourcePosNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _fname:stdgo.GoString = ("foo\nbar/bar.go" : stdgo.GoString);
        var _src:stdgo.GoString = ("package bar" : stdgo.GoString);
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, _fname?.__copy__(), stdgo.Go.toInterface(_src), (100u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _cfg = (stdgo.Go.setRef(({ mode : (8u32 : stdgo._internal.go.printer.Printer.Mode), tabwidth : (8 : stdgo.GoInt) } : stdgo._internal.go.printer.Printer.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer.Config>);
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        {
            var _err:stdgo.Error = _cfg.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
            if (_err == null) {
                _t.errorf(("Fprint did not error for source file path containing newline" : stdgo.GoString));
            };
        };
        if (_buf.len() != ((0 : stdgo.GoInt))) {
            _t.errorf(("unexpected Fprint output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
        };
    }
@:keep var _ = {
        try {
            {};
            var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            {
                var _err:stdgo.Error = fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ name : ("foobar" : stdgo.GoString) } : stdgo._internal.go.ast.Ast.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>))));
                if (_err != null) {
                    throw stdgo.Go.toInterface(_err);
                };
            };
            {
                var _s:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
                if ((true && (_s != ("foobar" : stdgo.GoString)) : Bool)) {
                    throw stdgo.Go.toInterface((((("got " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + (", want " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("foobar" : stdgo.GoString)?.__copy__() : stdgo.GoString));
                };
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_sizeCounter_asInterface {
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_sizeCounter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.printer.Printer.T_sizeCounter_asInterface) class T_sizeCounter_static_extension {
    @:keep
    static public function write( _c:stdgo.Ref<T_sizeCounter>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<T_sizeCounter> = _c;
        if (!_c._hasNewline) {
            for (__0 => _b in _p) {
                if (((_b == (10 : stdgo.GoUInt8)) || (_b == (12 : stdgo.GoUInt8)) : Bool)) {
                    _c._hasNewline = true;
                    break;
                };
            };
        };
        _c._size = (_c._size + ((_p.length)) : stdgo.GoInt);
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
class T_printer_asInterface {
    @:keep
    public dynamic function _free():Void __self__.value._free();
    @:keep
    public dynamic function _printNode(_node:stdgo.AnyInterface):stdgo.Error return __self__.value._printNode(_node);
    @:keep
    public dynamic function _flush(_next:stdgo._internal.go.token.Token.Position, _tok:stdgo._internal.go.token.Token.Token):{ var _0 : Bool; var _1 : Bool; } return __self__.value._flush(_next, _tok);
    @:keep
    public dynamic function _print(_args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._print(..._args);
    @:keep
    public dynamic function _setPos(_pos:stdgo._internal.go.token.Token.Pos):Void __self__.value._setPos(_pos);
    @:keep
    public dynamic function _writeWhitespace(_n:stdgo.GoInt):Void __self__.value._writeWhitespace(_n);
    @:keep
    public dynamic function _intersperseComments(_next:stdgo._internal.go.token.Token.Position, _tok:stdgo._internal.go.token.Token.Token):{ var _0 : Bool; var _1 : Bool; } return __self__.value._intersperseComments(_next, _tok);
    @:keep
    public dynamic function _containsLinebreak():Bool return __self__.value._containsLinebreak();
    @:keep
    public dynamic function _writeCommentSuffix(_needsLinebreak:Bool):{ var _0 : Bool; var _1 : Bool; } return __self__.value._writeCommentSuffix(_needsLinebreak);
    @:keep
    public dynamic function _writeComment(_comment:stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>):Void __self__.value._writeComment(_comment);
    @:keep
    public dynamic function _writeCommentPrefix(_pos:stdgo._internal.go.token.Token.Position, _next:stdgo._internal.go.token.Token.Position, _prev:stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>, _tok:stdgo._internal.go.token.Token.Token):Void __self__.value._writeCommentPrefix(_pos, _next, _prev, _tok);
    @:keep
    public dynamic function _writeString(_pos:stdgo._internal.go.token.Token.Position, _s:stdgo.GoString, _isLit:Bool):Void __self__.value._writeString(_pos, _s, _isLit);
    @:keep
    public dynamic function _writeByte(_ch:stdgo.GoByte, _n:stdgo.GoInt):Void __self__.value._writeByte(_ch, _n);
    @:keep
    public dynamic function _writeIndent():Void __self__.value._writeIndent();
    @:keep
    public dynamic function _writeLineDirective(_pos:stdgo._internal.go.token.Token.Position):Void __self__.value._writeLineDirective(_pos);
    @:keep
    public dynamic function _lineFor(_pos:stdgo._internal.go.token.Token.Pos):stdgo.GoInt return __self__.value._lineFor(_pos);
    @:keep
    public dynamic function _posFor(_pos:stdgo._internal.go.token.Token.Pos):stdgo._internal.go.token.Token.Position return __self__.value._posFor(_pos);
    @:keep
    public dynamic function _linesFrom(_line:stdgo.GoInt):stdgo.GoInt return __self__.value._linesFrom(_line);
    @:keep
    public dynamic function _recordLine(_linePtr:stdgo.Pointer<stdgo.GoInt>):Void __self__.value._recordLine(_linePtr);
    @:keep
    public dynamic function _commentSizeBefore(_next:stdgo._internal.go.token.Token.Position):stdgo.GoInt return __self__.value._commentSizeBefore(_next);
    @:keep
    public dynamic function _commentBefore(_next:stdgo._internal.go.token.Token.Position):Bool return __self__.value._commentBefore(_next);
    @:keep
    public dynamic function _nextComment():Void __self__.value._nextComment();
    @:keep
    public dynamic function _commentsHaveNewline(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>):Bool return __self__.value._commentsHaveNewline(_list);
    @:keep
    public dynamic function _internalError(_msg:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._internalError(..._msg);
    @:keep
    public dynamic function _file(_src:stdgo.Ref<stdgo._internal.go.ast.Ast.File>):Void __self__.value._file(_src);
    @:keep
    public dynamic function _declList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>):Void __self__.value._declList(_list);
    @:keep
    public dynamic function _decl(_decl:stdgo._internal.go.ast.Ast.Decl):Void __self__.value._decl(_decl);
    @:keep
    public dynamic function _funcDecl(_d:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>):Void __self__.value._funcDecl(_d);
    @:keep
    public dynamic function _distanceFrom(_startPos:stdgo._internal.go.token.Token.Pos, _startOutCol:stdgo.GoInt):stdgo.GoInt return __self__.value._distanceFrom(_startPos, _startOutCol);
    @:keep
    public dynamic function _funcBody(_headerSize:stdgo.GoInt, _sep:T_whiteSpace, _b:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>):Void __self__.value._funcBody(_headerSize, _sep, _b);
    @:keep
    public dynamic function _bodySize(_b:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>, _maxSize:stdgo.GoInt):stdgo.GoInt return __self__.value._bodySize(_b, _maxSize);
    @:keep
    public dynamic function _numLines(_n:stdgo._internal.go.ast.Ast.Node):stdgo.GoInt return __self__.value._numLines(_n);
    @:keep
    public dynamic function _nodeSize(_n:stdgo._internal.go.ast.Ast.Node, _maxSize:stdgo.GoInt):stdgo.GoInt return __self__.value._nodeSize(_n, _maxSize);
    @:keep
    public dynamic function _genDecl(_d:stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>):Void __self__.value._genDecl(_d);
    @:keep
    public dynamic function _spec(_spec:stdgo._internal.go.ast.Ast.Spec, _n:stdgo.GoInt, _doIndent:Bool):Void __self__.value._spec(_spec, _n, _doIndent);
    @:keep
    public dynamic function _valueSpec(_s:stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>, _keepType:Bool):Void __self__.value._valueSpec(_s, _keepType);
    @:keep
    public dynamic function _stmt(_stmt:stdgo._internal.go.ast.Ast.Stmt, _nextIsRBrace:Bool):Void __self__.value._stmt(_stmt, _nextIsRBrace);
    @:keep
    public dynamic function _indentList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>):Bool return __self__.value._indentList(_list);
    @:keep
    public dynamic function _controlClause(_isForStmt:Bool, _init:stdgo._internal.go.ast.Ast.Stmt, _expr:stdgo._internal.go.ast.Ast.Expr, _post:stdgo._internal.go.ast.Ast.Stmt):Void __self__.value._controlClause(_isForStmt, _init, _expr, _post);
    @:keep
    public dynamic function _block(_b:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>, _nindent:stdgo.GoInt):Void __self__.value._block(_b, _nindent);
    @:keep
    public dynamic function _stmtList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>, _nindent:stdgo.GoInt, _nextIsRBrace:Bool):Void __self__.value._stmtList(_list, _nindent, _nextIsRBrace);
    @:keep
    public dynamic function _expr(_x:stdgo._internal.go.ast.Ast.Expr):Void __self__.value._expr(_x);
    @:keep
    public dynamic function _expr0(_x:stdgo._internal.go.ast.Ast.Expr, _depth:stdgo.GoInt):Void __self__.value._expr0(_x, _depth);
    @:keep
    public dynamic function _selectorExpr(_x:stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>, _depth:stdgo.GoInt, _isMethod:Bool):Bool return __self__.value._selectorExpr(_x, _depth, _isMethod);
    @:keep
    public dynamic function _possibleSelectorExpr(_expr:stdgo._internal.go.ast.Ast.Expr, _prec1:stdgo.GoInt, _depth:stdgo.GoInt):Bool return __self__.value._possibleSelectorExpr(_expr, _prec1, _depth);
    @:keep
    public dynamic function _expr1(_expr:stdgo._internal.go.ast.Ast.Expr, _prec1:stdgo.GoInt, _depth:stdgo.GoInt):Void __self__.value._expr1(_expr, _prec1, _depth);
    @:keep
    public dynamic function _binaryExpr(_x:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>, _prec1:stdgo.GoInt, _cutoff:stdgo.GoInt, _depth:stdgo.GoInt):Void __self__.value._binaryExpr(_x, _prec1, _cutoff, _depth);
    @:keep
    public dynamic function _fieldList(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>, _isStruct:Bool, _isIncomplete:Bool):Void __self__.value._fieldList(_fields, _isStruct, _isIncomplete);
    @:keep
    public dynamic function _setLineComment(_text:stdgo.GoString):Void __self__.value._setLineComment(_text);
    @:keep
    public dynamic function _isOneLineFieldList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Field>>):Bool return __self__.value._isOneLineFieldList(_list);
    @:keep
    public dynamic function _signature(_sig:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>):Void __self__.value._signature(_sig);
    @:keep
    public dynamic function _parameters(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>, _mode:T_paramMode):Void __self__.value._parameters(_fields, _mode);
    @:keep
    public dynamic function _exprList(_prev0:stdgo._internal.go.token.Token.Pos, _list:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>, _depth:stdgo.GoInt, _mode:T_exprListMode, _next0:stdgo._internal.go.token.Token.Pos, _isIncomplete:Bool):Void __self__.value._exprList(_prev0, _list, _depth, _mode, _next0, _isIncomplete);
    @:keep
    public dynamic function _identList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>, _indent:Bool):Void __self__.value._identList(_list, _indent);
    @:keep
    public dynamic function _setComment(_g:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>):Void __self__.value._setComment(_g);
    @:keep
    public dynamic function _linebreak(_line:stdgo.GoInt, _min:stdgo.GoInt, _ws:T_whiteSpace, _newSection:Bool):stdgo.GoInt return __self__.value._linebreak(_line, _min, _ws, _newSection);
    @:keep
    public dynamic function _commentTextAt(_start:stdgo.GoInt):stdgo.GoString return __self__.value._commentTextAt(_start);
    @:keep
    public dynamic function _lineAt(_start:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> return __self__.value._lineAt(_start);
    @:keep
    public dynamic function _fixGoBuildLines():Void __self__.value._fixGoBuildLines();
    @:embedded
    public dynamic function _fprint(_output:stdgo._internal.io.Io.Writer, _fset_:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface, _nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt>):stdgo.Error return __self__.value._fprint(_output, _fset_, _node, _nodeSizes);
    @:embedded
    public dynamic function fprint(_output:stdgo._internal.io.Io.Writer, _fset_:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface):stdgo.Error return __self__.value.fprint(_output, _fset_, _node);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_printer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.printer.Printer.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    static public function _free( _p:stdgo.Ref<T_printer>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if ((_p._output.capacity > (65536 : stdgo.GoInt) : Bool)) {
            return;
        };
        _printerPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
    }
    @:keep
    static public function _printNode( _p:stdgo.Ref<T_printer>, _node:stdgo.AnyInterface):stdgo.Error {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _p:stdgo.Ref<T_printer> = _p;
            var _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_node : stdgo.Ref<CommentedNode>)) : stdgo.Ref<CommentedNode>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.printer.Printer.CommentedNode>), _1 : false };
                }, _cnode = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _node = _cnode.node;
                    _comments = _cnode.comments;
                };
            };
            if (_comments != null) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_node : stdgo._internal.go.ast.Ast.Node)) : stdgo._internal.go.ast.Ast.Node), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.go.ast.Ast.Node), _1 : false };
                }, _n = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    @:goto "unsupported";
                };
                var _beg:stdgo._internal.go.token.Token.Pos = _n.pos();
                var _end:stdgo._internal.go.token.Token.Pos = _n.end();
                {
                    var _doc = _getDoc(_n);
                    if (_doc != null && ((_doc : Dynamic).__nil__ == null || !(_doc : Dynamic).__nil__)) {
                        _beg = _doc.pos();
                    };
                };
                {
                    var _com = _getLastComment(_n);
                    if (_com != null && ((_com : Dynamic).__nil__ == null || !(_com : Dynamic).__nil__)) {
                        {
                            var _e:stdgo._internal.go.token.Token.Pos = _com.end();
                            if ((_e > _end : Bool)) {
                                _end = _e;
                            };
                        };
                    };
                };
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                while (((_i < (_comments.length) : Bool) && (_comments[(_i : stdgo.GoInt)].end() < _beg : Bool) : Bool)) {
                    _i++;
                };
                var _j:stdgo.GoInt = _i;
                while (((_j < (_comments.length) : Bool) && (_comments[(_j : stdgo.GoInt)].pos() < _end : Bool) : Bool)) {
                    _j++;
                };
                if ((_i < _j : Bool)) {
                    _p._comments = (_comments.__slice__(_i, _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
                };
            } else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_node : stdgo.Ref<stdgo._internal.go.ast.Ast.File>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.File>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>), _1 : false };
                }, _n = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _p._comments = _n.comments;
                };
            };
            _p._useNodeComments = _p._comments == null;
            _p._nextComment();
            _p._print(stdgo.Go.toInterface(((0 : stdgo._internal.go.printer.Printer.T_pmode) : T_pmode)));
            {
                final __type__ = _node;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast.Expr))) {
                    var _n:stdgo._internal.go.ast.Ast.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast.Expr) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast.Expr) : __type__ == null ? (null : stdgo._internal.go.ast.Ast.Expr) : __type__.__underlying__().value;
                    _p._expr(_n);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast.Stmt))) {
                    var _n:stdgo._internal.go.ast.Ast.Stmt = __type__ == null ? (null : stdgo._internal.go.ast.Ast.Stmt) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast.Stmt) : __type__ == null ? (null : stdgo._internal.go.ast.Ast.Stmt) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>), _1 : false };
                        }, __56 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _p._indent = (1 : stdgo.GoInt);
                        };
                    };
                    _p._stmt(_n, false);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast.Decl))) {
                    var _n:stdgo._internal.go.ast.Ast.Decl = __type__ == null ? (null : stdgo._internal.go.ast.Ast.Decl) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast.Decl) : __type__ == null ? (null : stdgo._internal.go.ast.Ast.Decl) : __type__.__underlying__().value;
                    _p._decl(_n);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast.Spec))) {
                    var _n:stdgo._internal.go.ast.Ast.Spec = __type__ == null ? (null : stdgo._internal.go.ast.Ast.Spec) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast.Spec) : __type__ == null ? (null : stdgo._internal.go.ast.Ast.Spec) : __type__.__underlying__().value;
                    _p._spec(_n, (1 : stdgo.GoInt), false);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>))) {
                    var _n:stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>) : __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>) : __type__.__underlying__().value;
                    for (__89 => _s in _n) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>), _1 : false };
                            }, __90 = __tmp__._0, _ok = __tmp__._1;
                            if (_ok) {
                                _p._indent = (1 : stdgo.GoInt);
                            };
                        };
                    };
                    _p._stmtList(_n, (0 : stdgo.GoInt), false);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>))) {
                    var _n:stdgo.Slice<stdgo._internal.go.ast.Ast.Decl> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>) : __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>) : __type__.__underlying__().value;
                    _p._declList(_n);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.File>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__.__underlying__().value;
                    _p._file(_n);
                } else {
                    var _n:stdgo.AnyInterface = __type__?.__underlying__();
                    @:goto "unsupported";
                };
            };
            return _p._sourcePosErr;
            @:label("unsupported") return stdgo._internal.fmt.Fmt.errorf(("go/printer: unsupported node type %T" : stdgo.GoString), _node);
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function _flush( _p:stdgo.Ref<T_printer>, _next:stdgo._internal.go.token.Token.Position, _tok:stdgo._internal.go.token.Token.Token):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _wroteNewline:Bool = false, _droppedFF:Bool = false;
        if (_p._commentBefore(_next?.__copy__())) {
            {
                var __tmp__ = _p._intersperseComments(_next?.__copy__(), _tok);
                _wroteNewline = __tmp__._0;
                _droppedFF = __tmp__._1;
            };
        } else {
            _p._writeWhitespace((_p._wsbuf.length));
        };
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    @:keep
    static public function _print( _p:stdgo.Ref<T_printer>, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        for (__0 => _arg in _args) {
            var _data:stdgo.GoString = ("" : stdgo.GoString);
            var _isLit:Bool = false;
            var _impliedSemi:Bool = false;
            {
                final __value__ = _p._lastTok;
                if (__value__ == ((0 : stdgo._internal.go.token.Token.Token))) {} else if (__value__ == ((49 : stdgo._internal.go.token.Token.Token)) || __value__ == ((50 : stdgo._internal.go.token.Token.Token))) {
                    _p._prevOpen = _p._lastTok;
                } else {
                    _p._prevOpen = (0 : stdgo._internal.go.token.Token.Token);
                };
            };
            {
                final __type__ = _arg;
                if (stdgo.Go.typeEquals((__type__ : T_pmode))) {
                    var _x:stdgo._internal.go.printer.Printer.T_pmode = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.printer.Printer.T_pmode) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.printer.Printer.T_pmode) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.printer.Printer.T_pmode) : __type__.__underlying__().value;
                    _p._mode = (_p._mode ^ (_x) : stdgo._internal.go.printer.Printer.T_pmode);
                    continue;
                } else if (stdgo.Go.typeEquals((__type__ : T_whiteSpace))) {
                    var _x:stdgo._internal.go.printer.Printer.T_whiteSpace = __type__ == null ? ((0 : stdgo.GoUInt8) : stdgo._internal.go.printer.Printer.T_whiteSpace) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt8) : stdgo._internal.go.printer.Printer.T_whiteSpace) : __type__ == null ? ((0 : stdgo.GoUInt8) : stdgo._internal.go.printer.Printer.T_whiteSpace) : __type__.__underlying__().value;
                    if (_x == ((0 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                        continue;
                    };
                    var _i:stdgo.GoInt = (_p._wsbuf.length);
                    if (_i == (_p._wsbuf.capacity)) {
                        _p._writeWhitespace(_i);
                        _i = (0 : stdgo.GoInt);
                    };
                    _p._wsbuf = (_p._wsbuf.__slice__((0 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.printer.Printer.T_whiteSpace>);
                    _p._wsbuf[(_i : stdgo.GoInt)] = _x;
                    if (((_x == (10 : stdgo._internal.go.printer.Printer.T_whiteSpace)) || (_x == (12 : stdgo._internal.go.printer.Printer.T_whiteSpace)) : Bool)) {
                        _p._impliedSemi = false;
                    };
                    _p._lastTok = (0 : stdgo._internal.go.token.Token.Token);
                    continue;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                    _data = _x.name?.__copy__();
                    _impliedSemi = true;
                    _p._lastTok = (4 : stdgo._internal.go.token.Token.Token);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>) : __type__.__underlying__().value;
                    _data = _x.value?.__copy__();
                    _isLit = true;
                    _impliedSemi = true;
                    _p._lastTok = _x.kind;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.token.Token.Token))) {
                    var _x:stdgo._internal.go.token.Token.Token = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token) : __type__.__underlying__().value;
                    var _s:stdgo.GoString = (_x.string() : stdgo.GoString)?.__copy__();
                    if (_mayCombine(_p._lastTok, _s[(0 : stdgo.GoInt)])) {
                        if ((_p._wsbuf.length) != ((0 : stdgo.GoInt))) {
                            _p._internalError(stdgo.Go.toInterface(("whitespace buffer not empty" : stdgo.GoString)));
                        };
                        _p._wsbuf = (_p._wsbuf.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.printer.Printer.T_whiteSpace>);
                        _p._wsbuf[(0 : stdgo.GoInt)] = (32 : stdgo._internal.go.printer.Printer.T_whiteSpace);
                    };
                    _data = _s?.__copy__();
                    {
                        final __value__ = _x;
                        if (__value__ == ((61 : stdgo._internal.go.token.Token.Token)) || __value__ == ((65 : stdgo._internal.go.token.Token.Token)) || __value__ == ((69 : stdgo._internal.go.token.Token.Token)) || __value__ == ((80 : stdgo._internal.go.token.Token.Token)) || __value__ == ((37 : stdgo._internal.go.token.Token.Token)) || __value__ == ((38 : stdgo._internal.go.token.Token.Token)) || __value__ == ((54 : stdgo._internal.go.token.Token.Token)) || __value__ == ((55 : stdgo._internal.go.token.Token.Token)) || __value__ == ((56 : stdgo._internal.go.token.Token.Token))) {
                            _impliedSemi = true;
                        };
                    };
                    _p._lastTok = _x;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    var _x:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                    _data = _x?.__copy__();
                    _isLit = true;
                    _impliedSemi = true;
                    _p._lastTok = (9 : stdgo._internal.go.token.Token.Token);
                } else {
                    var _x:stdgo.AnyInterface = __type__?.__underlying__();
                    stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), ("print: unsupported argument %v (%T)\n" : stdgo.GoString), _arg, _arg);
                    throw stdgo.Go.toInterface(("go/printer type" : stdgo.GoString));
                };
            };
            var _next:stdgo._internal.go.token.Token.Position = _p._pos?.__copy__();
            var __tmp__ = _p._flush(_next?.__copy__(), _p._lastTok), _wroteNewline:Bool = __tmp__._0, _droppedFF:Bool = __tmp__._1;
            if (!_p._impliedSemi) {
                var _n:stdgo.GoInt = _nlimit((_next.line - _p._pos.line : stdgo.GoInt));
                if ((_wroteNewline && (_n == (2 : stdgo.GoInt)) : Bool)) {
                    _n = (1 : stdgo.GoInt);
                };
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    var _ch:stdgo.GoUInt8 = ((10 : stdgo.GoUInt8) : stdgo.GoByte);
                    if (_droppedFF) {
                        _ch = (12 : stdgo.GoUInt8);
                    };
                    _p._writeByte(_ch, _n);
                    _impliedSemi = false;
                };
            };
            if (_p._linePtr != null) {
                _p._linePtr.value = _p._out.line;
                _p._linePtr = (null : stdgo.Pointer<stdgo.GoInt>);
            };
            _p._writeString(_next?.__copy__(), _data?.__copy__(), _isLit);
            _p._impliedSemi = _impliedSemi;
        };
    }
    @:keep
    static public function _setPos( _p:stdgo.Ref<T_printer>, _pos:stdgo._internal.go.token.Token.Pos):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if (_pos.isValid()) {
            _p._pos = _p._posFor(_pos)?.__copy__();
        };
    }
    @:keep
    static public function _writeWhitespace( _p:stdgo.Ref<T_printer>, _n:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                {
                    var _ch:stdgo._internal.go.printer.Printer.T_whiteSpace = _p._wsbuf[(_i : stdgo.GoInt)];
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _ch;
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0 : stdgo._internal.go.printer.Printer.T_whiteSpace)))) {
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (62 : stdgo._internal.go.printer.Printer.T_whiteSpace)))) {
                                    _p._indent++;
                                    break;
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (60 : stdgo._internal.go.printer.Printer.T_whiteSpace)))) {
                                    _p._indent--;
                                    if ((_p._indent < (0 : stdgo.GoInt) : Bool)) {
                                        _p._internalError(stdgo.Go.toInterface(("negative indentation:" : stdgo.GoString)), stdgo.Go.toInterface(_p._indent));
                                        _p._indent = (0 : stdgo.GoInt);
                                    };
                                    break;
                                    break;
                                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == ((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)) || __value__ == ((12 : stdgo._internal.go.printer.Printer.T_whiteSpace))))) {
                                    if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < _n : Bool) && (_p._wsbuf[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (60 : stdgo._internal.go.printer.Printer.T_whiteSpace)) : Bool)) {
                                        {
                                            final __tmp__0 = (60 : stdgo._internal.go.printer.Printer.T_whiteSpace);
                                            final __tmp__1 = (12 : stdgo._internal.go.printer.Printer.T_whiteSpace);
                                            final __tmp__2 = _p._wsbuf;
                                            final __tmp__3 = (_i : stdgo.GoInt);
                                            final __tmp__4 = _p._wsbuf;
                                            final __tmp__5 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                            __tmp__2[__tmp__3] = __tmp__0;
                                            __tmp__4[__tmp__5] = __tmp__1;
                                        };
                                        _i--;
                                        {
                                            __continue__ = true;
                                            break;
                                        };
                                    };
                                    @:fallthrough {
                                        __switchIndex__ = 4;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else {
                                    _p._writeByte((_ch : stdgo.GoByte), (1 : stdgo.GoInt));
                                    break;
                                };
                            };
                            break;
                        };
                        if (__continue__) continue;
                    };
                };
            });
        };
        var _l:stdgo.GoInt = stdgo.Go.copySlice(_p._wsbuf, (_p._wsbuf.__slice__(_n) : stdgo.Slice<stdgo._internal.go.printer.Printer.T_whiteSpace>));
        _p._wsbuf = (_p._wsbuf.__slice__(0, _l) : stdgo.Slice<stdgo._internal.go.printer.Printer.T_whiteSpace>);
    }
    @:keep
    static public function _intersperseComments( _p:stdgo.Ref<T_printer>, _next:stdgo._internal.go.token.Token.Position, _tok:stdgo._internal.go.token.Token.Token):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _wroteNewline:Bool = false, _droppedFF:Bool = false;
        var _last:stdgo.Ref<stdgo._internal.go.ast.Ast.Comment> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>);
        while (_p._commentBefore(_next?.__copy__())) {
            var _list = _p._commentInfo._comment.list;
            var _changed:Bool = false;
            if (((_p._lastTok != ((75 : stdgo._internal.go.token.Token.Token)) && _p._posFor(_p._commentInfo._comment.pos()).column == ((1 : stdgo.GoInt)) : Bool) && (stdgo.Go.toInterface(_p._posFor((_p._commentInfo._comment.end() + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos))) == stdgo.Go.toInterface(_next)) : Bool)) {
                _list = _formatDocComment(_list);
                _changed = true;
                if ((((_p._commentInfo._comment.list.length) > (0 : stdgo.GoInt) : Bool) && (_list.length == (0 : stdgo.GoInt)) : Bool)) {
                    _p._writeCommentPrefix(_p._posFor(_p._commentInfo._comment.pos())?.__copy__(), _next?.__copy__(), _last, _tok);
                    _p._pos = _next?.__copy__();
                    _p._last = _next?.__copy__();
                    _p._nextComment();
                    return _p._writeCommentSuffix(false);
                };
            };
            for (__120 => _c in _list) {
                _p._writeCommentPrefix(_p._posFor(_c.pos())?.__copy__(), _next?.__copy__(), _last, _tok);
                _p._writeComment(_c);
                _last = _c;
            };
            if ((((_p._commentInfo._comment.list.length) > (0 : stdgo.GoInt) : Bool) && _changed : Bool)) {
                _last = _p._commentInfo._comment.list[((_p._commentInfo._comment.list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                _p._pos = _p._posFor(_last.end())?.__copy__();
                _p._last = _p._pos?.__copy__();
            };
            _p._nextComment();
        };
        if (_last != null && ((_last : Dynamic).__nil__ == null || !(_last : Dynamic).__nil__)) {
            var _needsLinebreak:Bool = false;
            if (((((((_p._mode & (1 : stdgo._internal.go.printer.Printer.T_pmode) : stdgo._internal.go.printer.Printer.T_pmode) == ((0 : stdgo._internal.go.printer.Printer.T_pmode)) && _last.text[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8)) : Bool) && _p._lineFor(_last.pos()) == (_next.line) : Bool) && _tok != ((52 : stdgo._internal.go.token.Token.Token)) : Bool) && (((_tok != (54 : stdgo._internal.go.token.Token.Token)) || (_p._prevOpen == (49 : stdgo._internal.go.token.Token.Token)) : Bool)) : Bool) && (((_tok != (55 : stdgo._internal.go.token.Token.Token)) || (_p._prevOpen == (50 : stdgo._internal.go.token.Token.Token)) : Bool)) : Bool)) {
                if (((_p._containsLinebreak() && (_p._mode & (2 : stdgo._internal.go.printer.Printer.T_pmode) : stdgo._internal.go.printer.Printer.T_pmode) == ((0 : stdgo._internal.go.printer.Printer.T_pmode)) : Bool) && (_p._level == (0 : stdgo.GoInt)) : Bool)) {
                    _needsLinebreak = true;
                } else {
                    _p._writeByte((32 : stdgo.GoUInt8), (1 : stdgo.GoInt));
                };
            };
            if (((_last.text[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) || _tok == ((1 : stdgo._internal.go.token.Token.Token)) : Bool) || (_tok == ((56 : stdgo._internal.go.token.Token.Token)) && (_p._mode & (2 : stdgo._internal.go.printer.Printer.T_pmode) : stdgo._internal.go.printer.Printer.T_pmode) == ((0 : stdgo._internal.go.printer.Printer.T_pmode)) : Bool) : Bool)) {
                _needsLinebreak = true;
            };
            return _p._writeCommentSuffix(_needsLinebreak);
        };
        _p._internalError(stdgo.Go.toInterface(("intersperseComments called without pending comments" : stdgo.GoString)));
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    @:keep
    static public function _containsLinebreak( _p:stdgo.Ref<T_printer>):Bool {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        for (__8 => _ch in _p._wsbuf) {
            if (((_ch == (10 : stdgo._internal.go.printer.Printer.T_whiteSpace)) || (_ch == (12 : stdgo._internal.go.printer.Printer.T_whiteSpace)) : Bool)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function _writeCommentSuffix( _p:stdgo.Ref<T_printer>, _needsLinebreak:Bool):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _wroteNewline:Bool = false, _droppedFF:Bool = false;
        for (_i => _ch in _p._wsbuf) {
            {
                final __value__ = _ch;
                if (__value__ == ((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)) || __value__ == ((11 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                    _p._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer.T_whiteSpace);
                } else if (__value__ == ((62 : stdgo._internal.go.printer.Printer.T_whiteSpace)) || __value__ == ((60 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {} else if (__value__ == ((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)) || __value__ == ((12 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                    if (_needsLinebreak) {
                        _needsLinebreak = false;
                        _wroteNewline = true;
                    } else {
                        if (_ch == ((12 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                            _droppedFF = true;
                        };
                        _p._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer.T_whiteSpace);
                    };
                };
            };
        };
        _p._writeWhitespace((_p._wsbuf.length));
        if (_needsLinebreak) {
            _p._writeByte((10 : stdgo.GoUInt8), (1 : stdgo.GoInt));
            _wroteNewline = true;
        };
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    @:keep
    static public function _writeComment( _p:stdgo.Ref<T_printer>, _comment:stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _text:stdgo.GoString = _comment.text?.__copy__();
            var _pos:stdgo._internal.go.token.Token.Position = _p._posFor(_comment.pos())?.__copy__();
            {};
            if ((stdgo._internal.strings.Strings.hasPrefix(_text?.__copy__(), ("//line " : stdgo.GoString)) && ((!_pos.isValid() || (_pos.column == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
                {
                    var _a0 = _p._indent;
                    __deferstack__.unshift(() -> {
                        var a = function(_indent:stdgo.GoInt):Void {
                            _p._indent = _indent;
                        };
                        a(_a0);
                    });
                };
                _p._indent = (0 : stdgo.GoInt);
            };
            if (_text[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                if (stdgo._internal.go.build.constraint.Constraint.isGoBuild(_text?.__copy__())) {
                    _p._goBuild = (_p._goBuild.__append__(_p._output.length));
                } else if (stdgo._internal.go.build.constraint.Constraint.isPlusBuild(_text?.__copy__())) {
                    _p._plusBuild = (_p._plusBuild.__append__(_p._output.length));
                };
                _p._writeString(_pos?.__copy__(), _trimRight(_text?.__copy__())?.__copy__(), true);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _lines = stdgo._internal.strings.Strings.split(_text?.__copy__(), ("\n" : stdgo.GoString));
            if (((_pos.isValid() && _pos.column == ((1 : stdgo.GoInt)) : Bool) && (_p._indent > (0 : stdgo.GoInt) : Bool) : Bool)) {
                for (_i => _line in (_lines.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                    _lines[((1 : stdgo.GoInt) + _i : stdgo.GoInt)] = (("   " : stdgo.GoString) + _line?.__copy__() : stdgo.GoString)?.__copy__();
                };
            };
            _stripCommonPrefix(_lines);
            for (_i => _line in _lines) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _p._writeByte((12 : stdgo.GoUInt8), (1 : stdgo.GoInt));
                    _pos = _p._pos?.__copy__();
                };
                if (((_line.length) > (0 : stdgo.GoInt) : Bool)) {
                    _p._writeString(_pos?.__copy__(), _trimRight(_line?.__copy__())?.__copy__(), true);
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _writeCommentPrefix( _p:stdgo.Ref<T_printer>, _pos:stdgo._internal.go.token.Token.Position, _next:stdgo._internal.go.token.Token.Position, _prev:stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>, _tok:stdgo._internal.go.token.Token.Token):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if ((_p._output.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        if ((_pos.isValid() && (_pos.filename != _p._last.filename) : Bool)) {
            _p._writeByte((12 : stdgo.GoUInt8), (2 : stdgo.GoInt));
            return;
        };
        if (((_pos.line == _p._last.line) && ((((_prev == null) || (_prev : Dynamic).__nil__) || (_prev.text[(1 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            var _hasSep:Bool = false;
            if (_prev == null || (_prev : Dynamic).__nil__) {
                var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                for (_i => _ch in _p._wsbuf) {
                    {
                        final __value__ = _ch;
                        if (__value__ == ((32 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                            _p._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer.T_whiteSpace);
                            continue;
                        } else if (__value__ == ((11 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                            _hasSep = true;
                            continue;
                        } else if (__value__ == ((62 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                            continue;
                        };
                    };
                    _j = _i;
                    break;
                };
                _p._writeWhitespace(_j);
            };
            if (!_hasSep) {
                var _sep:stdgo.GoUInt8 = ((9 : stdgo.GoUInt8) : stdgo.GoByte);
                if (_pos.line == (_next.line)) {
                    _sep = (32 : stdgo.GoUInt8);
                };
                _p._writeByte(_sep, (1 : stdgo.GoInt));
            };
        } else {
            var _droppedLinebreak:Bool = false;
            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
            for (_i => _ch in _p._wsbuf) {
                {
                    final __value__ = _ch;
                    if (__value__ == ((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)) || __value__ == ((11 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                        _p._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer.T_whiteSpace);
                        continue;
                    } else if (__value__ == ((62 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                        continue;
                    } else if (__value__ == ((60 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                        if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_p._wsbuf.length) : Bool) && (_p._wsbuf[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (60 : stdgo._internal.go.printer.Printer.T_whiteSpace)) : Bool)) {
                            continue;
                        };
                        if (((_tok != (56 : stdgo._internal.go.token.Token.Token)) && (_pos.column == _next.column) : Bool)) {
                            continue;
                        };
                    } else if (__value__ == ((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)) || __value__ == ((12 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                        _p._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer.T_whiteSpace);
                        _droppedLinebreak = _prev == null || (_prev : Dynamic).__nil__;
                    };
                };
                _j = _i;
                break;
            };
            _p._writeWhitespace(_j);
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            if ((_pos.isValid() && _p._last.isValid() : Bool)) {
                _n = (_pos.line - _p._last.line : stdgo.GoInt);
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    _n = (0 : stdgo.GoInt);
                };
            };
            if (((_p._indent == (0 : stdgo.GoInt)) && _droppedLinebreak : Bool)) {
                _n++;
            };
            if (((_n == ((0 : stdgo.GoInt)) && _prev != null && ((_prev : Dynamic).__nil__ == null || !(_prev : Dynamic).__nil__) : Bool) && (_prev.text[(1 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
                _n = (1 : stdgo.GoInt);
            };
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _p._writeByte((12 : stdgo.GoUInt8), _nlimit(_n));
            };
        };
    }
    @:keep
    static public function _writeString( _p:stdgo.Ref<T_printer>, _pos:stdgo._internal.go.token.Token.Position, _s:stdgo.GoString, _isLit:Bool):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if (_p._out.column == ((1 : stdgo.GoInt))) {
            if ((_p.config.mode & (8u32 : stdgo._internal.go.printer.Printer.Mode) : stdgo._internal.go.printer.Printer.Mode) != ((0u32 : stdgo._internal.go.printer.Printer.Mode))) {
                _p._writeLineDirective(_pos?.__copy__());
            };
            _p._writeIndent();
        };
        if (_pos.isValid()) {
            _p._pos = _pos?.__copy__();
        };
        if (_isLit) {
            _p._output = (_p._output.__append__((255 : stdgo.GoUInt8)));
        };
        if (false) {
            _p._output = (_p._output.__append__(...(stdgo._internal.fmt.Fmt.sprintf(("/*%s*/" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos))) : Array<stdgo.GoUInt8>)));
        };
        _p._output = (_p._output.__append__(...(_s : Array<stdgo.GoUInt8>)));
        var _nlines:stdgo.GoInt = (0 : stdgo.GoInt);
        var _li:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                {
                    var _ch:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                    if (((_ch == (10 : stdgo.GoUInt8)) || (_ch == (12 : stdgo.GoUInt8)) : Bool)) {
                        _nlines++;
                        _li = _i;
                        _p._endAlignment = true;
                    };
                };
            });
        };
        _p._pos.offset = (_p._pos.offset + ((_s.length)) : stdgo.GoInt);
        if ((_nlines > (0 : stdgo.GoInt) : Bool)) {
            _p._pos.line = (_p._pos.line + (_nlines) : stdgo.GoInt);
            _p._out.line = (_p._out.line + (_nlines) : stdgo.GoInt);
            var _c:stdgo.GoInt = ((_s.length) - _li : stdgo.GoInt);
            _p._pos.column = _c;
            _p._out.column = _c;
        } else {
            _p._pos.column = (_p._pos.column + ((_s.length)) : stdgo.GoInt);
            _p._out.column = (_p._out.column + ((_s.length)) : stdgo.GoInt);
        };
        if (_isLit) {
            _p._output = (_p._output.__append__((255 : stdgo.GoUInt8)));
        };
        _p._last = _p._pos?.__copy__();
    }
    @:keep
    static public function _writeByte( _p:stdgo.Ref<T_printer>, _ch:stdgo.GoByte, _n:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if (_p._endAlignment) {
            {
                final __value__ = _ch;
                if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((11 : stdgo.GoUInt8))) {
                    _ch = (32 : stdgo.GoUInt8);
                } else if (__value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                    _ch = (12 : stdgo.GoUInt8);
                    _p._endAlignment = false;
                };
            };
        };
        if (_p._out.column == ((1 : stdgo.GoInt))) {
            _p._writeIndent();
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _p._output = (_p._output.__append__(_ch));
            });
        };
        _p._pos.offset = (_p._pos.offset + (_n) : stdgo.GoInt);
        if (((_ch == (10 : stdgo.GoUInt8)) || (_ch == (12 : stdgo.GoUInt8)) : Bool)) {
            _p._pos.line = (_p._pos.line + (_n) : stdgo.GoInt);
            _p._out.line = (_p._out.line + (_n) : stdgo.GoInt);
            _p._pos.column = (1 : stdgo.GoInt);
            _p._out.column = (1 : stdgo.GoInt);
            return;
        };
        _p._pos.column = (_p._pos.column + (_n) : stdgo.GoInt);
        _p._out.column = (_p._out.column + (_n) : stdgo.GoInt);
    }
    @:keep
    static public function _writeIndent( _p:stdgo.Ref<T_printer>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _n:stdgo.GoInt = (_p.config.indent + _p._indent : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _p._output = (_p._output.__append__((9 : stdgo.GoUInt8)));
            });
        };
        _p._pos.offset = (_p._pos.offset + (_n) : stdgo.GoInt);
        _p._pos.column = (_p._pos.column + (_n) : stdgo.GoInt);
        _p._out.column = (_p._out.column + (_n) : stdgo.GoInt);
    }
    @:keep
    static public function _writeLineDirective( _p:stdgo.Ref<T_printer>, _pos:stdgo._internal.go.token.Token.Position):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if ((_pos.isValid() && (((_p._out.line != _pos.line) || (_p._out.filename != _pos.filename) : Bool)) : Bool)) {
            if (stdgo._internal.strings.Strings.containsAny(_pos.filename?.__copy__(), ("\r\n" : stdgo.GoString))) {
                if (_p._sourcePosErr == null) {
                    _p._sourcePosErr = stdgo._internal.fmt.Fmt.errorf(("go/printer: source filename contains unexpected newline character: %q" : stdgo.GoString), stdgo.Go.toInterface(_pos.filename));
                };
                return;
            };
            _p._output = (_p._output.__append__((255 : stdgo.GoUInt8)));
            _p._output = (_p._output.__append__(...(stdgo._internal.fmt.Fmt.sprintf(("//line %s:%d\n" : stdgo.GoString), stdgo.Go.toInterface(_pos.filename), stdgo.Go.toInterface(_pos.line)) : Array<stdgo.GoUInt8>)));
            _p._output = (_p._output.__append__((255 : stdgo.GoUInt8)));
            _p._out.filename = _pos.filename?.__copy__();
            _p._out.line = _pos.line;
        };
    }
    @:keep
    static public function _lineFor( _p:stdgo.Ref<T_printer>, _pos:stdgo._internal.go.token.Token.Pos):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if (_pos != (_p._cachedPos)) {
            _p._cachedPos = _pos;
            _p._cachedLine = _p._fset.positionFor(_pos, false).line;
        };
        return _p._cachedLine;
    }
    @:keep
    static public function _posFor( _p:stdgo.Ref<T_printer>, _pos:stdgo._internal.go.token.Token.Pos):stdgo._internal.go.token.Token.Position {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        return _p._fset.positionFor(_pos, false)?.__copy__();
    }
    @:keep
    static public function _linesFrom( _p:stdgo.Ref<T_printer>, _line:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        return (_p._out.line - _line : stdgo.GoInt);
    }
    @:keep
    static public function _recordLine( _p:stdgo.Ref<T_printer>, _linePtr:stdgo.Pointer<stdgo.GoInt>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._linePtr = _linePtr;
    }
    @:keep
    static public function _commentSizeBefore( _p:stdgo.Ref<T_printer>, _next:stdgo._internal.go.token.Token.Position):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _p._commentInfo;
                __deferstack__.unshift(() -> {
                    var a = function(_info:T_commentInfo):Void {
                        _p._commentInfo = _info?.__copy__();
                    };
                    a(_a0?.__copy__());
                });
            };
            var _size:stdgo.GoInt = (0 : stdgo.GoInt);
            while (_p._commentBefore(_next?.__copy__())) {
                for (__24 => _c in _p._commentInfo._comment.list) {
                    _size = (_size + ((_c.text.length)) : stdgo.GoInt);
                };
                _p._nextComment();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _size;
            };
            {
                final __ret__:stdgo.GoInt = (0 : stdgo.GoInt);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.GoInt = (0 : stdgo.GoInt);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _commentBefore( _p:stdgo.Ref<T_printer>, _next:stdgo._internal.go.token.Token.Position):Bool {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        return ((_p._commentInfo._commentOffset < _next.offset : Bool) && ((!_p._impliedSemi || !_p._commentInfo._commentNewline : Bool)) : Bool);
    }
    @:keep
    static public function _nextComment( _p:stdgo.Ref<T_printer>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        while ((_p._commentInfo._cindex < (_p._comments.length) : Bool)) {
            var _c = _p._comments[(_p._commentInfo._cindex : stdgo.GoInt)];
            _p._commentInfo._cindex++;
            {
                var _list = _c.list;
                if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                    _p._commentInfo._comment = _c;
                    _p._commentInfo._commentOffset = _p._posFor(_list[(0 : stdgo.GoInt)].pos()).offset;
                    _p._commentInfo._commentNewline = _p._commentsHaveNewline(_list);
                    return;
                };
            };
        };
        _p._commentInfo._commentOffset = (1073741824 : stdgo.GoInt);
    }
    @:keep
    static public function _commentsHaveNewline( _p:stdgo.Ref<T_printer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>):Bool {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _line:stdgo.GoInt = _p._lineFor(_list[(0 : stdgo.GoInt)].pos());
        for (_i => _c in _list) {
            if (((_i > (0 : stdgo.GoInt) : Bool) && (_p._lineFor(_list[(_i : stdgo.GoInt)].pos()) != _line) : Bool)) {
                return true;
            };
            {
                var _t:stdgo.GoString = _c.text?.__copy__();
                if ((((_t.length) >= (2 : stdgo.GoInt) : Bool) && (((_t[(1 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) || stdgo._internal.strings.Strings.contains(_t?.__copy__(), ("\n" : stdgo.GoString)) : Bool)) : Bool)) {
                    return true;
                };
            };
        };
        var __blank__ = _line;
        return false;
    }
    @:keep
    static public function _internalError( _p:stdgo.Ref<T_printer>, _msg:haxe.Rest<stdgo.AnyInterface>):Void {
        var _msg = new stdgo.Slice<stdgo.AnyInterface>(_msg.length, 0, ..._msg);
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if (false) {
            stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(((_p._pos.string() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString)));
            stdgo._internal.fmt.Fmt.println(...(_msg : Array<stdgo.AnyInterface>));
            throw stdgo.Go.toInterface(("go/printer" : stdgo.GoString));
        };
    }
    @:keep
    static public function _file( _p:stdgo.Ref<T_printer>, _src:stdgo.Ref<stdgo._internal.go.ast.Ast.File>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._setComment(_src.doc);
        _p._setPos(_src.pos());
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((78 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        _p._expr(stdgo.Go.asInterface(_src.name));
        _p._declList(_src.decls);
        _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
    }
    @:keep
    static public function _declList( _p:stdgo.Ref<T_printer>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _tok:stdgo._internal.go.token.Token.Token = (0 : stdgo._internal.go.token.Token.Token);
        for (__0 => _d in _list) {
            var _prev:stdgo._internal.go.token.Token.Token = _tok;
            _tok = _declToken(_d);
            if (((_p._output.length) > (0 : stdgo.GoInt) : Bool)) {
                var _min:stdgo.GoInt = (1 : stdgo.GoInt);
                if (((_prev != _tok) || ((_getDoc(_d) != null) && ((_getDoc(_d) : Dynamic).__nil__ == null || !(_getDoc(_d) : Dynamic).__nil__)) : Bool)) {
                    _min = (2 : stdgo.GoInt);
                };
                _p._linebreak(_p._lineFor(_d.pos()), _min, (0 : stdgo._internal.go.printer.Printer.T_whiteSpace), ((_tok == (71 : stdgo._internal.go.token.Token.Token)) && (_p._numLines(_d) > (1 : stdgo.GoInt) : Bool) : Bool));
            };
            _p._decl(_d);
        };
    }
    @:keep
    static public function _decl( _p:stdgo.Ref<T_printer>, _decl:stdgo._internal.go.ast.Ast.Decl):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        {
            final __type__ = _decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BadDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.BadDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadDecl>) : __type__.__underlying__().value;
                _p._setPos(_d.pos());
                _p._print(stdgo.Go.toInterface(("BadDecl" : stdgo.GoString)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__().value;
                _p._genDecl(_d);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__().value;
                _p._funcDecl(_d);
            } else {
                var _d:stdgo._internal.go.ast.Ast.Decl = __type__ == null ? (null : stdgo._internal.go.ast.Ast.Decl) : cast __type__;
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
    @:keep
    static public function _funcDecl( _p:stdgo.Ref<T_printer>, _d:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._setComment(_d.doc);
        _p._setPos(_d.pos());
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((71 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        var _startCol:stdgo.GoInt = (_p._out.column - (("func " : stdgo.GoString).length) : stdgo.GoInt);
        if (_d.recv != null && ((_d.recv : Dynamic).__nil__ == null || !(_d.recv : Dynamic).__nil__)) {
            _p._parameters(_d.recv, (0 : stdgo._internal.go.printer.Printer.T_paramMode));
            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        };
        _p._expr(stdgo.Go.asInterface(_d.name));
        _p._signature(_d.type);
        _p._funcBody(_p._distanceFrom(_d.pos(), _startCol), (11 : stdgo._internal.go.printer.Printer.T_whiteSpace), _d.body);
    }
    @:keep
    static public function _distanceFrom( _p:stdgo.Ref<T_printer>, _startPos:stdgo._internal.go.token.Token.Pos, _startOutCol:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if (((_startPos.isValid() && _p._pos.isValid() : Bool) && (_p._posFor(_startPos).line == _p._pos.line) : Bool)) {
            return (_p._out.column - _startOutCol : stdgo.GoInt);
        };
        return (1073741824 : stdgo.GoInt);
    }
    @:keep
    static public function _funcBody( _p:stdgo.Ref<T_printer>, _headerSize:stdgo.GoInt, _sep:T_whiteSpace, _b:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_b == null || (_b : Dynamic).__nil__) {
                return;
            };
            {
                var _a0 = _p._level;
                __deferstack__.unshift(() -> {
                    var a = function(_level:stdgo.GoInt):Void {
                        _p._level = _level;
                    };
                    a(_a0);
                });
            };
            _p._level = (0 : stdgo.GoInt);
            {};
            if (((_headerSize + _p._bodySize(_b, (100 : stdgo.GoInt)) : stdgo.GoInt) <= (100 : stdgo.GoInt) : Bool)) {
                _p._print(stdgo.Go.toInterface(_sep));
                _p._setPos(_b.lbrace);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token.Token))));
                if (((_b.list.length) > (0 : stdgo.GoInt) : Bool)) {
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                    for (_i => _s in _b.list) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        };
                        _p._stmt(_s, _i == (((_b.list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)));
                    };
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
                _p._print(stdgo.Go.toInterface((2 : stdgo._internal.go.printer.Printer.T_pmode)));
                _p._setPos(_b.rbrace);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((2 : stdgo._internal.go.printer.Printer.T_pmode)));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_sep != ((0 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
            };
            _p._block(_b, (1 : stdgo.GoInt));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _bodySize( _p:stdgo.Ref<T_printer>, _b:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>, _maxSize:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _pos1:stdgo._internal.go.token.Token.Pos = _b.pos();
        var _pos2:stdgo._internal.go.token.Token.Pos = _b.rbrace;
        if (((_pos1.isValid() && _pos2.isValid() : Bool) && (_p._lineFor(_pos1) != _p._lineFor(_pos2)) : Bool)) {
            return (_maxSize + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if (((_b.list.length) > (5 : stdgo.GoInt) : Bool)) {
            return (_maxSize + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _bodySize:stdgo.GoInt = _p._commentSizeBefore(_p._posFor(_pos2)?.__copy__());
        for (_i => _s in _b.list) {
            if ((_bodySize > _maxSize : Bool)) {
                break;
            };
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _bodySize = (_bodySize + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
            _bodySize = (_bodySize + (_p._nodeSize(_s, _maxSize)) : stdgo.GoInt);
        };
        return _bodySize;
    }
    @:keep
    static public function _numLines( _p:stdgo.Ref<T_printer>, _n:stdgo._internal.go.ast.Ast.Node):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        {
            var _from:stdgo._internal.go.token.Token.Pos = _n.pos();
            if (_from.isValid()) {
                {
                    var _to:stdgo._internal.go.token.Token.Pos = _n.end();
                    if (_to.isValid()) {
                        return ((_p._lineFor(_to) - _p._lineFor(_from) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                };
            };
        };
        return (1073741824 : stdgo.GoInt);
    }
    @:keep
    static public function _nodeSize( _p:stdgo.Ref<T_printer>, _n:stdgo._internal.go.ast.Ast.Node, _maxSize:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _size:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = (_p._nodeSizes != null && _p._nodeSizes.exists(_n) ? { _0 : _p._nodeSizes[_n], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _size:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                return _size;
            };
        };
        _size = (_maxSize + (1 : stdgo.GoInt) : stdgo.GoInt);
        _p._nodeSizes[_n] = _size;
        var _cfg:stdgo._internal.go.printer.Printer.Config = ({ mode : (1u32 : stdgo._internal.go.printer.Printer.Mode) } : stdgo._internal.go.printer.Printer.Config);
        var _counter:T_sizeCounter = ({} : stdgo._internal.go.printer.Printer.T_sizeCounter);
        {
            var _err:stdgo.Error = _cfg._fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo._internal.go.printer.Printer.T_sizeCounter>)), _p._fset, stdgo.Go.toInterface(_n), _p._nodeSizes);
            if (_err != null) {
                return _size;
            };
        };
        if (((_counter._size <= _maxSize : Bool) && !_counter._hasNewline : Bool)) {
            _size = _counter._size;
            _p._nodeSizes[_n] = _size;
        };
        return _size;
    }
    @:keep
    static public function _genDecl( _p:stdgo.Ref<T_printer>, _d:stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._setComment(_d.doc);
        _p._setPos(_d.pos());
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_d.tok)), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        if ((_d.lparen.isValid() || ((_d.specs.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            _p._setPos(_d.lparen);
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token.Token))));
            {
                var _n:stdgo.GoInt = (_d.specs.length);
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                    if (((_n > (1 : stdgo.GoInt) : Bool) && (((_d.tok == (64 : stdgo._internal.go.token.Token.Token)) || (_d.tok == (85 : stdgo._internal.go.token.Token.Token)) : Bool)) : Bool)) {
                        var _keepType = _keepTypeColumn(_d.specs);
                        var _line:stdgo.GoInt = (0 : stdgo.GoInt);
                        for (_i => _s in _d.specs) {
                            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                _p._linebreak(_p._lineFor(_s.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer.T_whiteSpace), (_p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                            };
                            _p._recordLine(stdgo.Go.pointer(_line));
                            _p._valueSpec((stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>), _keepType[(_i : stdgo.GoInt)]);
                        };
                    } else {
                        var _line:stdgo.GoInt = (0 : stdgo.GoInt);
                        for (_i => _s in _d.specs) {
                            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                _p._linebreak(_p._lineFor(_s.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer.T_whiteSpace), (_p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                            };
                            _p._recordLine(stdgo.Go.pointer(_line));
                            _p._spec(_s, _n, false);
                        };
                    };
                    _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
            };
            _p._setPos(_d.rparen);
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token.Token))));
        } else if (((_d.specs.length) > (0 : stdgo.GoInt) : Bool)) {
            _p._spec(_d.specs[(0 : stdgo.GoInt)], (1 : stdgo.GoInt), true);
        };
    }
    @:keep
    static public function _spec( _p:stdgo.Ref<T_printer>, _spec:stdgo._internal.go.ast.Ast.Spec, _n:stdgo.GoInt, _doIndent:Bool):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        {
            final __type__ = _spec;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                _p._setComment(_s.doc);
                if (_s.name != null && ((_s.name : Dynamic).__nil__ == null || !(_s.name : Dynamic).__nil__)) {
                    _p._expr(stdgo.Go.asInterface(_s.name));
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
                _p._expr(stdgo.Go.asInterface(_sanitizeImportPath(_s.path)));
                _p._setComment(_s.comment);
                _p._setPos(_s.endPos);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__().value;
                if (_n != ((1 : stdgo.GoInt))) {
                    _p._internalError(stdgo.Go.toInterface(("expected n = 1; got" : stdgo.GoString)), stdgo.Go.toInterface(_n));
                };
                _p._setComment(_s.doc);
                _p._identList(_s.names, _doIndent);
                if (_s.type != null) {
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                    _p._expr(_s.type);
                };
                if (_s.values != null) {
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((42 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                    _p._exprList((0 : stdgo._internal.go.token.Token.Pos), _s.values, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer.T_exprListMode), (0 : stdgo._internal.go.token.Token.Pos), false);
                };
                _p._setComment(_s.comment);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__().value;
                _p._setComment(_s.doc);
                _p._expr(stdgo.Go.asInterface(_s.name));
                if (_s.typeParams != null && ((_s.typeParams : Dynamic).__nil__ == null || !(_s.typeParams : Dynamic).__nil__)) {
                    _p._parameters(_s.typeParams, (2 : stdgo._internal.go.printer.Printer.T_paramMode));
                };
                if (_n == ((1 : stdgo.GoInt))) {
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                } else {
                    _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
                if (_s.assign.isValid()) {
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((42 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
                _p._expr(_s.type);
                _p._setComment(_s.comment);
            } else {
                var _s:stdgo._internal.go.ast.Ast.Spec = __type__ == null ? (null : stdgo._internal.go.ast.Ast.Spec) : cast __type__;
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
    @:keep
    static public function _valueSpec( _p:stdgo.Ref<T_printer>, _s:stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>, _keepType:Bool):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._setComment(_s.doc);
        _p._identList(_s.names, false);
        var _extraTabs:stdgo.GoInt = (3 : stdgo.GoInt);
        if (((_s.type != null) || _keepType : Bool)) {
            _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
            _extraTabs--;
        };
        if (_s.type != null) {
            _p._expr(_s.type);
        };
        if (_s.values != null) {
            _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((42 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
            _p._exprList((0 : stdgo._internal.go.token.Token.Pos), _s.values, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer.T_exprListMode), (0 : stdgo._internal.go.token.Token.Pos), false);
            _extraTabs--;
        };
        if (_s.comment != null && ((_s.comment : Dynamic).__nil__ == null || !(_s.comment : Dynamic).__nil__)) {
            stdgo.Go.cfor((_extraTabs > (0 : stdgo.GoInt) : Bool), _extraTabs--, {
                _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
            });
            _p._setComment(_s.comment);
        };
    }
    @:keep
    static public function _stmt( _p:stdgo.Ref<T_printer>, _stmt:stdgo._internal.go.ast.Ast.Stmt, _nextIsRBrace:Bool):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._setPos(_stmt.pos());
        {
            final __type__ = _stmt;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BadStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.BadStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface(("BadStmt" : stdgo.GoString)));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.DeclStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.DeclStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeclStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeclStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeclStmt>) : __type__.__underlying__().value;
                        _p._decl(_s.decl);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>) : __type__.__underlying__().value;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        _p._expr(stdgo.Go.asInterface(_s.label));
                        _p._setPos(_s.colon);
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s.stmt) : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>), _1 : false };
                            }, _e = __tmp__._0, _isEmpty = __tmp__._1;
                            if (_isEmpty) {
                                if (!_nextIsRBrace) {
                                    _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                                    _p._setPos(_e.pos());
                                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token.Token))));
                                    break;
                                };
                            } else {
                                _p._linebreak(_p._lineFor(_s.stmt.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer.T_whiteSpace), true);
                            };
                        };
                        _p._stmt(_s.stmt, _nextIsRBrace);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ExprStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.ExprStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ExprStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ExprStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ExprStmt>) : __type__.__underlying__().value;
                        {};
                        _p._expr0(_s.x, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.SendStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.SendStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SendStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SendStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SendStmt>) : __type__.__underlying__().value;
                        {};
                        _p._expr0(_s.chan, (1 : stdgo.GoInt));
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        _p._setPos(_s.arrow);
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((36 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        _p._expr0(_s.value, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.IncDecStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.IncDecStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IncDecStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IncDecStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IncDecStmt>) : __type__.__underlying__().value;
                        {};
                        _p._expr0(_s.x, (2 : stdgo.GoInt));
                        _p._setPos(_s.tokPos);
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_s.tok)));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt>) : __type__.__underlying__().value;
                        var _depth:stdgo.GoInt = (1 : stdgo.GoInt);
                        if ((((_s.lhs.length) > (1 : stdgo.GoInt) : Bool) && ((_s.rhs.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                            _depth++;
                        };
                        _p._exprList(_s.pos(), _s.lhs, _depth, (0u32 : stdgo._internal.go.printer.Printer.T_exprListMode), _s.tokPos, false);
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        _p._setPos(_s.tokPos);
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_s.tok)), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        _p._exprList(_s.tokPos, _s.rhs, _depth, (0u32 : stdgo._internal.go.printer.Printer.T_exprListMode), (0 : stdgo._internal.go.token.Token.Pos), false);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.GoStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.GoStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GoStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GoStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GoStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((72 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        _p._expr(stdgo.Go.asInterface(_s.call));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.DeferStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.DeferStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeferStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeferStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeferStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((67 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        _p._expr(stdgo.Go.asInterface(_s.call));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ReturnStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.ReturnStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ReturnStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ReturnStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ReturnStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((80 : stdgo._internal.go.token.Token.Token))));
                        if (_s.results != null) {
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                            if (_p._indentList(_s.results)) {
                                _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                                _p._exprList((0 : stdgo._internal.go.token.Token.Pos), _s.results, (1 : stdgo.GoInt), (2u32 : stdgo._internal.go.printer.Printer.T_exprListMode), (0 : stdgo._internal.go.token.Token.Pos), false);
                                _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                            } else {
                                _p._exprList((0 : stdgo._internal.go.token.Token.Pos), _s.results, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer.T_exprListMode), (0 : stdgo._internal.go.token.Token.Pos), false);
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BranchStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.BranchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BranchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BranchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BranchStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_s.tok)));
                        if (_s.label != null && ((_s.label : Dynamic).__nil__ == null || !(_s.label : Dynamic).__nil__)) {
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                            _p._expr(stdgo.Go.asInterface(_s.label));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) : __type__.__underlying__().value;
                        _p._block(_s, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.IfStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.IfStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IfStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IfStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IfStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((74 : stdgo._internal.go.token.Token.Token))));
                        _p._controlClause(false, _s.init, _s.cond, (null : stdgo._internal.go.ast.Ast.Stmt));
                        _p._block(_s.body, (1 : stdgo.GoInt));
                        if (_s.else_ != null) {
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((68 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                            {
                                final __type__ = _s.else_;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.IfStmt>))) {
                                    _p._stmt(_s.else_, _nextIsRBrace);
                                } else {
                                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                                    _p._stmt(_s.else_, true);
                                    _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token.Token))));
                                };
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.CaseClause>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.CaseClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CaseClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CaseClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CaseClause>) : __type__.__underlying__().value;
                        if (_s.list != null) {
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((62 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                            _p._exprList(_s.pos(), _s.list, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer.T_exprListMode), _s.colon, false);
                        } else {
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((66 : stdgo._internal.go.token.Token.Token))));
                        };
                        _p._setPos(_s.colon);
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token.Token))));
                        _p._stmtList(_s.body, (1 : stdgo.GoInt), _nextIsRBrace);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.SwitchStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.SwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SwitchStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((83 : stdgo._internal.go.token.Token.Token))));
                        _p._controlClause(false, _s.init, _s.tag, (null : stdgo._internal.go.ast.Ast.Stmt));
                        _p._block(_s.body, (0 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSwitchStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSwitchStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((83 : stdgo._internal.go.token.Token.Token))));
                        if (_s.init != null) {
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                            _p._stmt(_s.init, false);
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token.Token))));
                        };
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        _p._stmt(_s.assign, false);
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        _p._block(_s.body, (0 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.CommClause>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.CommClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommClause>) : __type__.__underlying__().value;
                        if (_s.comm != null) {
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((62 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                            _p._stmt(_s.comm, false);
                        } else {
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((66 : stdgo._internal.go.token.Token.Token))));
                        };
                        _p._setPos(_s.colon);
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token.Token))));
                        _p._stmtList(_s.body, (1 : stdgo.GoInt), _nextIsRBrace);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.SelectStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((81 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        var _body = _s.body;
                        if (((_body.list.length == (0 : stdgo.GoInt)) && !_p._commentBefore(_p._posFor(_body.rbrace)?.__copy__()) : Bool)) {
                            _p._setPos(_body.lbrace);
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token.Token))));
                            _p._setPos(_body.rbrace);
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token.Token))));
                        } else {
                            _p._block(_body, (0 : stdgo.GoInt));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ForStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.ForStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ForStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ForStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ForStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((70 : stdgo._internal.go.token.Token.Token))));
                        _p._controlClause(true, _s.init, _s.cond, _s.post);
                        _p._block(_s.body, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.RangeStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.RangeStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.RangeStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.RangeStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.RangeStmt>) : __type__.__underlying__().value;
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((70 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        if (_s.key != null) {
                            _p._expr(_s.key);
                            if (_s.value != null) {
                                _p._setPos(_s.value.pos());
                                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                                _p._expr(_s.value);
                            };
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                            _p._setPos(_s.tokPos);
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_s.tok)), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        };
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((79 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        _p._expr(_stripParens(_s.x));
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        _p._block(_s.body, (1 : stdgo.GoInt));
                    } else {
                        var _s:stdgo._internal.go.ast.Ast.Stmt = __type__ == null ? (null : stdgo._internal.go.ast.Ast.Stmt) : cast __type__;
                        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                    };
                    break;
                };
            };
        };
    }
    @:keep
    static public function _indentList( _p:stdgo.Ref<T_printer>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>):Bool {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if (((_list.length) >= (2 : stdgo.GoInt) : Bool)) {
            var _b:stdgo.GoInt = _p._lineFor(_list[(0 : stdgo.GoInt)].pos());
            var _e:stdgo.GoInt = _p._lineFor(_list[((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end());
            if ((((0 : stdgo.GoInt) < _b : Bool) && (_b < _e : Bool) : Bool)) {
                var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                var _line:stdgo.GoInt = _b;
                for (__16 => _x in _list) {
                    var _xb:stdgo.GoInt = _p._lineFor(_x.pos());
                    var _xe:stdgo.GoInt = _p._lineFor(_x.end());
                    if ((_line < _xb : Bool)) {
                        return true;
                    };
                    if ((_xb < _xe : Bool)) {
                        _n++;
                    };
                    _line = _xe;
                };
                return (_n > (1 : stdgo.GoInt) : Bool);
            };
        };
        return false;
    }
    @:keep
    static public function _controlClause( _p:stdgo.Ref<T_printer>, _isForStmt:Bool, _init:stdgo._internal.go.ast.Ast.Stmt, _expr:stdgo._internal.go.ast.Ast.Expr, _post:stdgo._internal.go.ast.Ast.Stmt):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        var _needsBlank:Bool = false;
        if (((_init == null) && (_post == null) : Bool)) {
            if (_expr != null) {
                _p._expr(_stripParens(_expr));
                _needsBlank = true;
            };
        } else {
            if (_init != null) {
                _p._stmt(_init, false);
            };
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
            if (_expr != null) {
                _p._expr(_stripParens(_expr));
                _needsBlank = true;
            };
            if (_isForStmt) {
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                _needsBlank = false;
                if (_post != null) {
                    _p._stmt(_post, false);
                    _needsBlank = true;
                };
            };
        };
        if (_needsBlank) {
            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        };
    }
    @:keep
    static public function _block( _p:stdgo.Ref<T_printer>, _b:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>, _nindent:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._setPos(_b.lbrace);
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token.Token))));
        _p._stmtList(_b.list, _nindent, true);
        _p._linebreak(_p._lineFor(_b.rbrace), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer.T_whiteSpace), true);
        _p._setPos(_b.rbrace);
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token.Token))));
    }
    @:keep
    static public function _stmtList( _p:stdgo.Ref<T_printer>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>, _nindent:stdgo.GoInt, _nextIsRBrace:Bool):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if ((_nindent > (0 : stdgo.GoInt) : Bool)) {
            _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        };
        var _line:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__8 => _s in _list) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>), _1 : false };
                }, __9 = __tmp__._0, _isEmpty = __tmp__._1;
                if (!_isEmpty) {
                    if (((_p._output.length) > (0 : stdgo.GoInt) : Bool)) {
                        _p._linebreak(_p._lineFor(_s.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer.T_whiteSpace), ((_i == ((0 : stdgo.GoInt)) || _nindent == ((0 : stdgo.GoInt)) : Bool) || (_p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool) : Bool));
                    };
                    _p._recordLine(stdgo.Go.pointer(_line));
                    _p._stmt(_s, (_nextIsRBrace && (_i == ((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool));
                    {
                        var _t:stdgo._internal.go.ast.Ast.Stmt = _s;
                        while (true) {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>), _1 : false };
                            }, _lt = __tmp__._0, __58 = __tmp__._1;
                            if (_lt == null || (_lt : Dynamic).__nil__) {
                                break;
                            };
                            _line++;
                            _t = _lt.stmt;
                        };
                    };
                    _i++;
                };
            };
        };
        if ((_nindent > (0 : stdgo.GoInt) : Bool)) {
            _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        };
    }
    @:keep
    static public function _expr( _p:stdgo.Ref<T_printer>, _x:stdgo._internal.go.ast.Ast.Expr):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        {};
        _p._expr1(_x, (0 : stdgo.GoInt), (1 : stdgo.GoInt));
    }
    @:keep
    static public function _expr0( _p:stdgo.Ref<T_printer>, _x:stdgo._internal.go.ast.Ast.Expr, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._expr1(_x, (0 : stdgo.GoInt), _depth);
    }
    @:keep
    static public function _selectorExpr( _p:stdgo.Ref<T_printer>, _x:stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>, _depth:stdgo.GoInt, _isMethod:Bool):Bool {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._expr1(_x.x, (7 : stdgo.GoInt), _depth);
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((53 : stdgo._internal.go.token.Token.Token))));
        {
            var _line:stdgo.GoInt = _p._lineFor(_x.sel.pos());
            if ((_p._pos.isValid() && (_p._pos.line < _line : Bool) : Bool)) {
                _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                _p._setPos(_x.sel.pos());
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_x.sel)));
                if (!_isMethod) {
                    _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
                return true;
            };
        };
        _p._setPos(_x.sel.pos());
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_x.sel)));
        return false;
    }
    @:keep
    static public function _possibleSelectorExpr( _p:stdgo.Ref<T_printer>, _expr:stdgo._internal.go.ast.Ast.Expr, _prec1:stdgo.GoInt, _depth:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _p._selectorExpr(_x, _depth, true);
            };
        };
        _p._expr1(_expr, _prec1, _depth);
        return false;
    }
    @:keep
    static public function _expr1( _p:stdgo.Ref<T_printer>, _expr:stdgo._internal.go.ast.Ast.Expr, _prec1:stdgo.GoInt, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._setPos(_expr.pos());
        {
            final __type__ = _expr;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BadExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.BadExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadExpr>) : __type__.__underlying__().value;
                _p._print(stdgo.Go.toInterface(("BadExpr" : stdgo.GoString)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__().value;
                if ((_depth < (1 : stdgo.GoInt) : Bool)) {
                    _p._internalError(stdgo.Go.toInterface(("depth < 1:" : stdgo.GoString)), stdgo.Go.toInterface(_depth));
                    _depth = (1 : stdgo.GoInt);
                };
                _p._binaryExpr(_x, _prec1, _cutoff(_x, _depth), _depth);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>) : __type__.__underlying__().value;
                _p._expr(_x.key);
                _p._setPos(_x.colon);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                _p._expr(_x.value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__.__underlying__().value;
                {};
                if (((6 : stdgo.GoInt) < _prec1 : Bool)) {
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token.Token))));
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((14 : stdgo._internal.go.token.Token.Token))));
                    _p._expr(_x.x);
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token.Token))));
                } else {
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((14 : stdgo._internal.go.token.Token.Token))));
                    _p._expr(_x.x);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__.__underlying__().value;
                {};
                if (((6 : stdgo.GoInt) < _prec1 : Bool)) {
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token.Token))));
                    _p._expr(stdgo.Go.asInterface(_x));
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token.Token))));
                } else {
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_x.op)));
                    if (_x.op == ((79 : stdgo._internal.go.token.Token.Token))) {
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                    };
                    _p._expr1(_x.x, (6 : stdgo.GoInt), _depth);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>) : __type__.__underlying__().value;
                if ((_p.config.mode & (1073741824u32 : stdgo._internal.go.printer.Printer.Mode) : stdgo._internal.go.printer.Printer.Mode) != ((0u32 : stdgo._internal.go.printer.Printer.Mode))) {
                    _x = _normalizedNumber(_x);
                };
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncLit>) : __type__.__underlying__().value;
                _p._setPos(_x.type.pos());
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((71 : stdgo._internal.go.token.Token.Token))));
                var _startCol:stdgo.GoInt = (_p._out.column - (("func" : stdgo.GoString).length) : stdgo.GoInt);
                _p._signature(_x.type);
                _p._funcBody(_p._distanceFrom(_x.type.pos(), _startCol), (32 : stdgo._internal.go.printer.Printer.T_whiteSpace), _x.body);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x.x) : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>), _1 : false };
                    }, __232 = __tmp__._0, _hasParens = __tmp__._1;
                    if (_hasParens) {
                        _p._expr0(_x.x, _depth);
                    } else {
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token.Token))));
                        _p._expr0(_x.x, _reduceDepth(_depth));
                        _p._setPos(_x.rparen);
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token.Token))));
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                _p._selectorExpr(_x, _depth, false);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeAssertExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.TypeAssertExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeAssertExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeAssertExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeAssertExpr>) : __type__.__underlying__().value;
                _p._expr1(_x.x, (7 : stdgo.GoInt), _depth);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((53 : stdgo._internal.go.token.Token.Token))));
                _p._setPos(_x.lparen);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token.Token))));
                if (_x.type != null) {
                    _p._expr(_x.type);
                } else {
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((84 : stdgo._internal.go.token.Token.Token))));
                };
                _p._setPos(_x.rparen);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>) : __type__.__underlying__().value;
                _p._expr1(_x.x, (7 : stdgo.GoInt), (1 : stdgo.GoInt));
                _p._setPos(_x.lbrack);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token.Token))));
                _p._expr0(_x.index, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                _p._setPos(_x.rbrack);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>) : __type__.__underlying__().value;
                _p._expr1(_x.x, (7 : stdgo.GoInt), (1 : stdgo.GoInt));
                _p._setPos(_x.lbrack);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token.Token))));
                _p._exprList(_x.lbrack, _x.indices, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt), (1u32 : stdgo._internal.go.printer.Printer.T_exprListMode), _x.rbrack, false);
                _p._setPos(_x.rbrack);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.SliceExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.SliceExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SliceExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SliceExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SliceExpr>) : __type__.__underlying__().value;
                _p._expr1(_x.x, (7 : stdgo.GoInt), (1 : stdgo.GoInt));
                _p._setPos(_x.lbrack);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token.Token))));
                var _indices = (new stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>(2, 2, ...[_x.low, _x.high]) : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>);
                if (_x.max != null) {
                    _indices = (_indices.__append__(_x.max));
                };
                var _needsBlanks:Bool = false;
                if ((_depth <= (1 : stdgo.GoInt) : Bool)) {
                    var _indexCount:stdgo.GoInt = (0 : stdgo.GoInt);
                    var _hasBinaries:Bool = false;
                    for (__465 => _x in _indices) {
                        if (_x != null) {
                            _indexCount++;
                            if (_isBinary(_x)) {
                                _hasBinaries = true;
                            };
                        };
                    };
                    if (((_indexCount > (1 : stdgo.GoInt) : Bool) && _hasBinaries : Bool)) {
                        _needsBlanks = true;
                    };
                };
                for (_i => _x in _indices) {
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        if (((_indices[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] != null) && _needsBlanks : Bool)) {
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        };
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token.Token))));
                        if (((_x != null) && _needsBlanks : Bool)) {
                            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        };
                    };
                    if (_x != null) {
                        _p._expr0(_x, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                    };
                };
                _p._setPos(_x.rbrack);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr>) : __type__.__underlying__().value;
                if (((_x.args.length) > (1 : stdgo.GoInt) : Bool)) {
                    _depth++;
                };
                var _wasIndented:Bool = false;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x.fun) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>), _1 : false };
                    }, __514 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token.Token))));
                        _wasIndented = _p._possibleSelectorExpr(_x.fun, (7 : stdgo.GoInt), _depth);
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token.Token))));
                    } else {
                        _wasIndented = _p._possibleSelectorExpr(_x.fun, (7 : stdgo.GoInt), _depth);
                    };
                };
                _p._setPos(_x.lparen);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token.Token))));
                if (_x.ellipsis.isValid()) {
                    _p._exprList(_x.lparen, _x.args, _depth, (0u32 : stdgo._internal.go.printer.Printer.T_exprListMode), _x.ellipsis, false);
                    _p._setPos(_x.ellipsis);
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((48 : stdgo._internal.go.token.Token.Token))));
                    if ((_x.rparen.isValid() && (_p._lineFor(_x.ellipsis) < _p._lineFor(_x.rparen) : Bool) : Bool)) {
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                    };
                } else {
                    _p._exprList(_x.lparen, _x.args, _depth, (1u32 : stdgo._internal.go.printer.Printer.T_exprListMode), _x.rparen, false);
                };
                _p._setPos(_x.rparen);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token.Token))));
                if (_wasIndented) {
                    _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__.__underlying__().value;
                if (_x.type != null) {
                    _p._expr1(_x.type, (7 : stdgo.GoInt), _depth);
                };
                _p._level++;
                _p._setPos(_x.lbrace);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token.Token))));
                _p._exprList(_x.lbrace, _x.elts, (1 : stdgo.GoInt), (1u32 : stdgo._internal.go.printer.Printer.T_exprListMode), _x.rbrace, _x.incomplete);
                var _mode:stdgo._internal.go.printer.Printer.T_pmode = (2 : stdgo._internal.go.printer.Printer.T_pmode);
                if (((_x.elts.length) > (0 : stdgo.GoInt) : Bool)) {
                    _mode = (_mode | ((1 : stdgo._internal.go.printer.Printer.T_pmode)) : stdgo._internal.go.printer.Printer.T_pmode);
                };
                _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface(_mode));
                _p._setPos(_x.rbrace);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface(_mode));
                _p._level--;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.Ellipsis>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.Ellipsis> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ellipsis>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ellipsis>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ellipsis>) : __type__.__underlying__().value;
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((48 : stdgo._internal.go.token.Token.Token))));
                if (_x.elt != null) {
                    _p._expr(_x.elt);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType>) : __type__.__underlying__().value;
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token.Token))));
                if (_x.len != null) {
                    _p._expr(_x.len);
                };
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token.Token))));
                _p._expr(_x.elt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.StructType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StructType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StructType>) : __type__.__underlying__().value;
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((82 : stdgo._internal.go.token.Token.Token))));
                _p._fieldList(_x.fields, true, _x.incomplete);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>) : __type__.__underlying__().value;
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((71 : stdgo._internal.go.token.Token.Token))));
                _p._signature(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType>) : __type__.__underlying__().value;
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((76 : stdgo._internal.go.token.Token.Token))));
                _p._fieldList(_x.methods, false, _x.incomplete);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.MapType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.MapType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.MapType>) : __type__.__underlying__().value;
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((77 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token.Token))));
                _p._expr(_x.key);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token.Token))));
                _p._expr(_x.value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType>) : __type__.__underlying__().value;
                {
                    final __value__ = _x.dir;
                    if (__value__ == ((3 : stdgo._internal.go.ast.Ast.ChanDir))) {
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((63 : stdgo._internal.go.token.Token.Token))));
                    } else if (__value__ == ((2 : stdgo._internal.go.ast.Ast.ChanDir))) {
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((36 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface(stdgo.Go.asInterface((63 : stdgo._internal.go.token.Token.Token))));
                    } else if (__value__ == ((1 : stdgo._internal.go.ast.Ast.ChanDir))) {
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((63 : stdgo._internal.go.token.Token.Token))));
                        _p._setPos(_x.arrow);
                        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((36 : stdgo._internal.go.token.Token.Token))));
                    };
                };
                _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                _p._expr(_x.value);
            } else {
                var _x:stdgo._internal.go.ast.Ast.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast.Expr) : cast __type__;
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
    @:keep
    static public function _binaryExpr( _p:stdgo.Ref<T_printer>, _x:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>, _prec1:stdgo.GoInt, _cutoff:stdgo.GoInt, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _prec:stdgo.GoInt = _x.op.precedence();
        if ((_prec < _prec1 : Bool)) {
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token.Token))));
            _p._expr0(stdgo.Go.asInterface(_x), _reduceDepth(_depth));
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token.Token))));
            return;
        };
        var _printBlank:Bool = (_prec < _cutoff : Bool);
        var _ws:stdgo._internal.go.printer.Printer.T_whiteSpace = (62 : stdgo._internal.go.printer.Printer.T_whiteSpace);
        _p._expr1(_x.x, _prec, (_depth + _diffPrec(_x.x, _prec) : stdgo.GoInt));
        if (_printBlank) {
            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        };
        var _xline:stdgo.GoInt = _p._pos.line;
        var _yline:stdgo.GoInt = _p._lineFor(_x.y.pos());
        _p._setPos(_x.opPos);
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_x.op)));
        if (((_xline != (_yline) && (_xline > (0 : stdgo.GoInt) : Bool) : Bool) && (_yline > (0 : stdgo.GoInt) : Bool) : Bool)) {
            if ((_p._linebreak(_yline, (1 : stdgo.GoInt), _ws, true) > (0 : stdgo.GoInt) : Bool)) {
                _ws = (0 : stdgo._internal.go.printer.Printer.T_whiteSpace);
                _printBlank = false;
            };
        };
        if (_printBlank) {
            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        };
        _p._expr1(_x.y, (_prec + (1 : stdgo.GoInt) : stdgo.GoInt), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
        if (_ws == ((0 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
            _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        };
    }
    @:keep
    static public function _fieldList( _p:stdgo.Ref<T_printer>, _fields:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>, _isStruct:Bool, _isIncomplete:Bool):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _lbrace:stdgo._internal.go.token.Token.Pos = _fields.opening;
        var _list = _fields.list;
        var _rbrace:stdgo._internal.go.token.Token.Pos = _fields.closing;
        var _hasComments:Bool = (_isIncomplete || _p._commentBefore(_p._posFor(_rbrace)?.__copy__()) : Bool);
        var _srcIsOneLine:Bool = ((_lbrace.isValid() && _rbrace.isValid() : Bool) && (_p._lineFor(_lbrace) == _p._lineFor(_rbrace)) : Bool);
        if ((!_hasComments && _srcIsOneLine : Bool)) {
            if ((_list.length) == ((0 : stdgo.GoInt))) {
                _p._setPos(_lbrace);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token.Token))));
                _p._setPos(_rbrace);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token.Token))));
                return;
            } else if (_p._isOneLineFieldList(_list)) {
                _p._setPos(_lbrace);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                var _f = _list[(0 : stdgo.GoInt)];
                if (_isStruct) {
                    for (_i => _x in _f.names) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                        };
                        _p._expr(stdgo.Go.asInterface(_x));
                    };
                    if (((_f.names.length) > (0 : stdgo.GoInt) : Bool)) {
                        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                    };
                    _p._expr(_f.type);
                } else {
                    if (((_f.names.length) > (0 : stdgo.GoInt) : Bool)) {
                        var _name = _f.names[(0 : stdgo.GoInt)];
                        _p._expr(stdgo.Go.asInterface(_name));
                        _p._signature((stdgo.Go.typeAssert((stdgo.Go.toInterface(_f.type) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>));
                    } else {
                        _p._expr(_f.type);
                    };
                };
                _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                _p._setPos(_rbrace);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token.Token))));
                return;
            };
        };
        _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        _p._setPos(_lbrace);
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        if ((_hasComments || ((_list.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        };
        if (_isStruct) {
            var _sep:stdgo._internal.go.printer.Printer.T_whiteSpace = (11 : stdgo._internal.go.printer.Printer.T_whiteSpace);
            if ((_list.length) == ((1 : stdgo.GoInt))) {
                _sep = (32 : stdgo._internal.go.printer.Printer.T_whiteSpace);
            };
            var _line:stdgo.GoInt = (0 : stdgo.GoInt);
            for (_i => _f in _list) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _p._linebreak(_p._lineFor(_f.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer.T_whiteSpace), (_p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                };
                var _extraTabs:stdgo.GoInt = (0 : stdgo.GoInt);
                _p._setComment(_f.doc);
                _p._recordLine(stdgo.Go.pointer(_line));
                if (((_f.names.length) > (0 : stdgo.GoInt) : Bool)) {
                    _p._identList(_f.names, false);
                    _p._print(stdgo.Go.toInterface(_sep));
                    _p._expr(_f.type);
                    _extraTabs = (1 : stdgo.GoInt);
                } else {
                    _p._expr(_f.type);
                    _extraTabs = (2 : stdgo.GoInt);
                };
                if (_f.tag != null && ((_f.tag : Dynamic).__nil__ == null || !(_f.tag : Dynamic).__nil__)) {
                    if ((((_f.names.length) > (0 : stdgo.GoInt) : Bool) && (_sep == (11 : stdgo._internal.go.printer.Printer.T_whiteSpace)) : Bool)) {
                        _p._print(stdgo.Go.toInterface(_sep));
                    };
                    _p._print(stdgo.Go.toInterface(_sep));
                    _p._expr(stdgo.Go.asInterface(_f.tag));
                    _extraTabs = (0 : stdgo.GoInt);
                };
                if (_f.comment != null && ((_f.comment : Dynamic).__nil__ == null || !(_f.comment : Dynamic).__nil__)) {
                    stdgo.Go.cfor((_extraTabs > (0 : stdgo.GoInt) : Bool), _extraTabs--, {
                        _p._print(stdgo.Go.toInterface(_sep));
                    });
                    _p._setComment(_f.comment);
                };
            };
            if (_isIncomplete) {
                if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                    _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
                _p._flush(_p._posFor(_rbrace)?.__copy__(), (56 : stdgo._internal.go.token.Token.Token));
                _p._setLineComment(("// contains filtered or unexported fields" : stdgo.GoString));
            };
        } else {
            var _line:stdgo.GoInt = (0 : stdgo.GoInt);
            var _prev:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>);
            for (_i => _f in _list) {
                var _name:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>);
                if (((_f.names.length) > (0 : stdgo.GoInt) : Bool)) {
                    _name = _f.names[(0 : stdgo.GoInt)];
                };
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var _min:stdgo.GoInt = (1 : stdgo.GoInt);
                    if ((((_prev != null) && ((_prev : Dynamic).__nil__ == null || !(_prev : Dynamic).__nil__)) && (_name == _prev) : Bool)) {
                        _min = (0 : stdgo.GoInt);
                    };
                    _p._linebreak(_p._lineFor(_f.pos()), _min, (0 : stdgo._internal.go.printer.Printer.T_whiteSpace), (_p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                };
                _p._setComment(_f.doc);
                _p._recordLine(stdgo.Go.pointer(_line));
                if (_name != null && ((_name : Dynamic).__nil__ == null || !(_name : Dynamic).__nil__)) {
                    _p._expr(stdgo.Go.asInterface(_name));
                    _p._signature((stdgo.Go.typeAssert((stdgo.Go.toInterface(_f.type) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>));
                    _prev = null;
                } else {
                    _p._expr(_f.type);
                    _prev = null;
                };
                _p._setComment(_f.comment);
            };
            if (_isIncomplete) {
                if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                    _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
                _p._flush(_p._posFor(_rbrace)?.__copy__(), (56 : stdgo._internal.go.token.Token.Token));
                _p._setLineComment(("// contains filtered or unexported methods" : stdgo.GoString));
            };
        };
        _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        _p._setPos(_rbrace);
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token.Token))));
    }
    @:keep
    static public function _setLineComment( _p:stdgo.Ref<T_printer>, _text:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        _p._setComment((stdgo.Go.setRef(({ list : (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>(1, 1, ...[({ slash : (0 : stdgo._internal.go.token.Token.Pos), text : _text?.__copy__() } : stdgo._internal.go.ast.Ast.Comment)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>) } : stdgo._internal.go.ast.Ast.CommentGroup)) : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>));
    }
    @:keep
    static public function _isOneLineFieldList( _p:stdgo.Ref<T_printer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Field>>):Bool {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if ((_list.length) != ((1 : stdgo.GoInt))) {
            return false;
        };
        var _f = _list[(0 : stdgo.GoInt)];
        if ((((_f.tag != null) && ((_f.tag : Dynamic).__nil__ == null || !(_f.tag : Dynamic).__nil__)) || ((_f.comment != null) && ((_f.comment : Dynamic).__nil__ == null || !(_f.comment : Dynamic).__nil__)) : Bool)) {
            return false;
        };
        {};
        var _namesSize:stdgo.GoInt = _identListSize(_f.names, (30 : stdgo.GoInt));
        if ((_namesSize > (0 : stdgo.GoInt) : Bool)) {
            _namesSize = (1 : stdgo.GoInt);
        };
        var _typeSize:stdgo.GoInt = _p._nodeSize(_f.type, (30 : stdgo.GoInt));
        return ((_namesSize + _typeSize : stdgo.GoInt) <= (30 : stdgo.GoInt) : Bool);
    }
    @:keep
    static public function _signature( _p:stdgo.Ref<T_printer>, _sig:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if (_sig.typeParams != null && ((_sig.typeParams : Dynamic).__nil__ == null || !(_sig.typeParams : Dynamic).__nil__)) {
            _p._parameters(_sig.typeParams, (1 : stdgo._internal.go.printer.Printer.T_paramMode));
        };
        if (_sig.params != null && ((_sig.params : Dynamic).__nil__ == null || !(_sig.params : Dynamic).__nil__)) {
            _p._parameters(_sig.params, (0 : stdgo._internal.go.printer.Printer.T_paramMode));
        } else {
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token.Token))));
        };
        var _res = _sig.results;
        var _n:stdgo.GoInt = _res.numFields();
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
            if (((_n == (1 : stdgo.GoInt)) && (_res.list[(0 : stdgo.GoInt)].names == null) : Bool)) {
                _p._expr(_stripParensAlways(_res.list[(0 : stdgo.GoInt)].type));
                return;
            };
            _p._parameters(_res, (0 : stdgo._internal.go.printer.Printer.T_paramMode));
        };
    }
    @:keep
    static public function _parameters( _p:stdgo.Ref<T_printer>, _fields:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>, _mode:T_paramMode):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var __0:stdgo._internal.go.token.Token.Token = (49 : stdgo._internal.go.token.Token.Token), __1:stdgo._internal.go.token.Token.Token = (54 : stdgo._internal.go.token.Token.Token), _closeTok:stdgo._internal.go.token.Token.Token = __1, _openTok:stdgo._internal.go.token.Token.Token = __0;
        if (_mode != ((0 : stdgo._internal.go.printer.Printer.T_paramMode))) {
            {
                final __tmp__0 = (50 : stdgo._internal.go.token.Token.Token);
                final __tmp__1 = (55 : stdgo._internal.go.token.Token.Token);
                _openTok = __tmp__0;
                _closeTok = __tmp__1;
            };
        };
        _p._setPos(_fields.opening);
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_openTok)));
        if (((_fields.list.length) > (0 : stdgo.GoInt) : Bool)) {
            var _prevLine:stdgo.GoInt = _p._lineFor(_fields.opening);
            var _ws:stdgo._internal.go.printer.Printer.T_whiteSpace = (62 : stdgo._internal.go.printer.Printer.T_whiteSpace);
            for (_i => _par in _fields.list) {
                var _parLineBeg:stdgo.GoInt = _p._lineFor(_par.pos());
                var _parLineEnd:stdgo.GoInt = _p._lineFor(_par.end());
                var _needsLinebreak:Bool = (((0 : stdgo.GoInt) < _prevLine : Bool) && (_prevLine < _parLineBeg : Bool) : Bool);
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    if (!_needsLinebreak) {
                        _p._setPos(_par.pos());
                    };
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token.Token))));
                };
                if ((_needsLinebreak && (_p._linebreak(_parLineBeg, (0 : stdgo.GoInt), _ws, true) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _ws = (0 : stdgo._internal.go.printer.Printer.T_whiteSpace);
                } else if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
                if (((_par.names.length) > (0 : stdgo.GoInt) : Bool)) {
                    _p._identList(_par.names, _ws == ((62 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
                _p._expr(_stripParensAlways(_par.type));
                _prevLine = _parLineEnd;
            };
            {
                var _closing:stdgo.GoInt = _p._lineFor(_fields.closing);
                if ((((0 : stdgo.GoInt) < _prevLine : Bool) && (_prevLine < _closing : Bool) : Bool)) {
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token.Token))));
                    _p._linebreak(_closing, (0 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer.T_whiteSpace), true);
                } else if (((_mode == ((2 : stdgo._internal.go.printer.Printer.T_paramMode)) && _fields.numFields() == ((1 : stdgo.GoInt)) : Bool) && _combinesWithName(_fields.list[(0 : stdgo.GoInt)].type) : Bool)) {
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token.Token))));
                };
            };
            if (_ws == ((0 : stdgo._internal.go.printer.Printer.T_whiteSpace))) {
                _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
            };
        };
        _p._setPos(_fields.closing);
        _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_closeTok)));
    }
    @:keep
    static public function _exprList( _p:stdgo.Ref<T_printer>, _prev0:stdgo._internal.go.token.Token.Pos, _list:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>, _depth:stdgo.GoInt, _mode:T_exprListMode, _next0:stdgo._internal.go.token.Token.Pos, _isIncomplete:Bool):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if ((_list.length) == ((0 : stdgo.GoInt))) {
            if (_isIncomplete) {
                var _prev:stdgo._internal.go.token.Token.Position = _p._posFor(_prev0)?.__copy__();
                var _next:stdgo._internal.go.token.Token.Position = _p._posFor(_next0)?.__copy__();
                if ((_prev.isValid() && (_prev.line == _next.line) : Bool)) {
                    _p._print(stdgo.Go.toInterface(("/* contains filtered or unexported fields */" : stdgo.GoString)));
                } else {
                    _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                    _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface(("// contains filtered or unexported fields" : stdgo.GoString)), stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
            };
            return;
        };
        var _prev:stdgo._internal.go.token.Token.Position = _p._posFor(_prev0)?.__copy__();
        var _next:stdgo._internal.go.token.Token.Position = _p._posFor(_next0)?.__copy__();
        var _line:stdgo.GoInt = _p._lineFor(_list[(0 : stdgo.GoInt)].pos());
        var _endLine:stdgo.GoInt = _p._lineFor(_list[((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end());
        if (((_prev.isValid() && _prev.line == (_line) : Bool) && (_line == _endLine) : Bool)) {
            for (_i => _x in _list) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _p._setPos(_x.pos());
                    _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
                _p._expr0(_x, _depth);
            };
            if (_isIncomplete) {
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)), stdgo.Go.toInterface(("/* contains filtered or unexported fields */" : stdgo.GoString)));
            };
            return;
        };
        var _ws:stdgo._internal.go.printer.Printer.T_whiteSpace = (0 : stdgo._internal.go.printer.Printer.T_whiteSpace);
        if ((_mode & (2u32 : stdgo._internal.go.printer.Printer.T_exprListMode) : stdgo._internal.go.printer.Printer.T_exprListMode) == ((0u32 : stdgo._internal.go.printer.Printer.T_exprListMode))) {
            _ws = (62 : stdgo._internal.go.printer.Printer.T_whiteSpace);
        };
        var _prevBreak:stdgo.GoInt = (-1 : stdgo.GoInt);
        if (((_prev.isValid() && (_prev.line < _line : Bool) : Bool) && (_p._linebreak(_line, (0 : stdgo.GoInt), _ws, true) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _ws = (0 : stdgo._internal.go.printer.Printer.T_whiteSpace);
            _prevBreak = (0 : stdgo.GoInt);
        };
        var _size:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lnsum:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _count:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevLine:stdgo.GoInt = _prev.line;
        for (_i => _x in _list) {
            _line = _p._lineFor(_x.pos());
            var _useFF:Bool = true;
            var _prevSize:stdgo.GoInt = _size;
            {};
            _size = _p._nodeSize(_x, (1000000 : stdgo.GoInt));
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>), _1 : false };
            }, _pair = __tmp__._0, _isPair = __tmp__._1;
            if ((((_size <= (1000000 : stdgo.GoInt) : Bool) && _prev.isValid() : Bool) && _next.isValid() : Bool)) {
                if (_isPair) {
                    _size = _p._nodeSize(_pair.key, (1000000 : stdgo.GoInt));
                };
            } else {
                _size = (0 : stdgo.GoInt);
            };
            if (((_prevSize > (0 : stdgo.GoInt) : Bool) && (_size > (0 : stdgo.GoInt) : Bool) : Bool)) {
                {};
                if (((_count == (0 : stdgo.GoInt)) || ((_prevSize <= (40 : stdgo.GoInt) : Bool) && (_size <= (40 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                    _useFF = false;
                } else {
                    {};
                    var _geomean:stdgo.GoFloat64 = stdgo._internal.math.Math.exp((_lnsum / (_count : stdgo.GoFloat64) : stdgo.GoFloat64));
                    var _ratio:stdgo.GoFloat64 = ((_size : stdgo.GoFloat64) / _geomean : stdgo.GoFloat64);
                    _useFF = ((((2.5 : stdgo.GoFloat64) * _ratio : stdgo.GoFloat64) <= (1 : stdgo.GoFloat64) : Bool) || ((2.5 : stdgo.GoFloat64) <= _ratio : Bool) : Bool);
                };
            };
            var _needsLinebreak:Bool = (((0 : stdgo.GoInt) < _prevLine : Bool) && (_prevLine < _line : Bool) : Bool);
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                if (!_needsLinebreak) {
                    _p._setPos(_x.pos());
                };
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token.Token))));
                var _needsBlank:Bool = true;
                if (_needsLinebreak) {
                    var _nbreaks:stdgo.GoInt = _p._linebreak(_line, (0 : stdgo.GoInt), _ws, (_useFF || ((_prevBreak + (1 : stdgo.GoInt) : stdgo.GoInt) < _i : Bool) : Bool));
                    if ((_nbreaks > (0 : stdgo.GoInt) : Bool)) {
                        _ws = (0 : stdgo._internal.go.printer.Printer.T_whiteSpace);
                        _prevBreak = _i;
                        _needsBlank = false;
                    };
                    if ((_nbreaks > (1 : stdgo.GoInt) : Bool)) {
                        _lnsum = (0 : stdgo.GoFloat64);
                        _count = (0 : stdgo.GoInt);
                    };
                };
                if (_needsBlank) {
                    _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                };
            };
            if ((((((_list.length) > (1 : stdgo.GoInt) : Bool) && _isPair : Bool) && (_size > (0 : stdgo.GoInt) : Bool) : Bool) && _needsLinebreak : Bool)) {
                _p._expr(_pair.key);
                _p._setPos(_pair.colon);
                _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                _p._expr(_pair.value);
            } else {
                _p._expr0(_x, _depth);
            };
            if ((_size > (0 : stdgo.GoInt) : Bool)) {
                _lnsum = (_lnsum + (stdgo._internal.math.Math.log((_size : stdgo.GoFloat64))) : stdgo.GoFloat64);
                _count++;
            };
            _prevLine = _line;
        };
        if ((((_mode & (1u32 : stdgo._internal.go.printer.Printer.T_exprListMode) : stdgo._internal.go.printer.Printer.T_exprListMode) != ((0u32 : stdgo._internal.go.printer.Printer.T_exprListMode)) && _next.isValid() : Bool) && (_p._pos.line < _next.line : Bool) : Bool)) {
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token.Token))));
            if (_isIncomplete) {
                _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                _p._print(stdgo.Go.toInterface(("// contains filtered or unexported fields" : stdgo.GoString)));
            };
            if (((_ws == (0 : stdgo._internal.go.printer.Printer.T_whiteSpace)) && ((_mode & (2u32 : stdgo._internal.go.printer.Printer.T_exprListMode) : stdgo._internal.go.printer.Printer.T_exprListMode) == (0u32 : stdgo._internal.go.printer.Printer.T_exprListMode)) : Bool)) {
                _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
            };
            _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
            return;
        };
        if (_isIncomplete) {
            _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token.Token))), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
            _p._print(stdgo.Go.toInterface(("// contains filtered or unexported fields" : stdgo.GoString)), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        };
        if (((_ws == (0 : stdgo._internal.go.printer.Printer.T_whiteSpace)) && ((_mode & (2u32 : stdgo._internal.go.printer.Printer.T_exprListMode) : stdgo._internal.go.printer.Printer.T_exprListMode) == (0u32 : stdgo._internal.go.printer.Printer.T_exprListMode)) : Bool)) {
            _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
        };
    }
    @:keep
    static public function _identList( _p:stdgo.Ref<T_printer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>, _indent:Bool):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _xlist = (new stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>((_list.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>);
        for (_i => _x in _list) {
            _xlist[(_i : stdgo.GoInt)] = stdgo.Go.asInterface(_x);
        };
        var _mode:T_exprListMode = ((0 : stdgo.GoUInt) : stdgo._internal.go.printer.Printer.T_exprListMode);
        if (!_indent) {
            _mode = (2u32 : stdgo._internal.go.printer.Printer.T_exprListMode);
        };
        _p._exprList((0 : stdgo._internal.go.token.Token.Pos), _xlist, (1 : stdgo.GoInt), _mode, (0 : stdgo._internal.go.token.Token.Pos), false);
    }
    @:keep
    static public function _setComment( _p:stdgo.Ref<T_printer>, _g:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if ((((_g == null) || (_g : Dynamic).__nil__) || !_p._useNodeComments : Bool)) {
            return;
        };
        if (_p._comments == null) {
            _p._comments = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
        } else if ((_p._commentInfo._cindex < (_p._comments.length) : Bool)) {
            _p._flush(_p._posFor(_g.list[(0 : stdgo.GoInt)].pos())?.__copy__(), (0 : stdgo._internal.go.token.Token.Token));
            _p._comments = (_p._comments.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
            _p._internalError(stdgo.Go.toInterface(("setComment found pending comments" : stdgo.GoString)));
        };
        _p._comments[(0 : stdgo.GoInt)] = _g;
        _p._commentInfo._cindex = (0 : stdgo.GoInt);
        if (_p._commentInfo._commentOffset == ((1073741824 : stdgo.GoInt))) {
            _p._nextComment();
        };
    }
    @:keep
    static public function _linebreak( _p:stdgo.Ref<T_printer>, _line:stdgo.GoInt, _min:stdgo.GoInt, _ws:T_whiteSpace, _newSection:Bool):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _nbreaks:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n:stdgo.GoInt = _nlimit((_line - _p._pos.line : stdgo.GoInt));
        if ((_n < _min : Bool)) {
            _n = _min;
        };
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _p._print(stdgo.Go.toInterface(_ws));
            if (_newSection) {
                _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
                _n--;
                _nbreaks = (2 : stdgo.GoInt);
            };
            _nbreaks = (_nbreaks + (_n) : stdgo.GoInt);
            stdgo.Go.cfor((_n > (0 : stdgo.GoInt) : Bool), _n--, {
                _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer.T_whiteSpace)));
            });
        };
        return _nbreaks;
    }
    @:keep
    static public function _commentTextAt( _p:stdgo.Ref<T_printer>, _start:stdgo.GoInt):stdgo.GoString {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if (((_start < (_p._output.length) : Bool) && (_p._output[(_start : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) : Bool)) {
            _start++;
        };
        var _pos:stdgo.GoInt = _start;
        while ((((_pos < (_p._output.length) : Bool) && _p._output[(_pos : stdgo.GoInt)] != ((255 : stdgo.GoUInt8)) : Bool) && !_isNL(_p._output[(_pos : stdgo.GoInt)]) : Bool)) {
            _pos++;
        };
        return ((_p._output.__slice__(_start, _pos) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _lineAt( _p:stdgo.Ref<T_printer>, _start:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _pos:stdgo.GoInt = _start;
        while (((_pos < (_p._output.length) : Bool) && !_isNL(_p._output[(_pos : stdgo.GoInt)]) : Bool)) {
            _pos++;
        };
        if ((_pos < (_p._output.length) : Bool)) {
            _pos++;
        };
        return (_p._output.__slice__(_start, _pos) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _fixGoBuildLines( _p:stdgo.Ref<T_printer>):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if (((_p._goBuild.length) + (_p._plusBuild.length) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _insert:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _pos:stdgo.GoInt = (0 : stdgo.GoInt);
            while (true) {
                var _blank:Bool = true;
                while (((_pos < (_p._output.length) : Bool) && (((_p._output[(_pos : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_p._output[(_pos : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _pos++;
                };
                if ((((((_pos + (3 : stdgo.GoInt) : stdgo.GoInt) < (_p._output.length) : Bool) && _p._output[(_pos : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) : Bool) && _p._output[(_pos + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) && (_p._output[(_pos + (2 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
                    _blank = false;
                    while (((_pos < (_p._output.length) : Bool) && !_isNL(_p._output[(_pos : stdgo.GoInt)]) : Bool)) {
                        _pos++;
                    };
                };
                if (((_pos >= (_p._output.length) : Bool) || !_isNL(_p._output[(_pos : stdgo.GoInt)]) : Bool)) {
                    break;
                };
                _pos++;
                if (_blank) {
                    _insert = _pos;
                };
            };
        };
        if ((((_p._goBuild.length) > (0 : stdgo.GoInt) : Bool) && (_p._goBuild[(0 : stdgo.GoInt)] < _insert : Bool) : Bool)) {
            _insert = _p._goBuild[(0 : stdgo.GoInt)];
        } else if ((((_p._plusBuild.length) > (0 : stdgo.GoInt) : Bool) && (_p._plusBuild[(0 : stdgo.GoInt)] < _insert : Bool) : Bool)) {
            _insert = _p._plusBuild[(0 : stdgo.GoInt)];
        };
        var _x:stdgo._internal.go.build.constraint.Constraint.Expr = (null : stdgo._internal.go.build.constraint.Constraint.Expr);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (_p._goBuild.length);
                    if (__value__ == ((0 : stdgo.GoInt))) {
                        for (__168 => _pos in _p._plusBuild) {
                            var __tmp__ = stdgo._internal.go.build.constraint.Constraint.parse(_p._commentTextAt(_pos)?.__copy__()), _y:stdgo._internal.go.build.constraint.Constraint.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _x = (null : stdgo._internal.go.build.constraint.Constraint.Expr);
                                break;
                            };
                            if (_x == null) {
                                _x = _y;
                            } else {
                                _x = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, y : _y } : stdgo._internal.go.build.constraint.Constraint.AndExpr)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint.AndExpr>));
                            };
                        };
                        break;
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        {
                            var __tmp__ = stdgo._internal.go.build.constraint.Constraint.parse(_p._commentTextAt(_p._goBuild[(0 : stdgo.GoInt)])?.__copy__());
                            _x = __tmp__._0;
                        };
                        break;
                    };
                };
                break;
            };
        };
        var _block:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        if (_x == null) {
            for (__201 => _pos in _p._goBuild) {
                _block = (_block.__append__(...(_p._lineAt(_pos) : Array<stdgo.GoUInt8>)));
            };
            for (__218 => _pos in _p._plusBuild) {
                _block = (_block.__append__(...(_p._lineAt(_pos) : Array<stdgo.GoUInt8>)));
            };
        } else {
            _block = (_block.__append__((255 : stdgo.GoUInt8)));
            _block = (_block.__append__(...(("//go:build " : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            _block = (_block.__append__(...((_x.string() : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            _block = (_block.__append__((255 : stdgo.GoUInt8), (10 : stdgo.GoUInt8)));
            if (((_p._plusBuild.length) > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.go.build.constraint.Constraint.plusBuildLines(_x), _lines:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _lines = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(("// +build error: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                for (__235 => _line in _lines) {
                    _block = (_block.__append__((255 : stdgo.GoUInt8)));
                    _block = (_block.__append__(...(_line : Array<stdgo.GoUInt8>)));
                    _block = (_block.__append__((255 : stdgo.GoUInt8), (10 : stdgo.GoUInt8)));
                };
            };
        };
        _block = (_block.__append__((10 : stdgo.GoUInt8)));
        var _toDelete = (_p._goBuild.__append__(...(_p._plusBuild : Array<stdgo.GoInt>)));
        stdgo._internal.sort.Sort.ints(_toDelete);
        var _after:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _start:stdgo.GoInt = _insert;
        for (__252 => _end in _toDelete) {
            if ((_end < _start : Bool)) {
                continue;
            };
            _after = _appendLines(_after, (_p._output.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
            _start = (_end + (_p._lineAt(_end).length) : stdgo.GoInt);
        };
        _after = _appendLines(_after, (_p._output.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>));
        {
            var _n:stdgo.GoInt = (_after.length);
            if ((((_n >= (2 : stdgo.GoInt) : Bool) && _isNL(_after[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && _isNL(_after[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                _after = (_after.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        _p._output = (_p._output.__slice__(0, _insert) : stdgo.Slice<stdgo.GoUInt8>);
        _p._output = (_p._output.__append__(...(_block : Array<stdgo.GoUInt8>)));
        _p._output = (_p._output.__append__(...(_after : Array<stdgo.GoUInt8>)));
    }
    @:embedded
    public static function _fprint( __self__:T_printer, _output:stdgo._internal.io.Io.Writer, _fset_:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface, _nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt>):stdgo.Error return __self__._fprint(_output, _fset_, _node, _nodeSizes);
    @:embedded
    public static function fprint( __self__:T_printer, _output:stdgo._internal.io.Io.Writer, _fset_:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface):stdgo.Error return __self__.fprint(_output, _fset_, _node);
}
class T_trimmer_asInterface {
    @:keep
    public dynamic function write(_data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_data);
    @:keep
    public dynamic function _resetSpace():Void __self__.value._resetSpace();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_trimmer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.printer.Printer.T_trimmer_asInterface) class T_trimmer_static_extension {
    @:keep
    static public function write( _p:stdgo.Ref<T_trimmer>, _data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<T_trimmer> = _p;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b:stdgo.GoByte = (0 : stdgo.GoUInt8);
        for (__key__ => __value__ in _data) {
            _b = __value__;
            _n = __key__;
            if (_b == ((11 : stdgo.GoUInt8))) {
                _b = (9 : stdgo.GoUInt8);
            };
            {
                final __value__ = _p._state;
                if (__value__ == ((0 : stdgo.GoInt))) {
                    {
                        final __value__ = _b;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((32 : stdgo.GoUInt8))) {
                            _p._space = (_p._space.__append__(_b));
                        } else if (__value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                            _p._resetSpace();
                            {
                                var __tmp__ = _p._output.write(_aNewline);
                                _err = __tmp__._1;
                            };
                        } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = _p._output.write(_p._space);
                                _err = __tmp__._1;
                            };
                            _p._state = (1 : stdgo.GoInt);
                            _m = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
                        } else {
                            {
                                var __tmp__ = _p._output.write(_p._space);
                                _err = __tmp__._1;
                            };
                            _p._state = (2 : stdgo.GoInt);
                            _m = _n;
                        };
                    };
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    if (_b == ((255 : stdgo.GoUInt8))) {
                        {
                            var __tmp__ = _p._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                            _err = __tmp__._1;
                        };
                        _p._resetSpace();
                    };
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    {
                        final __value__ = _b;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((32 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = _p._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                _err = __tmp__._1;
                            };
                            _p._resetSpace();
                            _p._space = (_p._space.__append__(_b));
                        } else if (__value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = _p._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                _err = __tmp__._1;
                            };
                            _p._resetSpace();
                            if (_err == null) {
                                {
                                    var __tmp__ = _p._output.write(_aNewline);
                                    _err = __tmp__._1;
                                };
                            };
                        } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = _p._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                _err = __tmp__._1;
                            };
                            _p._state = (1 : stdgo.GoInt);
                            _m = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
                        };
                    };
                } else {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        _n = (_data.length);
        {
            final __value__ = _p._state;
            if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                {
                    var __tmp__ = _p._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                _p._resetSpace();
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _resetSpace( _p:stdgo.Ref<T_trimmer>):Void {
        @:recv var _p:stdgo.Ref<T_trimmer> = _p;
        _p._state = (0 : stdgo.GoInt);
        _p._space = (_p._space.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
class Config_asInterface {
    @:keep
    public dynamic function fprint(_output:stdgo._internal.io.Io.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface):stdgo.Error return __self__.value.fprint(_output, _fset, _node);
    @:keep
    public dynamic function _fprint(_output:stdgo._internal.io.Io.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface, _nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt>):stdgo.Error return __self__.value._fprint(_output, _fset, _node, _nodeSizes);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Config>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.printer.Printer.Config_asInterface) class Config_static_extension {
    @:keep
    static public function fprint( _cfg:stdgo.Ref<Config>, _output:stdgo._internal.io.Io.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface):stdgo.Error {
        @:recv var _cfg:stdgo.Ref<Config> = _cfg;
        return _cfg._fprint(_output, _fset, _node, ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast.Node", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt>));
    }
    @:keep
    static public function _fprint( _cfg:stdgo.Ref<Config>, _output:stdgo._internal.io.Io.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:stdgo.AnyInterface, _nodeSizes:stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.GoInt>):stdgo.Error {
        @:recv var _cfg:stdgo.Ref<Config> = _cfg;
        var __deferstack__:Array<Void -> Void> = [];
        var _err:stdgo.Error = (null : stdgo.Error);
        try {
            var _p = _newPrinter(_cfg, _fset, _nodeSizes);
            __deferstack__.unshift(() -> _p._free());
            {
                _err = _p._printNode(_node);
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            _p._impliedSemi = false;
            _p._flush(({ offset : (1073741824 : stdgo.GoInt), line : (1073741824 : stdgo.GoInt) } : stdgo._internal.go.token.Token.Position), (1 : stdgo._internal.go.token.Token.Token));
            _p._fixGoBuildLines();
            _output = stdgo.Go.asInterface((stdgo.Go.setRef(({ _output : _output } : stdgo._internal.go.printer.Printer.T_trimmer)) : stdgo.Ref<stdgo._internal.go.printer.Printer.T_trimmer>));
            if ((_cfg.mode & (1u32 : stdgo._internal.go.printer.Printer.Mode) : stdgo._internal.go.printer.Printer.Mode) == ((0u32 : stdgo._internal.go.printer.Printer.Mode))) {
                var _minwidth:stdgo.GoInt = _cfg.tabwidth;
                var _padchar:stdgo.GoUInt8 = ((9 : stdgo.GoUInt8) : stdgo.GoByte);
                if ((_cfg.mode & (4u32 : stdgo._internal.go.printer.Printer.Mode) : stdgo._internal.go.printer.Printer.Mode) != ((0u32 : stdgo._internal.go.printer.Printer.Mode))) {
                    _padchar = (32 : stdgo.GoUInt8);
                };
                var _twmode:stdgo.GoUInt = (8u32 : stdgo.GoUInt);
                if ((_cfg.mode & (2u32 : stdgo._internal.go.printer.Printer.Mode) : stdgo._internal.go.printer.Printer.Mode) != ((0u32 : stdgo._internal.go.printer.Printer.Mode))) {
                    _minwidth = (0 : stdgo.GoInt);
                    _twmode = (_twmode | ((16u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                };
                _output = stdgo.Go.asInterface(stdgo._internal.text.tabwriter.Tabwriter.newWriter(_output, _minwidth, _cfg.tabwidth, (1 : stdgo.GoInt), _padchar, _twmode));
            };
            {
                {
                    var __tmp__ = _output.write(_p._output);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_output) : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter.Writer>)) : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter.Writer>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter.Writer>), _1 : false };
                }, _tw = __tmp__._0, __48 = __tmp__._1;
                if (_tw != null && ((_tw : Dynamic).__nil__ == null || !(_tw : Dynamic).__nil__)) {
                    _err = _tw.flush();
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
}
class T_limitWriter_asInterface {
    @:keep
    public dynamic function write(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_buf);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_limitWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.printer.Printer.T_limitWriter_asInterface) class T_limitWriter_static_extension {
    @:keep
    static public function write( _l:stdgo.Ref<T_limitWriter>, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<T_limitWriter> = _l;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _n = (_buf.length);
        if ((_n >= _l._remaining : Bool)) {
            _n = _l._remaining;
            _err = stdgo._internal.io.Io.eof;
            _l._errCount++;
        };
        _l._remaining = (_l._remaining - (_n) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
}
class T_visitor_asInterface {
    @:keep
    public dynamic function visit(_n:stdgo._internal.go.ast.Ast.Node):stdgo._internal.go.ast.Ast.Visitor return __self__.value.visit(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_visitor>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.printer.Printer.T_visitor_asInterface) class T_visitor_static_extension {
    @:keep
    static public function visit( _v:T_visitor, _n:stdgo._internal.go.ast.Ast.Node):stdgo._internal.go.ast.Ast.Visitor {
        @:recv var _v:T_visitor = _v;
        var _w:stdgo._internal.go.ast.Ast.Visitor = (null : stdgo._internal.go.ast.Ast.Visitor);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>), _1 : false };
            }, _ident = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _v.__send__(_ident);
            };
        };
        return stdgo.Go.asInterface(_v);
    }
}
