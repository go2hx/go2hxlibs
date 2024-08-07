package stdgo._internal.go.ast_test;
import stdgo._internal.go.ast.Ast;
import stdgo._internal.go.ast.Ast;
final _src : stdgo.GoString = ("\n// the very first comment\n\n// package p\npackage p /* the name is p */\n\n// imports\nimport (\n\t\"bytes\"     // bytes\n\t\"fmt\"       // fmt\n\t\"go/ast\"\n\t\"go/parser\"\n)\n\n// T\ntype T struct {\n\ta, b, c int // associated with a, b, c\n\t// associated with x, y\n\tx, y float64    // float values\n\tz    complex128 // complex value\n}\n// also associated with T\n\n// x\nvar x = 0 // x = 0\n// also associated with x\n\n// f1\nfunc f1() {\n\t/* associated with s1 */\n\ts1()\n\t// also associated with s1\n\t\n\t// associated with s2\n\t\n\t// also associated with s2\n\ts2() // line comment for s2\n}\n// associated with f1\n// also associated with f1\n\n// associated with f2\n\n// f2\nfunc f2() {\n}\n\nfunc f3() {\n\ti := 1 /* 1 */ + 2 // addition\n\t_ = i\n}\n\n// the very last comment\n" : stdgo.GoString);
final _input : stdgo.GoString = ("package p\n\ntype t1 struct{}\ntype t2 struct{}\n\nfunc f1() {}\nfunc f1() {}\nfunc f2() {}\n\nfunc (*t1) f1() {}\nfunc (t1) f1() {}\nfunc (t1) f2() {}\n\nfunc (t2) f1() {}\nfunc (t2) f2() {}\nfunc (x *t2) f2() {}\n" : stdgo.GoString);
final _golden : stdgo.GoString = ("package p\n\ntype t1 struct{}\ntype t2 struct{}\n\nfunc f1() {}\nfunc f2() {}\n\nfunc (t1) f1() {}\nfunc (t1) f2() {}\n\nfunc (t2) f1() {}\n\nfunc (x *t2) f2() {}\n" : stdgo.GoString);
var _res : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((" 5: *ast.File" : stdgo.GoString), ("the very first comment\npackage p\n" : stdgo.GoString));
            x.set((" 5: *ast.Ident" : stdgo.GoString), (" the name is p\n" : stdgo.GoString));
            x.set((" 8: *ast.GenDecl" : stdgo.GoString), ("imports\n" : stdgo.GoString));
            x.set((" 9: *ast.ImportSpec" : stdgo.GoString), ("bytes\n" : stdgo.GoString));
            x.set(("10: *ast.ImportSpec" : stdgo.GoString), ("fmt\n" : stdgo.GoString));
            x.set(("16: *ast.GenDecl" : stdgo.GoString), ("T\nalso associated with T\n" : stdgo.GoString));
            x.set(("17: *ast.Field" : stdgo.GoString), ("associated with a, b, c\n" : stdgo.GoString));
            x.set(("19: *ast.Field" : stdgo.GoString), ("associated with x, y\nfloat values\n" : stdgo.GoString));
            x.set(("20: *ast.Field" : stdgo.GoString), ("complex value\n" : stdgo.GoString));
            x.set(("25: *ast.GenDecl" : stdgo.GoString), ("x\nx = 0\nalso associated with x\n" : stdgo.GoString));
            x.set(("29: *ast.FuncDecl" : stdgo.GoString), ("f1\nassociated with f1\nalso associated with f1\n" : stdgo.GoString));
            x.set(("31: *ast.ExprStmt" : stdgo.GoString), (" associated with s1\nalso associated with s1\n" : stdgo.GoString));
            x.set(("37: *ast.ExprStmt" : stdgo.GoString), ("associated with s2\nalso associated with s2\nline comment for s2\n" : stdgo.GoString));
            x.set(("45: *ast.FuncDecl" : stdgo.GoString), ("associated with f2\nf2\n" : stdgo.GoString));
            x.set(("49: *ast.AssignStmt" : stdgo.GoString), ("addition\n" : stdgo.GoString));
            x.set(("49: *ast.BasicLit" : stdgo.GoString), (" 1\n" : stdgo.GoString));
            x.set(("50: *ast.Ident" : stdgo.GoString), ("the very last comment\n" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast_test.Ast_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.go.ast_test.Ast_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _src : stdgo.GoString;
    public var _want : Bool;
};
function _ctext(_list:stdgo.Slice<stdgo.Ref<CommentGroup>>):stdgo.GoString {
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        for (__0 => _g in _list) {
            _buf.writeString(_g.text()?.__copy__());
        };
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
function testCommentMap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(("\n// the very first comment\n\n// package p\npackage p /* the name is p */\n\n// imports\nimport (\n\t\"bytes\"     // bytes\n\t\"fmt\"       // fmt\n\t\"go/ast\"\n\t\"go/parser\"\n)\n\n// T\ntype T struct {\n\ta, b, c int // associated with a, b, c\n\t// associated with x, y\n\tx, y float64    // float values\n\tz    complex128 // complex value\n}\n// also associated with T\n\n// x\nvar x = 0 // x = 0\n// also associated with x\n\n// f1\nfunc f1() {\n\t/* associated with s1 */\n\ts1()\n\t// also associated with s1\n\t\n\t// associated with s2\n\t\n\t// also associated with s2\n\ts2() // line comment for s2\n}\n// associated with f1\n// also associated with f1\n\n// associated with f2\n\n// f2\nfunc f2() {\n}\n\nfunc f3() {\n\ti := 1 /* 1 */ + 2 // addition\n\t_ = i\n}\n\n// the very last comment\n" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _cmap:stdgo._internal.go.ast.Ast.CommentMap = newCommentMap(_fset, stdgo.Go.asInterface(_f), _f.comments);
        for (_n => _list in _cmap) {
            var _key:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("%2d: %T" : stdgo.GoString), stdgo.Go.toInterface(_fset.position(_n.pos()).line), stdgo.Go.toInterface(_n))?.__copy__();
            var _got:stdgo.GoString = _ctext(_list)?.__copy__();
            var _want:stdgo.GoString = (_res[_key] ?? ("" : stdgo.GoString))?.__copy__();
            if (_got != (_want)) {
                _t.errorf(("%s: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var _n:stdgo.GoInt = (_cmap.comments().length);
            if (_n != ((_f.comments.length))) {
                _t.errorf(("got %d comment groups in map; want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_f.comments.length)));
            };
        };
        {};
        if (false) {
            var _out = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_cmap.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_n => _list in _cmap) {
                _out = (_out.__append__(stdgo._internal.fmt.Fmt.sprintf(("\t\"%2d: %T\":\t%q," : stdgo.GoString), stdgo.Go.toInterface(_fset.position(_n.pos()).line), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_ctext(_list)))?.__copy__()));
            };
            stdgo._internal.sort.Sort.strings(_out);
            for (__40 => _s in _out) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
            };
        };
    }
function testFilter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(("\n// the very first comment\n\n// package p\npackage p /* the name is p */\n\n// imports\nimport (\n\t\"bytes\"     // bytes\n\t\"fmt\"       // fmt\n\t\"go/ast\"\n\t\"go/parser\"\n)\n\n// T\ntype T struct {\n\ta, b, c int // associated with a, b, c\n\t// associated with x, y\n\tx, y float64    // float values\n\tz    complex128 // complex value\n}\n// also associated with T\n\n// x\nvar x = 0 // x = 0\n// also associated with x\n\n// f1\nfunc f1() {\n\t/* associated with s1 */\n\ts1()\n\t// also associated with s1\n\t\n\t// associated with s2\n\t\n\t// also associated with s2\n\ts2() // line comment for s2\n}\n// associated with f1\n// also associated with f1\n\n// associated with f2\n\n// f2\nfunc f2() {\n}\n\nfunc f3() {\n\ti := 1 /* 1 */ + 2 // addition\n\t_ = i\n}\n\n// the very last comment\n" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _cmap:stdgo._internal.go.ast.Ast.CommentMap = newCommentMap(_fset, stdgo.Go.asInterface(_f), _f.comments);
        for (_i => _decl in _f.decls) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<GenDecl>)) : stdgo.Ref<GenDecl>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>), _1 : false };
                }, _gen = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && (_gen.tok == (85 : stdgo._internal.go.token.Token.Token)) : Bool)) {
                    stdgo.Go.copySlice((_f.decls.__slice__(_i) : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>), (_f.decls.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>));
                    _f.decls = (_f.decls.__slice__(0, ((_f.decls.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>);
                    break;
                };
            };
        };
        var _cc:stdgo._internal.go.ast.Ast.CommentMap = _cmap.filter(stdgo.Go.asInterface(_f));
        for (_n => _list in _cc) {
            var _key:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("%2d: %T" : stdgo.GoString), stdgo.Go.toInterface(_fset.position(_n.pos()).line), stdgo.Go.toInterface(_n))?.__copy__();
            var _got:stdgo.GoString = _ctext(_list)?.__copy__();
            var _want:stdgo.GoString = (_res[_key] ?? ("" : stdgo.GoString))?.__copy__();
            if (((_key == ("25: *ast.GenDecl" : stdgo.GoString)) || (_got != _want) : Bool)) {
                _t.errorf(("%s: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function exampleInspect():Void {
        var _src:stdgo.GoString = ("\npackage p\nconst c = 1.0\nvar X = f(3.14)*2 + c\n" : stdgo.GoString);
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, ("src.go" : stdgo.GoString), stdgo.Go.toInterface(_src), (0u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.go.ast.Ast.inspect(stdgo.Go.asInterface(_f), function(_n:stdgo._internal.go.ast.Ast.Node):Bool {
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>) : __type__.__underlying__().value;
                    _s = _x.value?.__copy__();
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                    _s = _x.name?.__copy__();
                };
            };
            if (_s != (stdgo.Go.str())) {
                stdgo._internal.fmt.Fmt.printf(("%s:\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fset.position(_n.pos()))), stdgo.Go.toInterface(_s));
            };
            return true;
        });
    }
function examplePrint():Void {
        var _src:stdgo.GoString = ("\npackage main\nfunc main() {\n\tprintln(\"Hello, World!\")\n}\n" : stdgo.GoString);
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(_src), (0u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.go.ast.Ast.print(_fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
    }
function exampleCommentMap():Void {
        var _src:stdgo.GoString = ("\n// This is the package comment.\npackage main\n\n// This comment is associated with the hello constant.\nconst hello = \"Hello, World!\" // line comment 1\n\n// This comment is associated with the foo variable.\nvar foo = hello // line comment 2\n\n// This comment is associated with the main function.\nfunc main() {\n\tfmt.Println(hello) // line comment 3\n}\n" : stdgo.GoString);
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, ("src.go" : stdgo.GoString), stdgo.Go.toInterface(_src), (4u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _cmap:stdgo._internal.go.ast.Ast.CommentMap = stdgo._internal.go.ast.Ast.newCommentMap(_fset, stdgo.Go.asInterface(_f), _f.comments);
        for (_i => _decl in _f.decls) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>), _1 : false };
                }, _gen = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && (_gen.tok == (85 : stdgo._internal.go.token.Token.Token)) : Bool)) {
                    stdgo.Go.copySlice((_f.decls.__slice__(_i) : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>), (_f.decls.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>));
                    _f.decls = (_f.decls.__slice__(0, ((_f.decls.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>);
                    break;
                };
            };
        };
        _f.comments = _cmap.filter(stdgo.Go.asInterface(_f)).comments();
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        {
            var _err:stdgo.Error = stdgo._internal.go.format.Format.node(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
        };
        stdgo._internal.fmt.Fmt.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)));
    }
function testFilterDuplicates(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(("package p\n\ntype t1 struct{}\ntype t2 struct{}\n\nfunc f1() {}\nfunc f1() {}\nfunc f2() {}\n\nfunc (*t1) f1() {}\nfunc (t1) f1() {}\nfunc (t1) f2() {}\n\nfunc (t2) f1() {}\nfunc (t2) f2() {}\nfunc (x *t2) f2() {}\n" : stdgo.GoString)), (0u32 : stdgo._internal.go.parser.Parser.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _files = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast.File>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>);
            @:mergeBlock {
                x.set(stdgo.Go.str(), _file);
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.File>>);
        var __tmp__ = stdgo._internal.go.ast.Ast.newPackage(_fset, _files, null, null), _pkg:stdgo.Ref<stdgo._internal.go.ast.Ast.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _merged = stdgo._internal.go.ast.Ast.mergePackageFiles(_pkg, (1u32 : stdgo._internal.go.ast.Ast.MergeMode));
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        {
            var _err:stdgo.Error = stdgo._internal.go.format.Format.node(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_merged)));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _output:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
        if (_output != (("package p\n\ntype t1 struct{}\ntype t2 struct{}\n\nfunc f1() {}\nfunc f2() {}\n\nfunc (t1) f1() {}\nfunc (t1) f2() {}\n\nfunc (t2) f1() {}\n\nfunc (x *t2) f2() {}\n" : stdgo.GoString))) {
            _t.errorf(("incorrect output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_output));
        };
    }
function testIssue33649(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _src in (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("package p; func _()" : stdgo.GoString), ("package p; func _() {" : stdgo.GoString), ("package p; func _() { _ = 0" : stdgo.GoString), ("package p; func _() { _ = 0 }" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _fset = stdgo._internal.go.token.Token.newFileSet();
            var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(_src), (32u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            if (_f == null || (_f : Dynamic).__nil__) {
                throw stdgo.Go.toInterface(("invalid test setup: parser didn\'t return an AST" : stdgo.GoString));
            };
            var _tf:stdgo.Ref<stdgo._internal.go.token.Token.File> = (null : stdgo.Ref<stdgo._internal.go.token.Token.File>);
            _fset.iterate(function(_f:stdgo.Ref<stdgo._internal.go.token.Token.File>):Bool {
                _tf = _f;
                return true;
            });
            var _tfEnd:stdgo.GoInt = (_tf.base() + _tf.size() : stdgo.GoInt);
            var _fd = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f.decls[((_f.decls.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>);
            var _fdEnd:stdgo.GoInt = (_fd.end() : stdgo.GoInt);
            if (_fdEnd != (_tfEnd)) {
                _t.errorf(("%q: got fdEnd = %d; want %d (base = %d, size = %d)" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_fdEnd), stdgo.Go.toInterface(_tfEnd), stdgo.Go.toInterface(_tf.base()), stdgo.Go.toInterface(_tf.size()));
            };
        };
    }
function testIssue28089(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _test in (new stdgo.Slice<T__struct_7>(10, 10, ...[({ _src : ("package p" : stdgo.GoString), _want : false } : T__struct_7), ({ _src : ("// Package p doc.\npackage p" : stdgo.GoString), _want : false } : T__struct_7), ({ _src : ("// Package p doc.\npackage p\n// Code generated by gen. DO NOT EDIT.\n" : stdgo.GoString), _want : false } : T__struct_7), ({ _src : ("// Package p doc.\npackage p\nconst c = \"`\n// Code generated by gen. DO NOT EDIT.\n`\n" : stdgo.GoString), _want : false } : T__struct_7), ({ _src : ("// Copyright 2019 The Go Authors. All rights reserved.\n// Use of this source code is governed by a BSD-style\n// license that can be found in the LICENSE file.\n\n// Package p doc comment goes here.\n//\n// Code generated by gen. DO NOT EDIT.\npackage p\n\n... " : stdgo.GoString), _want : true } : T__struct_7), ({ _src : ("// Package p doc comment goes here.\n//\n\t// Code generated by gen. DO NOT EDIT.\npackage p\n\n... " : stdgo.GoString), _want : true } : T__struct_7), ({ _src : ("// Copyright 2019 The Go Authors. All rights reserved.\n// Use of this source code is governed by a BSD-style\n// license that can be found in the LICENSE file.\n\n// Package p doc comment goes here.\n//\n// Code generated by gen. DO NOT EDIT. \npackage p\n\n... " : stdgo.GoString), _want : false } : T__struct_7), ({ _src : ("//     Code generated by gen. DO NOT EDIT.\npackage p\n" : stdgo.GoString), _want : false } : T__struct_7), ({ _src : ("// Code generated DO NOT EDIT.\npackage p\n" : stdgo.GoString), _want : false } : T__struct_7), ({ _src : ("/* start of a general comment\n\n// Code generated by tool; DO NOT EDIT.\n\nend of a general comment */\n\n// +build !dev\n\n// Package comment.\npackage p\n\n// Does match even though it\'s inside general comment (/*-style).\n" : stdgo.GoString), _want : true } : T__struct_7)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({ _src : ("" : stdgo.GoString), _want : false } : T__struct_7)])) : stdgo.Slice<T__struct_7>)) {
            var _fset = stdgo._internal.go.token.Token.newFileSet();
            var __tmp__ = stdgo._internal.go.parser.Parser.parseFile(_fset, stdgo.Go.str()?.__copy__(), stdgo.Go.toInterface(_test._src), (5u32 : stdgo._internal.go.parser.Parser.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_f == null || (_f : Dynamic).__nil__) {
                _t.fatalf(("parse %d failed to return AST: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            var _got:Bool = stdgo._internal.go.ast.Ast.isGenerated(_f);
            if (_got != (_test._want)) {
                _t.errorf(("%d: IsGenerated on <<%s>> returned %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._src), stdgo.Go.toInterface(_got));
            };
        };
    }
