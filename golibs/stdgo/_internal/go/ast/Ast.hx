package stdgo._internal.go.ast;
private var __go2hxdoc__package : Bool;
final send : stdgo._internal.go.ast.Ast.ChanDir = (2 : stdgo._internal.go.ast.Ast.ChanDir);
final recv = (2 : stdgo._internal.go.ast.Ast.ChanDir);
final filterFuncDuplicates : stdgo._internal.go.ast.Ast.MergeMode = (4u32 : stdgo._internal.go.ast.Ast.MergeMode);
final filterUnassociatedComments = (4u32 : stdgo._internal.go.ast.Ast.MergeMode);
final filterImportDuplicates = (4u32 : stdgo._internal.go.ast.Ast.MergeMode);
final bad : stdgo._internal.go.ast.Ast.ObjKind = (6 : stdgo._internal.go.ast.Ast.ObjKind);
final pkg = (6 : stdgo._internal.go.ast.Ast.ObjKind);
final con = (6 : stdgo._internal.go.ast.Ast.ObjKind);
final typ = (6 : stdgo._internal.go.ast.Ast.ObjKind);
final var_ = (6 : stdgo._internal.go.ast.Ast.ObjKind);
final fun = (6 : stdgo._internal.go.ast.Ast.ObjKind);
final lbl = (6 : stdgo._internal.go.ast.Ast.ObjKind);
var _separator : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment> = (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast.Comment((0 : stdgo._internal.go.token.Token.Pos), ("//" : stdgo.GoString)) : stdgo._internal.go.ast.Ast.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>);
var _indent : stdgo.Slice<stdgo.GoUInt8> = ((".  " : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
var _objKindStrings : stdgo.GoArray<stdgo.GoString> = {
        var s:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(7, 7, ...[for (i in 0 ... 7) ""]);
        s[0] = ("bad" : stdgo.GoString);
        s[1] = ("package" : stdgo.GoString);
        s[2] = ("const" : stdgo.GoString);
        s[3] = ("type" : stdgo.GoString);
        s[4] = ("var" : stdgo.GoString);
        s[5] = ("func" : stdgo.GoString);
        s[6] = ("label" : stdgo.GoString);
        s;
    };
var _comments : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(22, 22, ...[
({ _list : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("//" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("//   " : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("//" : stdgo.GoString), ("//" : stdgo.GoString), ("//   " : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("// foo   " : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : ("foo\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("//" : stdgo.GoString), ("//" : stdgo.GoString), ("// foo" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : ("foo\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("// foo  bar  " : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : ("foo  bar\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("// foo" : stdgo.GoString), ("// bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : ("foo\nbar\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("// foo" : stdgo.GoString), ("//" : stdgo.GoString), ("//" : stdgo.GoString), ("//" : stdgo.GoString), ("// bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : ("foo\n\nbar\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("// foo" : stdgo.GoString), ("/* bar */" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : ("foo\n bar\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("//" : stdgo.GoString), ("//" : stdgo.GoString), ("//" : stdgo.GoString), ("// foo" : stdgo.GoString), ("//" : stdgo.GoString), ("//" : stdgo.GoString), ("//" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : ("foo\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("/**/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("/*   */" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("/**/" : stdgo.GoString), ("/**/" : stdgo.GoString), ("/*   */" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : stdgo.Go.str()?.__copy__() } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("/* Foo   */" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : (" Foo\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("/* Foo  Bar  */" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : (" Foo  Bar\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/* Foo*/" : stdgo.GoString), ("/* Bar*/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : (" Foo\n Bar\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("/* Foo*/" : stdgo.GoString), ("/**/" : stdgo.GoString), ("/**/" : stdgo.GoString), ("/**/" : stdgo.GoString), ("// Bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : (" Foo\n\nBar\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("/* Foo*/" : stdgo.GoString), ("/*\n*/" : stdgo.GoString), ("//" : stdgo.GoString), ("/*\n*/" : stdgo.GoString), ("// Bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : (" Foo\n\nBar\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/* Foo*/" : stdgo.GoString), ("// Bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : (" Foo\nBar\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("/* Foo\n Bar*/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : (" Foo\n Bar\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("// foo" : stdgo.GoString), ("//go:noinline" : stdgo.GoString), ("// bar" : stdgo.GoString), ("//:baz" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : ("foo\nbar\n:baz\n" : stdgo.GoString) } : T__struct_0),
({ _list : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("// foo" : stdgo.GoString), ("//lint123:ignore" : stdgo.GoString), ("// bar" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _text : ("foo\nbar\n" : stdgo.GoString) } : T__struct_0)].concat([for (i in 22 ... (22 > 22 ? 22 : 22 : stdgo.GoInt).toBasic()) ({ _list : (null : stdgo.Slice<stdgo.GoString>), _text : ("" : stdgo.GoString) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
var _isDirectiveTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(15, 15, ...[
({ _in : ("abc" : stdgo.GoString), _ok : false } : T__struct_1),
({ _in : ("go:inline" : stdgo.GoString), _ok : true } : T__struct_1),
({ _in : ("Go:inline" : stdgo.GoString), _ok : false } : T__struct_1),
({ _in : ("go:Inline" : stdgo.GoString), _ok : false } : T__struct_1),
({ _in : (":inline" : stdgo.GoString), _ok : false } : T__struct_1),
({ _in : ("lint:ignore" : stdgo.GoString), _ok : true } : T__struct_1),
({ _in : ("lint:1234" : stdgo.GoString), _ok : true } : T__struct_1),
({ _in : ("1234:lint" : stdgo.GoString), _ok : true } : T__struct_1),
({ _in : ("go: inline" : stdgo.GoString), _ok : false } : T__struct_1),
({ _in : ("go:" : stdgo.GoString), _ok : false } : T__struct_1),
({ _in : ("go:*" : stdgo.GoString), _ok : false } : T__struct_1),
({ _in : ("go:x*" : stdgo.GoString), _ok : true } : T__struct_1),
({ _in : ("export foo" : stdgo.GoString), _ok : true } : T__struct_1),
({ _in : ("extern foo" : stdgo.GoString), _ok : true } : T__struct_1),
({ _in : ("expert foo" : stdgo.GoString), _ok : false } : T__struct_1)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _ok : false } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
var _tests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(18, 18, ...[
({ _x : (null : stdgo.AnyInterface), _s : ("0  nil" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface(true), _s : ("0  true" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface((42 : stdgo.GoInt)), _s : ("0  42" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface((3.14 : stdgo.GoFloat64)), _s : ("0  3.14" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface(((1f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 2.718f64))), _s : ("0  (1+2.718i)" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface(("foobar" : stdgo.GoString)), _s : ("0  \"foobar\"" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast.Expr, stdgo.GoString>();
        x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast.Expr", [], stdgo._internal.internal.reflect.Reflect.GoType.named("Expr", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {};
        cast x;
    } : stdgo.GoMap<stdgo._internal.go.ast.Ast.Expr, stdgo.GoString>)), _s : ("0  map[ast.Expr]string (len = 0) {}" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        @:mergeBlock {
            x.set(("a" : stdgo.GoString), (1 : stdgo.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)), _s : ("0  map[string]int (len = 1) {\n\t\t1  .  \"a\": 1\n\t\t2  }" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))), _s : ("0  *0" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), _s : ("0  [0]int {}" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), _s : ("0  [3]int {\n\t\t1  .  0: 1\n\t\t2  .  1: 2\n\t\t3  .  2: 3\n\t\t4  }" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), _s : ("0  [1]int {\n\t\t1  .  0: 42\n\t\t2  }" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), _s : ("0  []int (len = 0) {}" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), _s : ("0  []int (len = 3) {\n\t\t1  .  0: 1\n\t\t2  .  1: 2\n\t\t3  .  2: 3\n\t\t4  }" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({  } : T__struct_3))), _s : ("0  struct {} {}" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (7 : stdgo.GoInt) } : T__struct_4))), _s : ("0  struct { x int } {}" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({ x : (42 : stdgo.GoInt), _y : (991 : stdgo.GoInt) } : T__struct_5))), _s : ("0  struct { X int; y int } {\n\t\t1  .  X: 42\n\t\t2  }" : stdgo.GoString) } : T__struct_2),
({ _x : stdgo.Go.toInterface(stdgo.Go.asInterface(({ x : (42 : stdgo.GoInt), y : (991 : stdgo.GoInt) } : T__struct_6))), _s : ("0  struct { X int; Y int } {\n\t\t1  .  X: 42\n\t\t2  .  Y: 991\n\t\t3  }" : stdgo.GoString) } : T__struct_2)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({ _x : (null : stdgo.AnyInterface), _s : ("" : stdgo.GoString) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
@:keep class Node_static_extension {
    static public function end(t:Node):stdgo._internal.go.token.Token.Pos return t.end();
    static public function pos(t:Node):stdgo._internal.go.token.Token.Pos return t.pos();
}
typedef Node = stdgo.StructType & {
    /**
        
        
        position of first character belonging to the node
    **/
    public dynamic function pos():stdgo._internal.go.token.Token.Pos;
    /**
        
        
        position of first character immediately after the node
    **/
    public dynamic function end():stdgo._internal.go.token.Token.Pos;
};
@:keep class Expr_static_extension {
    static public function _exprNode(t:Expr):Void t._exprNode();
}
typedef Expr = stdgo.StructType & {
    > Node,
    /**
        
        
        
    **/
    public dynamic function _exprNode():Void;
};
@:keep class Stmt_static_extension {
    static public function _stmtNode(t:Stmt):Void t._stmtNode();
}
typedef Stmt = stdgo.StructType & {
    > Node,
    /**
        
        
        
    **/
    public dynamic function _stmtNode():Void;
};
@:keep class Decl_static_extension {
    static public function _declNode(t:Decl):Void t._declNode();
}
typedef Decl = stdgo.StructType & {
    > Node,
    /**
        
        
        
    **/
    public dynamic function _declNode():Void;
};
@:keep class Spec_static_extension {
    static public function _specNode(t:Spec):Void t._specNode();
}
typedef Spec = stdgo.StructType & {
    > Node,
    /**
        
        
        
    **/
    public dynamic function _specNode():Void;
};
@:keep class Visitor_static_extension {
    static public function visit(t:Visitor, _node:Node):Visitor return t.visit(_node);
}
typedef Visitor = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function visit(_node:Node):Visitor;
};
@:structInit @:using(stdgo._internal.go.ast.Ast.Comment_static_extension) class Comment {
    public var slash : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var text : stdgo.GoString = "";
    public function new(?slash:stdgo._internal.go.token.Token.Pos, ?text:stdgo.GoString) {
        if (slash != null) this.slash = slash;
        if (text != null) this.text = text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Comment(slash, text);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.CommentGroup_static_extension) class CommentGroup {
    public var list : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>);
    public function new(?list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>) {
        if (list != null) this.list = list;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CommentGroup(list);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.Field_static_extension) class Field {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public var names : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>);
    public var type : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var tag : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>);
    public var comment : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>, ?names:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>, ?type:stdgo._internal.go.ast.Ast.Expr, ?tag:stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>, ?comment:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>) {
        if (doc != null) this.doc = doc;
        if (names != null) this.names = names;
        if (type != null) this.type = type;
        if (tag != null) this.tag = tag;
        if (comment != null) this.comment = comment;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Field(doc, names, type, tag, comment);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.FieldList_static_extension) class FieldList {
    public var opening : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var list : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Field>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Field>>);
    public var closing : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?opening:stdgo._internal.go.token.Token.Pos, ?list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Field>>, ?closing:stdgo._internal.go.token.Token.Pos) {
        if (opening != null) this.opening = opening;
        if (list != null) this.list = list;
        if (closing != null) this.closing = closing;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FieldList(opening, list, closing);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.BadExpr_static_extension) class BadExpr {
    public var from : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var to : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?from:stdgo._internal.go.token.Token.Pos, ?to:stdgo._internal.go.token.Token.Pos) {
        if (from != null) this.from = from;
        if (to != null) this.to = to;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BadExpr(from, to);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.Ident_static_extension) class Ident {
    public var namePos : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var name : stdgo.GoString = "";
    public var obj : stdgo.Ref<stdgo._internal.go.ast.Ast.Object> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Object>);
    public function new(?namePos:stdgo._internal.go.token.Token.Pos, ?name:stdgo.GoString, ?obj:stdgo.Ref<stdgo._internal.go.ast.Ast.Object>) {
        if (namePos != null) this.namePos = namePos;
        if (name != null) this.name = name;
        if (obj != null) this.obj = obj;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Ident(namePos, name, obj);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.Ellipsis_static_extension) class Ellipsis {
    public var ellipsis : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var elt : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public function new(?ellipsis:stdgo._internal.go.token.Token.Pos, ?elt:stdgo._internal.go.ast.Ast.Expr) {
        if (ellipsis != null) this.ellipsis = ellipsis;
        if (elt != null) this.elt = elt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Ellipsis(ellipsis, elt);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.BasicLit_static_extension) class BasicLit {
    public var valuePos : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var kind : stdgo._internal.go.token.Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
    public var value : stdgo.GoString = "";
    public function new(?valuePos:stdgo._internal.go.token.Token.Pos, ?kind:stdgo._internal.go.token.Token.Token, ?value:stdgo.GoString) {
        if (valuePos != null) this.valuePos = valuePos;
        if (kind != null) this.kind = kind;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BasicLit(valuePos, kind, value);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.FuncLit_static_extension) class FuncLit {
    public var type : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>);
    public function new(?type:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) {
        if (type != null) this.type = type;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FuncLit(type, body);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.CompositeLit_static_extension) class CompositeLit {
    public var type : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var lbrace : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var elts : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>);
    public var rbrace : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var incomplete : Bool = false;
    public function new(?type:stdgo._internal.go.ast.Ast.Expr, ?lbrace:stdgo._internal.go.token.Token.Pos, ?elts:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>, ?rbrace:stdgo._internal.go.token.Token.Pos, ?incomplete:Bool) {
        if (type != null) this.type = type;
        if (lbrace != null) this.lbrace = lbrace;
        if (elts != null) this.elts = elts;
        if (rbrace != null) this.rbrace = rbrace;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CompositeLit(type, lbrace, elts, rbrace, incomplete);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.ParenExpr_static_extension) class ParenExpr {
    public var lparen : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var rparen : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?lparen:stdgo._internal.go.token.Token.Pos, ?x:stdgo._internal.go.ast.Ast.Expr, ?rparen:stdgo._internal.go.token.Token.Pos) {
        if (lparen != null) this.lparen = lparen;
        if (x != null) this.x = x;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParenExpr(lparen, x, rparen);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.SelectorExpr_static_extension) class SelectorExpr {
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var sel : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>);
    public function new(?x:stdgo._internal.go.ast.Ast.Expr, ?sel:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) {
        if (x != null) this.x = x;
        if (sel != null) this.sel = sel;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SelectorExpr(x, sel);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.IndexExpr_static_extension) class IndexExpr {
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var lbrack : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var index : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var rbrack : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?x:stdgo._internal.go.ast.Ast.Expr, ?lbrack:stdgo._internal.go.token.Token.Pos, ?index:stdgo._internal.go.ast.Ast.Expr, ?rbrack:stdgo._internal.go.token.Token.Pos) {
        if (x != null) this.x = x;
        if (lbrack != null) this.lbrack = lbrack;
        if (index != null) this.index = index;
        if (rbrack != null) this.rbrack = rbrack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IndexExpr(x, lbrack, index, rbrack);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.IndexListExpr_static_extension) class IndexListExpr {
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var lbrack : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var indices : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>);
    public var rbrack : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?x:stdgo._internal.go.ast.Ast.Expr, ?lbrack:stdgo._internal.go.token.Token.Pos, ?indices:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>, ?rbrack:stdgo._internal.go.token.Token.Pos) {
        if (x != null) this.x = x;
        if (lbrack != null) this.lbrack = lbrack;
        if (indices != null) this.indices = indices;
        if (rbrack != null) this.rbrack = rbrack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IndexListExpr(x, lbrack, indices, rbrack);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.SliceExpr_static_extension) class SliceExpr {
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var lbrack : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var low : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var high : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var max : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var slice3 : Bool = false;
    public var rbrack : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?x:stdgo._internal.go.ast.Ast.Expr, ?lbrack:stdgo._internal.go.token.Token.Pos, ?low:stdgo._internal.go.ast.Ast.Expr, ?high:stdgo._internal.go.ast.Ast.Expr, ?max:stdgo._internal.go.ast.Ast.Expr, ?slice3:Bool, ?rbrack:stdgo._internal.go.token.Token.Pos) {
        if (x != null) this.x = x;
        if (lbrack != null) this.lbrack = lbrack;
        if (low != null) this.low = low;
        if (high != null) this.high = high;
        if (max != null) this.max = max;
        if (slice3 != null) this.slice3 = slice3;
        if (rbrack != null) this.rbrack = rbrack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SliceExpr(x, lbrack, low, high, max, slice3, rbrack);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.TypeAssertExpr_static_extension) class TypeAssertExpr {
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var lparen : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var type : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var rparen : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?x:stdgo._internal.go.ast.Ast.Expr, ?lparen:stdgo._internal.go.token.Token.Pos, ?type:stdgo._internal.go.ast.Ast.Expr, ?rparen:stdgo._internal.go.token.Token.Pos) {
        if (x != null) this.x = x;
        if (lparen != null) this.lparen = lparen;
        if (type != null) this.type = type;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeAssertExpr(x, lparen, type, rparen);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.CallExpr_static_extension) class CallExpr {
    public var fun : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var lparen : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var args : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>);
    public var ellipsis : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var rparen : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?fun:stdgo._internal.go.ast.Ast.Expr, ?lparen:stdgo._internal.go.token.Token.Pos, ?args:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>, ?ellipsis:stdgo._internal.go.token.Token.Pos, ?rparen:stdgo._internal.go.token.Token.Pos) {
        if (fun != null) this.fun = fun;
        if (lparen != null) this.lparen = lparen;
        if (args != null) this.args = args;
        if (ellipsis != null) this.ellipsis = ellipsis;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CallExpr(fun, lparen, args, ellipsis, rparen);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.StarExpr_static_extension) class StarExpr {
    public var star : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public function new(?star:stdgo._internal.go.token.Token.Pos, ?x:stdgo._internal.go.ast.Ast.Expr) {
        if (star != null) this.star = star;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StarExpr(star, x);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.UnaryExpr_static_extension) class UnaryExpr {
    public var opPos : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var op : stdgo._internal.go.token.Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public function new(?opPos:stdgo._internal.go.token.Token.Pos, ?op:stdgo._internal.go.token.Token.Token, ?x:stdgo._internal.go.ast.Ast.Expr) {
        if (opPos != null) this.opPos = opPos;
        if (op != null) this.op = op;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnaryExpr(opPos, op, x);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.BinaryExpr_static_extension) class BinaryExpr {
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var opPos : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var op : stdgo._internal.go.token.Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
    public var y : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public function new(?x:stdgo._internal.go.ast.Ast.Expr, ?opPos:stdgo._internal.go.token.Token.Pos, ?op:stdgo._internal.go.token.Token.Token, ?y:stdgo._internal.go.ast.Ast.Expr) {
        if (x != null) this.x = x;
        if (opPos != null) this.opPos = opPos;
        if (op != null) this.op = op;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BinaryExpr(x, opPos, op, y);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.KeyValueExpr_static_extension) class KeyValueExpr {
    public var key : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var colon : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var value : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public function new(?key:stdgo._internal.go.ast.Ast.Expr, ?colon:stdgo._internal.go.token.Token.Pos, ?value:stdgo._internal.go.ast.Ast.Expr) {
        if (key != null) this.key = key;
        if (colon != null) this.colon = colon;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new KeyValueExpr(key, colon, value);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.ArrayType_static_extension) class ArrayType {
    public var lbrack : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var len : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var elt : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public function new(?lbrack:stdgo._internal.go.token.Token.Pos, ?len:stdgo._internal.go.ast.Ast.Expr, ?elt:stdgo._internal.go.ast.Ast.Expr) {
        if (lbrack != null) this.lbrack = lbrack;
        if (len != null) this.len = len;
        if (elt != null) this.elt = elt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ArrayType(lbrack, len, elt);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.StructType_static_extension) class StructType {
    public var struct_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var fields : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>);
    public var incomplete : Bool = false;
    public function new(?struct_:stdgo._internal.go.token.Token.Pos, ?fields:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>, ?incomplete:Bool) {
        if (struct_ != null) this.struct_ = struct_;
        if (fields != null) this.fields = fields;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StructType(struct_, fields, incomplete);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.FuncType_static_extension) class FuncType {
    public var func : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var typeParams : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>);
    public var params : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>);
    public var results : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>);
    public function new(?func:stdgo._internal.go.token.Token.Pos, ?typeParams:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>, ?params:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>, ?results:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>) {
        if (func != null) this.func = func;
        if (typeParams != null) this.typeParams = typeParams;
        if (params != null) this.params = params;
        if (results != null) this.results = results;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FuncType(func, typeParams, params, results);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.InterfaceType_static_extension) class InterfaceType {
    public var interface_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var methods : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>);
    public var incomplete : Bool = false;
    public function new(?interface_:stdgo._internal.go.token.Token.Pos, ?methods:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>, ?incomplete:Bool) {
        if (interface_ != null) this.interface_ = interface_;
        if (methods != null) this.methods = methods;
        if (incomplete != null) this.incomplete = incomplete;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InterfaceType(interface_, methods, incomplete);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.MapType_static_extension) class MapType {
    public var map_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var key : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var value : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public function new(?map_:stdgo._internal.go.token.Token.Pos, ?key:stdgo._internal.go.ast.Ast.Expr, ?value:stdgo._internal.go.ast.Ast.Expr) {
        if (map_ != null) this.map_ = map_;
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MapType(map_, key, value);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.ChanType_static_extension) class ChanType {
    public var begin : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var arrow : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var dir : stdgo._internal.go.ast.Ast.ChanDir = ((0 : stdgo.GoInt) : stdgo._internal.go.ast.Ast.ChanDir);
    public var value : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public function new(?begin:stdgo._internal.go.token.Token.Pos, ?arrow:stdgo._internal.go.token.Token.Pos, ?dir:stdgo._internal.go.ast.Ast.ChanDir, ?value:stdgo._internal.go.ast.Ast.Expr) {
        if (begin != null) this.begin = begin;
        if (arrow != null) this.arrow = arrow;
        if (dir != null) this.dir = dir;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ChanType(begin, arrow, dir, value);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.BadStmt_static_extension) class BadStmt {
    public var from : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var to : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?from:stdgo._internal.go.token.Token.Pos, ?to:stdgo._internal.go.token.Token.Pos) {
        if (from != null) this.from = from;
        if (to != null) this.to = to;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BadStmt(from, to);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.DeclStmt_static_extension) class DeclStmt {
    public var decl : stdgo._internal.go.ast.Ast.Decl = (null : stdgo._internal.go.ast.Ast.Decl);
    public function new(?decl:stdgo._internal.go.ast.Ast.Decl) {
        if (decl != null) this.decl = decl;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DeclStmt(decl);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.EmptyStmt_static_extension) class EmptyStmt {
    public var semicolon : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var implicit : Bool = false;
    public function new(?semicolon:stdgo._internal.go.token.Token.Pos, ?implicit:Bool) {
        if (semicolon != null) this.semicolon = semicolon;
        if (implicit != null) this.implicit = implicit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new EmptyStmt(semicolon, implicit);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.LabeledStmt_static_extension) class LabeledStmt {
    public var label : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>);
    public var colon : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var stmt : stdgo._internal.go.ast.Ast.Stmt = (null : stdgo._internal.go.ast.Ast.Stmt);
    public function new(?label:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>, ?colon:stdgo._internal.go.token.Token.Pos, ?stmt:stdgo._internal.go.ast.Ast.Stmt) {
        if (label != null) this.label = label;
        if (colon != null) this.colon = colon;
        if (stmt != null) this.stmt = stmt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LabeledStmt(label, colon, stmt);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.ExprStmt_static_extension) class ExprStmt {
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public function new(?x:stdgo._internal.go.ast.Ast.Expr) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ExprStmt(x);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.SendStmt_static_extension) class SendStmt {
    public var chan : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var arrow : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var value : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public function new(?chan:stdgo._internal.go.ast.Ast.Expr, ?arrow:stdgo._internal.go.token.Token.Pos, ?value:stdgo._internal.go.ast.Ast.Expr) {
        if (chan != null) this.chan = chan;
        if (arrow != null) this.arrow = arrow;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SendStmt(chan, arrow, value);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.IncDecStmt_static_extension) class IncDecStmt {
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var tokPos : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var tok : stdgo._internal.go.token.Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
    public function new(?x:stdgo._internal.go.ast.Ast.Expr, ?tokPos:stdgo._internal.go.token.Token.Pos, ?tok:stdgo._internal.go.token.Token.Token) {
        if (x != null) this.x = x;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IncDecStmt(x, tokPos, tok);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.AssignStmt_static_extension) class AssignStmt {
    public var lhs : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>);
    public var tokPos : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var tok : stdgo._internal.go.token.Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
    public var rhs : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>);
    public function new(?lhs:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>, ?tokPos:stdgo._internal.go.token.Token.Pos, ?tok:stdgo._internal.go.token.Token.Token, ?rhs:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>) {
        if (lhs != null) this.lhs = lhs;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (rhs != null) this.rhs = rhs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AssignStmt(lhs, tokPos, tok, rhs);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.GoStmt_static_extension) class GoStmt {
    public var go : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var call : stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr>);
    public function new(?go:stdgo._internal.go.token.Token.Pos, ?call:stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr>) {
        if (go != null) this.go = go;
        if (call != null) this.call = call;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GoStmt(go, call);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.DeferStmt_static_extension) class DeferStmt {
    public var defer : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var call : stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr>);
    public function new(?defer:stdgo._internal.go.token.Token.Pos, ?call:stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr>) {
        if (defer != null) this.defer = defer;
        if (call != null) this.call = call;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DeferStmt(defer, call);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.ReturnStmt_static_extension) class ReturnStmt {
    public var return_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var results : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>);
    public function new(?return_:stdgo._internal.go.token.Token.Pos, ?results:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>) {
        if (return_ != null) this.return_ = return_;
        if (results != null) this.results = results;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ReturnStmt(return_, results);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.BranchStmt_static_extension) class BranchStmt {
    public var tokPos : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var tok : stdgo._internal.go.token.Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
    public var label : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>);
    public function new(?tokPos:stdgo._internal.go.token.Token.Pos, ?tok:stdgo._internal.go.token.Token.Token, ?label:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) {
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (label != null) this.label = label;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BranchStmt(tokPos, tok, label);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.BlockStmt_static_extension) class BlockStmt {
    public var lbrace : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var list : stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>);
    public var rbrace : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?lbrace:stdgo._internal.go.token.Token.Pos, ?list:stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>, ?rbrace:stdgo._internal.go.token.Token.Pos) {
        if (lbrace != null) this.lbrace = lbrace;
        if (list != null) this.list = list;
        if (rbrace != null) this.rbrace = rbrace;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BlockStmt(lbrace, list, rbrace);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.IfStmt_static_extension) class IfStmt {
    public var if_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var init : stdgo._internal.go.ast.Ast.Stmt = (null : stdgo._internal.go.ast.Ast.Stmt);
    public var cond : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>);
    public var else_ : stdgo._internal.go.ast.Ast.Stmt = (null : stdgo._internal.go.ast.Ast.Stmt);
    public function new(?if_:stdgo._internal.go.token.Token.Pos, ?init:stdgo._internal.go.ast.Ast.Stmt, ?cond:stdgo._internal.go.ast.Ast.Expr, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>, ?else_:stdgo._internal.go.ast.Ast.Stmt) {
        if (if_ != null) this.if_ = if_;
        if (init != null) this.init = init;
        if (cond != null) this.cond = cond;
        if (body != null) this.body = body;
        if (else_ != null) this.else_ = else_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IfStmt(if_, init, cond, body, else_);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.CaseClause_static_extension) class CaseClause {
    public var case_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var list : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>);
    public var colon : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var body : stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>);
    public function new(?case_:stdgo._internal.go.token.Token.Pos, ?list:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>, ?colon:stdgo._internal.go.token.Token.Pos, ?body:stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>) {
        if (case_ != null) this.case_ = case_;
        if (list != null) this.list = list;
        if (colon != null) this.colon = colon;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CaseClause(case_, list, colon, body);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.SwitchStmt_static_extension) class SwitchStmt {
    public var switch_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var init : stdgo._internal.go.ast.Ast.Stmt = (null : stdgo._internal.go.ast.Ast.Stmt);
    public var tag : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>);
    public function new(?switch_:stdgo._internal.go.token.Token.Pos, ?init:stdgo._internal.go.ast.Ast.Stmt, ?tag:stdgo._internal.go.ast.Ast.Expr, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) {
        if (switch_ != null) this.switch_ = switch_;
        if (init != null) this.init = init;
        if (tag != null) this.tag = tag;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SwitchStmt(switch_, init, tag, body);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.TypeSwitchStmt_static_extension) class TypeSwitchStmt {
    public var switch_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var init : stdgo._internal.go.ast.Ast.Stmt = (null : stdgo._internal.go.ast.Ast.Stmt);
    public var assign : stdgo._internal.go.ast.Ast.Stmt = (null : stdgo._internal.go.ast.Ast.Stmt);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>);
    public function new(?switch_:stdgo._internal.go.token.Token.Pos, ?init:stdgo._internal.go.ast.Ast.Stmt, ?assign:stdgo._internal.go.ast.Ast.Stmt, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) {
        if (switch_ != null) this.switch_ = switch_;
        if (init != null) this.init = init;
        if (assign != null) this.assign = assign;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeSwitchStmt(switch_, init, assign, body);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.CommClause_static_extension) class CommClause {
    public var case_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var comm : stdgo._internal.go.ast.Ast.Stmt = (null : stdgo._internal.go.ast.Ast.Stmt);
    public var colon : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var body : stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>);
    public function new(?case_:stdgo._internal.go.token.Token.Pos, ?comm:stdgo._internal.go.ast.Ast.Stmt, ?colon:stdgo._internal.go.token.Token.Pos, ?body:stdgo.Slice<stdgo._internal.go.ast.Ast.Stmt>) {
        if (case_ != null) this.case_ = case_;
        if (comm != null) this.comm = comm;
        if (colon != null) this.colon = colon;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CommClause(case_, comm, colon, body);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.SelectStmt_static_extension) class SelectStmt {
    public var select : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>);
    public function new(?select:stdgo._internal.go.token.Token.Pos, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) {
        if (select != null) this.select = select;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SelectStmt(select, body);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.ForStmt_static_extension) class ForStmt {
    public var for_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var init : stdgo._internal.go.ast.Ast.Stmt = (null : stdgo._internal.go.ast.Ast.Stmt);
    public var cond : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var post : stdgo._internal.go.ast.Ast.Stmt = (null : stdgo._internal.go.ast.Ast.Stmt);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>);
    public function new(?for_:stdgo._internal.go.token.Token.Pos, ?init:stdgo._internal.go.ast.Ast.Stmt, ?cond:stdgo._internal.go.ast.Ast.Expr, ?post:stdgo._internal.go.ast.Ast.Stmt, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) {
        if (for_ != null) this.for_ = for_;
        if (init != null) this.init = init;
        if (cond != null) this.cond = cond;
        if (post != null) this.post = post;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ForStmt(for_, init, cond, post, body);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.RangeStmt_static_extension) class RangeStmt {
    public var for_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var key : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var value : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var tokPos : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var tok : stdgo._internal.go.token.Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
    public var range : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var x : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>);
    public function new(?for_:stdgo._internal.go.token.Token.Pos, ?key:stdgo._internal.go.ast.Ast.Expr, ?value:stdgo._internal.go.ast.Ast.Expr, ?tokPos:stdgo._internal.go.token.Token.Pos, ?tok:stdgo._internal.go.token.Token.Token, ?range:stdgo._internal.go.token.Token.Pos, ?x:stdgo._internal.go.ast.Ast.Expr, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) {
        if (for_ != null) this.for_ = for_;
        if (key != null) this.key = key;
        if (value != null) this.value = value;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (range != null) this.range = range;
        if (x != null) this.x = x;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RangeStmt(for_, key, value, tokPos, tok, range, x, body);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.ImportSpec_static_extension) class ImportSpec {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public var name : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>);
    public var path : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>);
    public var comment : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public var endPos : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>, ?name:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>, ?path:stdgo.Ref<stdgo._internal.go.ast.Ast.BasicLit>, ?comment:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>, ?endPos:stdgo._internal.go.token.Token.Pos) {
        if (doc != null) this.doc = doc;
        if (name != null) this.name = name;
        if (path != null) this.path = path;
        if (comment != null) this.comment = comment;
        if (endPos != null) this.endPos = endPos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ImportSpec(doc, name, path, comment, endPos);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.ValueSpec_static_extension) class ValueSpec {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public var names : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>);
    public var type : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var values : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>);
    public var comment : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>, ?names:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>, ?type:stdgo._internal.go.ast.Ast.Expr, ?values:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>, ?comment:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>) {
        if (doc != null) this.doc = doc;
        if (names != null) this.names = names;
        if (type != null) this.type = type;
        if (values != null) this.values = values;
        if (comment != null) this.comment = comment;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ValueSpec(doc, names, type, values, comment);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.TypeSpec_static_extension) class TypeSpec {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public var name : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>);
    public var typeParams : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>);
    public var assign : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var type : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    public var comment : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>, ?name:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>, ?typeParams:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>, ?assign:stdgo._internal.go.token.Token.Pos, ?type:stdgo._internal.go.ast.Ast.Expr, ?comment:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>) {
        if (doc != null) this.doc = doc;
        if (name != null) this.name = name;
        if (typeParams != null) this.typeParams = typeParams;
        if (assign != null) this.assign = assign;
        if (type != null) this.type = type;
        if (comment != null) this.comment = comment;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TypeSpec(doc, name, typeParams, assign, type, comment);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.BadDecl_static_extension) class BadDecl {
    public var from : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var to : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?from:stdgo._internal.go.token.Token.Pos, ?to:stdgo._internal.go.token.Token.Pos) {
        if (from != null) this.from = from;
        if (to != null) this.to = to;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BadDecl(from, to);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.GenDecl_static_extension) class GenDecl {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public var tokPos : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var tok : stdgo._internal.go.token.Token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
    public var lparen : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var specs : stdgo.Slice<stdgo._internal.go.ast.Ast.Spec> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Spec>);
    public var rparen : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>, ?tokPos:stdgo._internal.go.token.Token.Pos, ?tok:stdgo._internal.go.token.Token.Token, ?lparen:stdgo._internal.go.token.Token.Pos, ?specs:stdgo.Slice<stdgo._internal.go.ast.Ast.Spec>, ?rparen:stdgo._internal.go.token.Token.Pos) {
        if (doc != null) this.doc = doc;
        if (tokPos != null) this.tokPos = tokPos;
        if (tok != null) this.tok = tok;
        if (lparen != null) this.lparen = lparen;
        if (specs != null) this.specs = specs;
        if (rparen != null) this.rparen = rparen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GenDecl(doc, tokPos, tok, lparen, specs, rparen);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.FuncDecl_static_extension) class FuncDecl {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public var recv : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>);
    public var name : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>);
    public var type : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>);
    public var body : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>);
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>, ?recv:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>, ?name:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>, ?type:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>, ?body:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) {
        if (doc != null) this.doc = doc;
        if (recv != null) this.recv = recv;
        if (name != null) this.name = name;
        if (type != null) this.type = type;
        if (body != null) this.body = body;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FuncDecl(doc, recv, name, type, body);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.File_static_extension) class File {
    public var doc : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public var package_ : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var name : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>);
    public var decls : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>);
    public var fileStart : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var fileEnd : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var scope : stdgo.Ref<stdgo._internal.go.ast.Ast.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Scope>);
    public var imports : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>>);
    public var unresolved : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>);
    public var comments : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
    public var goVersion : stdgo.GoString = "";
    public function new(?doc:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>, ?package_:stdgo._internal.go.token.Token.Pos, ?name:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>, ?decls:stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>, ?fileStart:stdgo._internal.go.token.Token.Pos, ?fileEnd:stdgo._internal.go.token.Token.Pos, ?scope:stdgo.Ref<stdgo._internal.go.ast.Ast.Scope>, ?imports:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>>, ?unresolved:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>, ?comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>, ?goVersion:stdgo.GoString) {
        if (doc != null) this.doc = doc;
        if (package_ != null) this.package_ = package_;
        if (name != null) this.name = name;
        if (decls != null) this.decls = decls;
        if (fileStart != null) this.fileStart = fileStart;
        if (fileEnd != null) this.fileEnd = fileEnd;
        if (scope != null) this.scope = scope;
        if (imports != null) this.imports = imports;
        if (unresolved != null) this.unresolved = unresolved;
        if (comments != null) this.comments = comments;
        if (goVersion != null) this.goVersion = goVersion;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(
doc,
package_,
name,
decls,
fileStart,
fileEnd,
scope,
imports,
unresolved,
comments,
goVersion);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.Package_static_extension) class Package {
    public var name : stdgo.GoString = "";
    public var scope : stdgo.Ref<stdgo._internal.go.ast.Ast.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Scope>);
    public var imports : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.Object>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.Object>>);
    public var files : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.File>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.File>>);
    public function new(?name:stdgo.GoString, ?scope:stdgo.Ref<stdgo._internal.go.ast.Ast.Scope>, ?imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.Object>>, ?files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.File>>) {
        if (name != null) this.name = name;
        if (scope != null) this.scope = scope;
        if (imports != null) this.imports = imports;
        if (files != null) this.files = files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Package(name, scope, imports, files);
    }
}
@:structInit @:private @:using(stdgo._internal.go.ast.Ast.T_commentListReader_static_extension) class T_commentListReader {
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token.FileSet>);
    public var _list : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
    public var _index : stdgo.GoInt = 0;
    public var _comment : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public var _pos : stdgo._internal.go.token.Token.Position = ({} : stdgo._internal.go.token.Token.Position);
    public var _end : stdgo._internal.go.token.Token.Position = ({} : stdgo._internal.go.token.Token.Position);
    public function new(?_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, ?_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>, ?_index:stdgo.GoInt, ?_comment:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>, ?_pos:stdgo._internal.go.token.Token.Position, ?_end:stdgo._internal.go.token.Token.Position) {
        if (_fset != null) this._fset = _fset;
        if (_list != null) this._list = _list;
        if (_index != null) this._index = _index;
        if (_comment != null) this._comment = _comment;
        if (_pos != null) this._pos = _pos;
        if (_end != null) this._end = _end;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_commentListReader(_fset, _list, _index, _comment, _pos, _end);
    }
}
@:structInit @:private class T_posSpan {
    public var start : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public var end : stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    public function new(?start:stdgo._internal.go.token.Token.Pos, ?end:stdgo._internal.go.token.Token.Pos) {
        if (start != null) this.start = start;
        if (end != null) this.end = end;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_posSpan(start, end);
    }
}
@:structInit @:private class T_cgPos {
    public var _left : Bool = false;
    public var _cg : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
    public function new(?_left:Bool, ?_cg:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>) {
        if (_left != null) this._left = _left;
        if (_cg != null) this._cg = _cg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cgPos(_left, _cg);
    }
}
@:structInit @:private @:using(stdgo._internal.go.ast.Ast.T_printer_static_extension) class T_printer {
    public var _output : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token.FileSet>);
    public var _filter : stdgo._internal.go.ast.Ast.FieldFilter = (null : stdgo._internal.go.ast.Ast.FieldFilter);
    public var _ptrmap : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>);
    public var _indent : stdgo.GoInt = 0;
    public var _last : stdgo.GoUInt8 = 0;
    public var _line : stdgo.GoInt = 0;
    public function new(?_output:stdgo._internal.io.Io.Writer, ?_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, ?_filter:stdgo._internal.go.ast.Ast.FieldFilter, ?_ptrmap:stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>, ?_indent:stdgo.GoInt, ?_last:stdgo.GoUInt8, ?_line:stdgo.GoInt) {
        if (_output != null) this._output = _output;
        if (_fset != null) this._fset = _fset;
        if (_filter != null) this._filter = _filter;
        if (_ptrmap != null) this._ptrmap = _ptrmap;
        if (_indent != null) this._indent = _indent;
        if (_last != null) this._last = _last;
        if (_line != null) this._line = _line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_printer(_output, _fset, _filter, _ptrmap, _indent, _last, _line);
    }
}
@:structInit @:private class T_localError {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_localError(_err);
    }
}
@:structInit @:private @:using(stdgo._internal.go.ast.Ast.T_pkgBuilder_static_extension) class T_pkgBuilder {
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token.FileSet>);
    public var _errors : stdgo._internal.go.scanner.Scanner.ErrorList = new stdgo._internal.go.scanner.Scanner.ErrorList(0, 0);
    public function new(?_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, ?_errors:stdgo._internal.go.scanner.Scanner.ErrorList) {
        if (_fset != null) this._fset = _fset;
        if (_errors != null) this._errors = _errors;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkgBuilder(_fset, _errors);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.Scope_static_extension) class Scope {
    public var outer : stdgo.Ref<stdgo._internal.go.ast.Ast.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Scope>);
    public var objects : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.Object>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.Object>>);
    public function new(?outer:stdgo.Ref<stdgo._internal.go.ast.Ast.Scope>, ?objects:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.Object>>) {
        if (outer != null) this.outer = outer;
        if (objects != null) this.objects = objects;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Scope(outer, objects);
    }
}
@:structInit @:using(stdgo._internal.go.ast.Ast.Object_static_extension) class Object {
    public var kind : stdgo._internal.go.ast.Ast.ObjKind = ((0 : stdgo.GoInt) : stdgo._internal.go.ast.Ast.ObjKind);
    public var name : stdgo.GoString = "";
    public var decl : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var data : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var type : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?kind:stdgo._internal.go.ast.Ast.ObjKind, ?name:stdgo.GoString, ?decl:stdgo.AnyInterface, ?data:stdgo.AnyInterface, ?type:stdgo.AnyInterface) {
        if (kind != null) this.kind = kind;
        if (name != null) this.name = name;
        if (decl != null) this.decl = decl;
        if (data != null) this.data = data;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Object(kind, name, decl, data, type);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.go.ast.Ast.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _list : stdgo.Slice<stdgo.GoString>;
    public var _text : stdgo.GoString;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.go.ast.Ast.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _in : stdgo.GoString;
    public var _ok : Bool;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.go.ast.Ast.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _x : stdgo.AnyInterface;
    public var _s : stdgo.GoString;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.go.ast.Ast.T__struct_3_static_extension) typedef T__struct_3 = {};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.go.ast.Ast.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _x : stdgo.GoInt;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.go.ast.Ast.T__struct_5_static_extension) typedef T__struct_5 = {
    public var x : stdgo.GoInt;
    public var _y : stdgo.GoInt;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.go.ast.Ast.T__struct_6_static_extension) typedef T__struct_6 = {
    public var x : stdgo.GoInt;
    public var y : stdgo.GoInt;
};
@:named typedef ChanDir = stdgo.GoInt;
@:named @:using(stdgo._internal.go.ast.Ast.T_byPos_static_extension) typedef T_byPos = stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>;
@:named @:using(stdgo._internal.go.ast.Ast.CommentMap_static_extension) typedef CommentMap = stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>>;
@:named @:using(stdgo._internal.go.ast.Ast.T_byInterval_static_extension) typedef T_byInterval = stdgo.Slice<stdgo._internal.go.ast.Ast.Node>;
@:named @:using(stdgo._internal.go.ast.Ast.T_nodeStack_static_extension) typedef T_nodeStack = stdgo.Slice<stdgo._internal.go.ast.Ast.Node>;
@:named typedef Filter = stdgo.GoString -> Bool;
@:named typedef MergeMode = stdgo.GoUInt;
@:named typedef FieldFilter = (stdgo.GoString, stdgo._internal.reflect.Reflect.Value) -> Bool;
@:named typedef Importer = (stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.Object>>, stdgo.GoString) -> { var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast.Object>; var _1 : stdgo.Error; };
@:named @:using(stdgo._internal.go.ast.Ast.ObjKind_static_extension) typedef ObjKind = stdgo.GoInt;
@:named @:using(stdgo._internal.go.ast.Ast.T_inspector_static_extension) typedef T_inspector = stdgo._internal.go.ast.Ast.Node -> Bool;
function _isWhitespace(_ch:stdgo.GoByte):Bool {
        return (((_ch == ((32 : stdgo.GoUInt8)) || _ch == ((9 : stdgo.GoUInt8)) : Bool) || _ch == ((10 : stdgo.GoUInt8)) : Bool) || (_ch == (13 : stdgo.GoUInt8)) : Bool);
    }
function _stripTrailingWhitespace(_s:stdgo.GoString):stdgo.GoString {
        var _i:stdgo.GoInt = (_s.length);
        while (((_i > (0 : stdgo.GoInt) : Bool) && _isWhitespace(_s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _i--;
        };
        return (_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
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
function newIdent(_name:stdgo.GoString):stdgo.Ref<Ident> {
        return (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast.Ident((0 : stdgo._internal.go.token.Token.Pos), _name?.__copy__(), null) : stdgo._internal.go.ast.Ast.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>);
    }
function isExported(_name:stdgo.GoString):Bool {
        return stdgo._internal.go.token.Token.isExported(_name?.__copy__());
    }
function isGenerated(_file:stdgo.Ref<File>):Bool {
        var __tmp__ = _generator(_file), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        return _ok;
    }
function _generator(_file:stdgo.Ref<File>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        for (__0 => _group in _file.comments) {
            for (__1 => _comment in _group.list) {
                if ((_comment.pos() > _file.package_ : Bool)) {
                    break;
                };
                {};
                if (stdgo._internal.strings.Strings.contains(_comment.text?.__copy__(), ("// Code generated " : stdgo.GoString))) {
                    for (__2 => _line in stdgo._internal.strings.Strings.split(_comment.text?.__copy__(), ("\n" : stdgo.GoString))) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings.cutPrefix(_line?.__copy__(), ("// Code generated " : stdgo.GoString)), _rest:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                {
                                    var __tmp__ = stdgo._internal.strings.Strings.cutSuffix(_rest?.__copy__(), (" DO NOT EDIT." : stdgo.GoString)), _gen:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                                    if (_ok) {
                                        return { _0 : _gen?.__copy__(), _1 : true };
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
    }
function testCommentText(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _c in _comments) {
            var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>((_c._list.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>);
            for (_i => _s in _c._list) {
                _list[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ text : _s?.__copy__() } : stdgo._internal.go.ast.Ast.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>);
            };
            var _text:stdgo.GoString = (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast.CommentGroup(_list) : stdgo._internal.go.ast.Ast.CommentGroup)) : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>).text()?.__copy__();
            if (_text != (_c._text)) {
                _t.errorf(("case %d: got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_c._text));
            };
        };
    }
function testIsDirective(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _isDirectiveTests) {
            {
                var _ok:Bool = _isDirective(_tt._in?.__copy__());
                if (_ok != (_tt._ok)) {
                    _t.errorf(("isDirective(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_tt._ok));
                };
            };
        };
    }
function _sortComments(_list:stdgo.Slice<stdgo.Ref<CommentGroup>>):Void {
        {
            var _orderedList:stdgo._internal.go.ast.Ast.T_byPos = (_list : T_byPos);
            if (!stdgo._internal.sort.Sort.isSorted(stdgo.Go.asInterface(_orderedList))) {
                stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface(_orderedList));
            };
        };
    }
function _nodeList(_n:Node):stdgo.Slice<Node> {
        var _list:stdgo.Slice<Node> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Node>);
        inspect(_n, function(_n:Node):Bool {
            {
                final __type__ = _n;
                if (__type__ == null || stdgo.Go.typeEquals((__type__ : stdgo.Ref<CommentGroup>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<Comment>))) {
                    return false;
                };
            };
            _list = (_list.__append__(_n));
            return true;
        });
        return _list;
    }
function newCommentMap(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _node:Node, _comments:stdgo.Slice<stdgo.Ref<CommentGroup>>):CommentMap {
        if ((_comments.length) == ((0 : stdgo.GoInt))) {
            return null;
        };
        var _cmap:stdgo._internal.go.ast.Ast.CommentMap = (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast.Node", [], stdgo._internal.internal.reflect.Reflect.GoType.named("Node", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>>) : stdgo._internal.go.ast.Ast.CommentMap);
        var _tmp = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>((_comments.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
        stdgo.Go.copySlice(_tmp, _comments);
        _sortComments(_tmp);
        var _r:stdgo._internal.go.ast.Ast.T_commentListReader = ({ _fset : _fset, _list : _tmp } : stdgo._internal.go.ast.Ast.T_commentListReader);
        _r._next();
        var _nodes = _nodeList(_node);
        _nodes = (_nodes.__append__((null : stdgo._internal.go.ast.Ast.Node)));
        var __0:Node = (null : stdgo._internal.go.ast.Ast.Node), __1:stdgo._internal.go.token.Token.Position = ({} : stdgo._internal.go.token.Token.Position), __2:Node = (null : stdgo._internal.go.ast.Ast.Node), __3:stdgo._internal.go.token.Token.Position = ({} : stdgo._internal.go.token.Token.Position), __4:T_nodeStack = new stdgo._internal.go.ast.Ast.T_nodeStack(0, 0), _stack:T_nodeStack = __4, _pgend:stdgo._internal.go.token.Token.Position = __3, _pg:Node = __2, _pend:stdgo._internal.go.token.Token.Position = __1, _p:Node = __0;
        for (__8 => _q in _nodes) {
            var _qpos:stdgo._internal.go.token.Token.Position = ({} : stdgo._internal.go.token.Token.Position);
            if (_q != null) {
                _qpos = _fset.position(_q.pos())?.__copy__();
            } else {
                {};
                _qpos.offset = (1073741824 : stdgo.GoInt);
                _qpos.line = (1073741824 : stdgo.GoInt);
            };
            while ((_r._end.offset <= _qpos.offset : Bool)) {
                {
                    var _top:stdgo._internal.go.ast.Ast.Node = _stack._pop(_r._comment.pos());
                    if (_top != null) {
                        _pg = _top;
                        _pgend = _fset.position(_pg.end())?.__copy__();
                    };
                };
                var _assoc:Node = (null : stdgo._internal.go.ast.Ast.Node);
                if (((_pg != null) && (((_pgend.line == _r._pos.line) || ((_pgend.line + (1 : stdgo.GoInt) : stdgo.GoInt) == (_r._pos.line) && ((_r._end.line + (1 : stdgo.GoInt) : stdgo.GoInt) < _qpos.line : Bool) : Bool) : Bool)) : Bool)) {
                    _assoc = _pg;
                } else if (((_p != null) && (((_pend.line == (_r._pos.line) || ((_pend.line + (1 : stdgo.GoInt) : stdgo.GoInt) == (_r._pos.line) && ((_r._end.line + (1 : stdgo.GoInt) : stdgo.GoInt) < _qpos.line : Bool) : Bool) : Bool) || (_q == null) : Bool)) : Bool)) {
                    _assoc = _p;
                } else {
                    if (_q == null) {
                        throw stdgo.Go.toInterface(("internal error: no comments should be associated with sentinel" : stdgo.GoString));
                    };
                    _assoc = _q;
                };
                _cmap._addComment(_assoc, _r._comment);
                if (_r._eol()) {
                    return _cmap;
                };
                _r._next();
            };
            _p = _q;
            _pend = _fset.position(_p.end())?.__copy__();
            {
                final __type__ = _q;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<File>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<Field>)) || stdgo.Go.typeEquals((__type__ : Decl)) || stdgo.Go.typeEquals((__type__ : Spec)) || stdgo.Go.typeEquals((__type__ : Stmt))) {
                    _stack._push(_q);
                };
            };
        };
        return _cmap;
    }
function _summary(_list:stdgo.Slice<stdgo.Ref<CommentGroup>>):stdgo.GoString {
        stdgo._internal.internal.Macro.controlFlow({
            {};
            var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            @:label("loop") for (__0 => _group in _list) {
                for (__1 => _comment in _group.list) {
                    if ((_buf.len() >= (40 : stdgo.GoInt) : Bool)) {
                        @:jump("loop") break;
                    };
                    _buf.writeString(_comment.text?.__copy__());
                };
            };
            if ((_buf.len() > (40 : stdgo.GoInt) : Bool)) {
                _buf.truncate((37 : stdgo.GoInt));
                _buf.writeString(("..." : stdgo.GoString));
            };
            var _bytes = _buf.bytes();
            for (_i => _b in _bytes) {
                {
                    final __value__ = _b;
                    if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8))) {
                        _bytes[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                    };
                };
            };
            return (_bytes : stdgo.GoString)?.__copy__();
        });
        throw "controlFlow did not return";
    }
function _exportFilter(_name:stdgo.GoString):Bool {
        return isExported(_name?.__copy__());
    }
function fileExports(_src:stdgo.Ref<File>):Bool {
        return _filterFile(_src, _exportFilter, true);
    }
function packageExports(_pkg:stdgo.Ref<Package>):Bool {
        return _filterPackage(_pkg, _exportFilter, true);
    }
function _filterIdentList(_list:stdgo.Slice<stdgo.Ref<Ident>>, _f:Filter):stdgo.Slice<stdgo.Ref<Ident>> {
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _x in _list) {
            if (_f(_x.name?.__copy__())) {
                _list[(_j : stdgo.GoInt)] = _x;
                _j++;
            };
        };
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>);
    }
function _fieldName(_x:Expr):stdgo.Ref<Ident> {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Ident>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                return _t;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<SelectorExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t.x) : stdgo.Ref<Ident>)) : stdgo.Ref<Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>), _1 : false };
                    }, __0 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return _t.sel;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<StarExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__.__underlying__().value;
                return _fieldName(_t.x);
            };
        };
        return null;
    }
function _filterFieldList(_fields:stdgo.Ref<FieldList>, _filter:Filter, _export:Bool):Bool {
        var _removedFields:Bool = false;
        if (_fields == null || (_fields : Dynamic).__nil__) {
            return false;
        };
        var _list = _fields.list;
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _f in _list) {
            var _keepField:Bool = false;
            if ((_f.names.length) == ((0 : stdgo.GoInt))) {
                var _name = _fieldName(_f.type);
                _keepField = (((_name != null) && ((_name : Dynamic).__nil__ == null || !(_name : Dynamic).__nil__)) && _filter(_name.name?.__copy__()) : Bool);
            } else {
                var _n:stdgo.GoInt = (_f.names.length);
                _f.names = _filterIdentList(_f.names, _filter);
                if (((_f.names.length) < _n : Bool)) {
                    _removedFields = true;
                };
                _keepField = ((_f.names.length) > (0 : stdgo.GoInt) : Bool);
            };
            if (_keepField) {
                if (_export) {
                    _filterType(_f.type, _filter, _export);
                };
                _list[(_j : stdgo.GoInt)] = _f;
                _j++;
            };
        };
        if ((_j < (_list.length) : Bool)) {
            _removedFields = true;
        };
        _fields.list = (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Field>>);
        return _removedFields;
    }
function _filterCompositeLit(_lit:stdgo.Ref<CompositeLit>, _filter:Filter, _export:Bool):Void {
        var _n:stdgo.GoInt = (_lit.elts.length);
        _lit.elts = _filterExprList(_lit.elts, _filter, _export);
        if (((_lit.elts.length) < _n : Bool)) {
            _lit.incomplete = true;
        };
    }
function _filterExprList(_list:stdgo.Slice<Expr>, _filter:Filter, _export:Bool):stdgo.Slice<Expr> {
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _exp in _list) {
            {
                final __type__ = _exp;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<CompositeLit>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__.__underlying__().value;
                    _filterCompositeLit(_x, _filter, _export);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<KeyValueExpr>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>) : __type__.__underlying__().value;
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x.key) : stdgo.Ref<Ident>)) : stdgo.Ref<Ident>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>), _1 : false };
                        }, _x = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && !_filter(_x.name?.__copy__()) : Bool)) {
                            continue;
                        };
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x.value) : stdgo.Ref<CompositeLit>)) : stdgo.Ref<CompositeLit>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>), _1 : false };
                        }, _x = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _filterCompositeLit(_x, _filter, _export);
                        };
                    };
                };
            };
            _list[(_j : stdgo.GoInt)] = _exp;
            _j++;
        };
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>);
    }
function _filterParamList(_fields:stdgo.Ref<FieldList>, _filter:Filter, _export:Bool):Bool {
        if (_fields == null || (_fields : Dynamic).__nil__) {
            return false;
        };
        var _b:Bool = false;
        for (__0 => _f in _fields.list) {
            if (_filterType(_f.type, _filter, _export)) {
                _b = true;
            };
        };
        return _b;
    }
function _filterType(_typ:Expr, _f:Filter, _export:Bool):Bool {
        {
            final __type__ = _typ;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Ident>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>) : __type__.__underlying__().value;
                return _f(_t.name?.__copy__());
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ParenExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                return _filterType(_t.x, _f, _export);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ArrayType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType>) : __type__.__underlying__().value;
                return _filterType(_t.elt, _f, _export);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<StructType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StructType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StructType>) : __type__.__underlying__().value;
                if (_filterFieldList(_t.fields, _f, _export)) {
                    _t.incomplete = true;
                };
                return ((_t.fields.list.length) > (0 : stdgo.GoInt) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<FuncType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>) : __type__.__underlying__().value;
                var _b1:Bool = _filterParamList(_t.params, _f, _export);
                var _b2:Bool = _filterParamList(_t.results, _f, _export);
                return (_b1 || _b2 : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<InterfaceType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType>) : __type__.__underlying__().value;
                if (_filterFieldList(_t.methods, _f, _export)) {
                    _t.incomplete = true;
                };
                return ((_t.methods.list.length) > (0 : stdgo.GoInt) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<MapType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.MapType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.MapType>) : __type__.__underlying__().value;
                var _b1:Bool = _filterType(_t.key, _f, _export);
                var _b2:Bool = _filterType(_t.value, _f, _export);
                return (_b1 || _b2 : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ChanType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType>) : __type__.__underlying__().value;
                return _filterType(_t.value, _f, _export);
            };
        };
        return false;
    }
function _filterSpec(_spec:Spec, _f:Filter, _export:Bool):Bool {
        {
            final __type__ = _spec;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ValueSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__().value;
                _s.names = _filterIdentList(_s.names, _f);
                _s.values = _filterExprList(_s.values, _f, _export);
                if (((_s.names.length) > (0 : stdgo.GoInt) : Bool)) {
                    if (_export) {
                        _filterType(_s.type, _f, _export);
                    };
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<TypeSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__().value;
                if (_f(_s.name.name?.__copy__())) {
                    if (_export) {
                        _filterType(_s.type, _f, _export);
                    };
                    return true;
                };
                if (!_export) {
                    return _filterType(_s.type, _f, _export);
                };
            };
        };
        return false;
    }
function _filterSpecList(_list:stdgo.Slice<Spec>, _f:Filter, _export:Bool):stdgo.Slice<Spec> {
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _s in _list) {
            if (_filterSpec(_s, _f, _export)) {
                _list[(_j : stdgo.GoInt)] = _s;
                _j++;
            };
        };
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast.Spec>);
    }
function filterDecl(_decl:Decl, _f:Filter):Bool {
        return _filterDecl(_decl, _f, false);
    }
function _filterDecl(_decl:Decl, _f:Filter, _export:Bool):Bool {
        {
            final __type__ = _decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<GenDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__().value;
                _d.specs = _filterSpecList(_d.specs, _f, _export);
                return ((_d.specs.length) > (0 : stdgo.GoInt) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__().value;
                return _f(_d.name.name?.__copy__());
            };
        };
        return false;
    }
function filterFile(_src:stdgo.Ref<File>, _f:Filter):Bool {
        return _filterFile(_src, _f, false);
    }
function _filterFile(_src:stdgo.Ref<File>, _f:Filter, _export:Bool):Bool {
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _d in _src.decls) {
            if (_filterDecl(_d, _f, _export)) {
                _src.decls[(_j : stdgo.GoInt)] = _d;
                _j++;
            };
        };
        _src.decls = (_src.decls.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>);
        return (_j > (0 : stdgo.GoInt) : Bool);
    }
function filterPackage(_pkg:stdgo.Ref<Package>, _f:Filter):Bool {
        return _filterPackage(_pkg, _f, false);
    }
function _filterPackage(_pkg:stdgo.Ref<Package>, _f:Filter, _export:Bool):Bool {
        var _hasDecls:Bool = false;
        for (__0 => _src in _pkg.files) {
            if (_filterFile(_src, _f, _export)) {
                _hasDecls = true;
            };
        };
        return _hasDecls;
    }
function _nameOf(_f:stdgo.Ref<FuncDecl>):stdgo.GoString {
        {
            var _r = _f.recv;
            if ((((_r != null) && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__)) && (_r.list.length == (1 : stdgo.GoInt)) : Bool)) {
                var _t:stdgo._internal.go.ast.Ast.Expr = _r.list[(0 : stdgo.GoInt)].type;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<StarExpr>)) : stdgo.Ref<StarExpr>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>), _1 : false };
                    }, _p = __tmp__._0, __0 = __tmp__._1;
                    if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
                        _t = _p.x;
                    };
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<Ident>)) : stdgo.Ref<Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>), _1 : false };
                    }, _p = __tmp__._0, __1 = __tmp__._1;
                    if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
                        return ((_p.name + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _f.name.name?.__copy__() : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
        return _f.name.name?.__copy__();
    }
function mergePackageFiles(_pkg:stdgo.Ref<Package>, _mode:MergeMode):stdgo.Ref<File> {
        var _ndocs:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ncomments:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ndecls:stdgo.GoInt = (0 : stdgo.GoInt);
        var _filenames = (new stdgo.Slice<stdgo.GoString>((_pkg.files.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __0:stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos), __1:stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos), _maxPos:stdgo._internal.go.token.Token.Pos = __1, _minPos:stdgo._internal.go.token.Token.Pos = __0;
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_filename => _f in _pkg.files) {
            _filenames[(_i : stdgo.GoInt)] = _filename?.__copy__();
            _i++;
            if (_f.doc != null && ((_f.doc : Dynamic).__nil__ == null || !(_f.doc : Dynamic).__nil__)) {
                _ndocs = (_ndocs + (((_f.doc.list.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            _ncomments = (_ncomments + ((_f.comments.length)) : stdgo.GoInt);
            _ndecls = (_ndecls + ((_f.decls.length)) : stdgo.GoInt);
            if (((_i == (0 : stdgo.GoInt)) || (_f.fileStart < _minPos : Bool) : Bool)) {
                _minPos = _f.fileStart;
            };
            if (((_i == (0 : stdgo.GoInt)) || (_f.fileEnd > _maxPos : Bool) : Bool)) {
                _maxPos = _f.fileEnd;
            };
        };
        stdgo._internal.sort.Sort.strings(_filenames);
        var _doc:stdgo.Ref<CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
        var _pos:stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
        if ((_ndocs > (0 : stdgo.GoInt) : Bool)) {
            var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>((_ndocs - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>>);
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            for (__0 => _filename in _filenames) {
                var _f = (_pkg.files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>));
                if (_f.doc != null && ((_f.doc : Dynamic).__nil__ == null || !(_f.doc : Dynamic).__nil__)) {
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        _list[(_i : stdgo.GoInt)] = _separator;
                        _i++;
                    };
                    for (__1 => _c in _f.doc.list) {
                        _list[(_i : stdgo.GoInt)] = _c;
                        _i++;
                    };
                    if ((_f.package_ > _pos : Bool)) {
                        _pos = _f.package_;
                    };
                };
            };
            _doc = (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast.CommentGroup(_list) : stdgo._internal.go.ast.Ast.CommentGroup)) : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>);
        };
        var _decls:stdgo.Slice<Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>);
        if ((_ndecls > (0 : stdgo.GoInt) : Bool)) {
            _decls = (new stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>((_ndecls : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>);
            var _funcs = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            for (__2 => _filename in _filenames) {
                var _f = (_pkg.files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>));
                for (__3 => _d in _f.decls) {
                    if ((_mode & (1u32 : stdgo._internal.go.ast.Ast.MergeMode) : stdgo._internal.go.ast.Ast.MergeMode) != ((0u32 : stdgo._internal.go.ast.Ast.MergeMode))) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d) : stdgo.Ref<FuncDecl>)) : stdgo.Ref<FuncDecl>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>), _1 : false };
                            }, _f = __tmp__._0, _isFun = __tmp__._1;
                            if (_isFun) {
                                var _name:stdgo.GoString = _nameOf(_f)?.__copy__();
                                {
                                    var __tmp__ = (_funcs != null && _funcs.exists(_name?.__copy__()) ? { _0 : _funcs[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _j:stdgo.GoInt = __tmp__._0, _exists:Bool = __tmp__._1;
                                    if (_exists) {
                                        if (((_decls[(_j : stdgo.GoInt)] != null) && ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_decls[(_j : stdgo.GoInt)]) : stdgo.Ref<FuncDecl>)) : stdgo.Ref<FuncDecl>).doc == null) || ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_decls[(_j : stdgo.GoInt)]) : stdgo.Ref<FuncDecl>)) : stdgo.Ref<FuncDecl>).doc : Dynamic).__nil__ : Bool)) {
                                            _decls[(_j : stdgo.GoInt)] = (null : stdgo._internal.go.ast.Ast.Decl);
                                        } else {
                                            _d = (null : stdgo._internal.go.ast.Ast.Decl);
                                        };
                                        _n++;
                                    } else {
                                        _funcs[_name] = _i;
                                    };
                                };
                            };
                        };
                    };
                    _decls[(_i : stdgo.GoInt)] = _d;
                    _i++;
                };
            };
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _i = (0 : stdgo.GoInt);
                for (__4 => _d in _decls) {
                    if (_d != null) {
                        _decls[(_i : stdgo.GoInt)] = _d;
                        _i++;
                    };
                };
                _decls = (_decls.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo._internal.go.ast.Ast.Decl>);
            };
        };
        var _imports:stdgo.Slice<stdgo.Ref<ImportSpec>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>>);
        if ((_mode & (4u32 : stdgo._internal.go.ast.Ast.MergeMode) : stdgo._internal.go.ast.Ast.MergeMode) != ((0u32 : stdgo._internal.go.ast.Ast.MergeMode))) {
            var _seen = ({
                final x = new stdgo.GoMap.GoStringMap<Bool>();
                x.__defaultValue__ = () -> false;
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, Bool>);
            for (__5 => _filename in _filenames) {
                var _f = (_pkg.files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>));
                for (__6 => _imp in _f.imports) {
                    {
                        var _path:stdgo.GoString = _imp.path.value?.__copy__();
                        if (!(_seen[_path] ?? false)) {
                            _imports = (_imports.__append__(_imp));
                            _seen[_path] = true;
                        };
                    };
                };
            };
        } else {
            for (__7 => _filename in _filenames) {
                var _f = (_pkg.files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>));
                _imports = (_imports.__append__(...(_f.imports : Array<stdgo._internal.go.ast.Ast.ImportSpec>)));
            };
        };
        var _comments:stdgo.Slice<stdgo.Ref<CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
        if ((_mode & (2u32 : stdgo._internal.go.ast.Ast.MergeMode) : stdgo._internal.go.ast.Ast.MergeMode) == ((0u32 : stdgo._internal.go.ast.Ast.MergeMode))) {
            _comments = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>((_ncomments : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            for (__8 => _filename in _filenames) {
                var _f = (_pkg.files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>));
                _i = (_i + (stdgo.Go.copySlice((_comments.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>), _f.comments)) : stdgo.GoInt);
            };
        };
        return (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast.File(
_doc,
_pos,
newIdent(_pkg.name?.__copy__()),
_decls,
_minPos,
_maxPos,
_pkg.scope,
_imports,
(null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>),
_comments,
stdgo.Go.str()?.__copy__()) : stdgo._internal.go.ast.Ast.File)) : stdgo.Ref<stdgo._internal.go.ast.Ast.File>);
    }
function sortImports(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _f:stdgo.Ref<File>):Void {
        for (__0 => _d in _f.decls) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d) : stdgo.Ref<GenDecl>)) : stdgo.Ref<GenDecl>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>), _1 : false };
            }, _d = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_d.tok != (75 : stdgo._internal.go.token.Token.Token)) : Bool)) {
                break;
            };
            if (!_d.lparen.isValid()) {
                continue;
            };
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            var _specs = (_d.specs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast.Spec>);
            for (_j => _s in _d.specs) {
                if (((_j > _i : Bool) && (_lineAt(_fset, _s.pos()) > ((1 : stdgo.GoInt) + _lineAt(_fset, _d.specs[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)].end()) : stdgo.GoInt) : Bool) : Bool)) {
                    _specs = (_specs.__append__(...(_sortSpecs(_fset, _f, (_d.specs.__slice__(_i, _j) : stdgo.Slice<stdgo._internal.go.ast.Ast.Spec>)) : Array<stdgo._internal.go.ast.Ast.Spec>)));
                    _i = _j;
                };
            };
            _specs = (_specs.__append__(...(_sortSpecs(_fset, _f, (_d.specs.__slice__(_i) : stdgo.Slice<stdgo._internal.go.ast.Ast.Spec>)) : Array<stdgo._internal.go.ast.Ast.Spec>)));
            _d.specs = _specs;
            if (((_d.specs.length) > (0 : stdgo.GoInt) : Bool)) {
                var _lastSpec:stdgo._internal.go.ast.Ast.Spec = _d.specs[((_d.specs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                var _lastLine:stdgo.GoInt = _lineAt(_fset, _lastSpec.pos());
                var _rParenLine:stdgo.GoInt = _lineAt(_fset, _d.rparen);
                while ((_rParenLine > (_lastLine + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    _rParenLine--;
                    _fset.file(_d.rparen).mergeLine(_rParenLine);
                };
            };
        };
    }
function _lineAt(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _pos:stdgo._internal.go.token.Token.Pos):stdgo.GoInt {
        return _fset.positionFor(_pos, false).line;
    }
function _importPath(_s:Spec):stdgo.GoString {
        var __tmp__ = stdgo._internal.strconv.Strconv.unquote((stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<ImportSpec>)) : stdgo.Ref<ImportSpec>).path.value?.__copy__()), _t:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            return _t?.__copy__();
        };
        return stdgo.Go.str()?.__copy__();
    }
function _importName(_s:Spec):stdgo.GoString {
        var _n = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<ImportSpec>)) : stdgo.Ref<ImportSpec>).name;
        if (_n == null || (_n : Dynamic).__nil__) {
            return stdgo.Go.str()?.__copy__();
        };
        return _n.name?.__copy__();
    }
function _importComment(_s:Spec):stdgo.GoString {
        var _c = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<ImportSpec>)) : stdgo.Ref<ImportSpec>).comment;
        if (_c == null || (_c : Dynamic).__nil__) {
            return stdgo.Go.str()?.__copy__();
        };
        return _c.text()?.__copy__();
    }
function _collapse(_prev:Spec, _next:Spec):Bool {
        if (((_importPath(_next) != _importPath(_prev)) || (_importName(_next) != _importName(_prev)) : Bool)) {
            return false;
        };
        return (stdgo.Go.typeAssert((stdgo.Go.toInterface(_prev) : stdgo.Ref<ImportSpec>)) : stdgo.Ref<ImportSpec>).comment == null || ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_prev) : stdgo.Ref<ImportSpec>)) : stdgo.Ref<ImportSpec>).comment : Dynamic).__nil__;
    }
function _sortSpecs(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _f:stdgo.Ref<File>, _specs:stdgo.Slice<Spec>):stdgo.Slice<Spec> {
        if (((_specs.length) <= (1 : stdgo.GoInt) : Bool)) {
            return _specs;
        };
        var _pos = (new stdgo.Slice<stdgo._internal.go.ast.Ast.T_posSpan>((_specs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_specs.length : stdgo.GoInt).toBasic() > 0 ? (_specs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.ast.Ast.T_posSpan)]) : stdgo.Slice<stdgo._internal.go.ast.Ast.T_posSpan>);
        for (_i => _s in _specs) {
            _pos[(_i : stdgo.GoInt)] = (new stdgo._internal.go.ast.Ast.T_posSpan(_s.pos(), _s.end()) : stdgo._internal.go.ast.Ast.T_posSpan);
        };
        var _begSpecs:stdgo._internal.go.token.Token.Pos = _pos[(0 : stdgo.GoInt)].start;
        var _endSpecs:stdgo._internal.go.token.Token.Pos = _pos[((_pos.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end;
        var _beg:stdgo._internal.go.token.Token.Pos = _fset.file(_begSpecs).lineStart(_lineAt(_fset, _begSpecs));
        var _endLine:stdgo.GoInt = _lineAt(_fset, _endSpecs);
        var _endFile = _fset.file(_endSpecs);
        var _end:stdgo._internal.go.token.Token.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
        if (_endLine == (_endFile.lineCount())) {
            _end = _endSpecs;
        } else {
            _end = _endFile.lineStart((_endLine + (1 : stdgo.GoInt) : stdgo.GoInt));
        };
        var _first:stdgo.GoInt = (_f.comments.length);
        var _last:stdgo.GoInt = (-1 : stdgo.GoInt);
        for (_i => _g in _f.comments) {
            if ((_g.end() >= _end : Bool)) {
                break;
            };
            if ((_beg <= _g.pos() : Bool)) {
                if ((_i < _first : Bool)) {
                    _first = _i;
                };
                if ((_i > _last : Bool)) {
                    _last = _i;
                };
            };
        };
        var _comments:stdgo.Slice<stdgo.Ref<CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
        if ((_last >= (0 : stdgo.GoInt) : Bool)) {
            _comments = (_f.comments.__slice__(_first, (_last + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
        };
        var _importComments = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>, stdgo.Slice<stdgo._internal.go.ast.Ast.T_cgPos>>();
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>, stdgo.Slice<stdgo._internal.go.ast.Ast.T_cgPos>>);
        var _specIndex:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__16 => _g in _comments) {
            while ((((_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt) < (_specs.length) : Bool) && (_pos[(_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt)].start <= _g.pos() : Bool) : Bool)) {
                _specIndex++;
            };
            var _left:Bool = false;
            if (((_specIndex == (0 : stdgo.GoInt)) && (_pos[(_specIndex : stdgo.GoInt)].start > _g.pos() : Bool) : Bool)) {
                _left = true;
            } else if ((((_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt) < (_specs.length) : Bool) && ((_lineAt(_fset, _pos[(_specIndex : stdgo.GoInt)].start) + (1 : stdgo.GoInt) : stdgo.GoInt) == _lineAt(_fset, _g.pos())) : Bool)) {
                _specIndex++;
                _left = true;
            };
            var _s = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_specs[(_specIndex : stdgo.GoInt)]) : stdgo.Ref<ImportSpec>)) : stdgo.Ref<ImportSpec>);
            _importComments[_s] = ((_importComments[_s] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast.T_cgPos>)).__append__(({ _left : _left, _cg : _g } : stdgo._internal.go.ast.Ast.T_cgPos)));
        };
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_specs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            var _ipath:stdgo.GoString = _importPath(_specs[(_i : stdgo.GoInt)])?.__copy__();
            var _jpath:stdgo.GoString = _importPath(_specs[(_j : stdgo.GoInt)])?.__copy__();
            if (_ipath != (_jpath)) {
                return (_ipath < _jpath : Bool);
            };
            var _iname:stdgo.GoString = _importName(_specs[(_i : stdgo.GoInt)])?.__copy__();
            var _jname:stdgo.GoString = _importName(_specs[(_j : stdgo.GoInt)])?.__copy__();
            if (_iname != (_jname)) {
                return (_iname < _jname : Bool);
            };
            return (_importComment(_specs[(_i : stdgo.GoInt)]) < _importComment(_specs[(_j : stdgo.GoInt)]) : Bool);
        });
        var _deduped = (_specs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast.Spec>);
        for (_i => _s in _specs) {
            if (((_i == ((_specs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) || !_collapse(_s, _specs[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                _deduped = (_deduped.__append__(_s));
            } else {
                var _p:stdgo._internal.go.token.Token.Pos = _s.pos();
                _fset.file(_p).mergeLine(_lineAt(_fset, _p));
            };
        };
        _specs = _deduped;
        for (_i => _s in _specs) {
            var _s = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<ImportSpec>)) : stdgo.Ref<ImportSpec>);
            if (_s.name != null && ((_s.name : Dynamic).__nil__ == null || !(_s.name : Dynamic).__nil__)) {
                _s.name.namePos = _pos[(_i : stdgo.GoInt)].start;
            };
            _s.path.valuePos = _pos[(_i : stdgo.GoInt)].start;
            _s.endPos = _pos[(_i : stdgo.GoInt)].end;
            for (__25 => _g in (_importComments[_s] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast.T_cgPos>))) {
                for (__26 => _c in _g._cg.list) {
                    if (_g._left) {
                        _c.slash = (_pos[(_i : stdgo.GoInt)].start - (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
                    } else {
                        _c.slash = _pos[(_i : stdgo.GoInt)].end;
                    };
                };
            };
        };
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_comments), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_comments[(_i : stdgo.GoInt)].pos() < _comments[(_j : stdgo.GoInt)].pos() : Bool);
        });
        return _specs;
    }
function notNilFilter(__0:stdgo.GoString, _v:stdgo._internal.reflect.Reflect.Value):Bool {
        {
            final __value__ = _v.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return !_v.isNil();
            };
        };
        return true;
    }
function fprint(_w:stdgo._internal.io.Io.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _x:stdgo.AnyInterface, _f:FieldFilter):stdgo.Error {
        return _fprint(_w, _fset, _x, _f);
    }
function _fprint(_w:stdgo._internal.io.Io.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _x:stdgo.AnyInterface, _f:FieldFilter):stdgo.Error {
        var __deferstack__:Array<Void -> Void> = [];
        var _err:stdgo.Error = (null : stdgo.Error);
        try {
            var _p:stdgo._internal.go.ast.Ast.T_printer = ({ _output : _w, _fset : _fset, _filter : _f, _ptrmap : ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoInt>), _last : (10 : stdgo.GoUInt8) } : stdgo._internal.go.ast.Ast.T_printer);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _e:stdgo.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_e != null) {
                            _err = (stdgo.Go.typeAssert((_e : T_localError)) : T_localError)._err;
                        };
                    };
                };
                a();
            });
            if (_x == null) {
                _p._printf(("nil\n" : stdgo.GoString));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _p._print(stdgo._internal.reflect.Reflect.valueOf(_x)?.__copy__());
            _p._printf(("\n" : stdgo.GoString));
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
function print(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _x:stdgo.AnyInterface):stdgo.Error {
        return fprint(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _fset, _x, notNilFilter);
    }
function _trim(_s:stdgo.GoString):stdgo.GoString {
        var _lines = stdgo._internal.strings.Strings.split(_s?.__copy__(), ("\n" : stdgo.GoString));
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _line in _lines) {
            _line = stdgo._internal.strings.Strings.trimSpace(_line?.__copy__())?.__copy__();
            if (_line != (stdgo.Go.str())) {
                _lines[(_i : stdgo.GoInt)] = _line?.__copy__();
                _i++;
            };
        };
        return stdgo._internal.strings.Strings.join((_lines.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoString>), ("\n" : stdgo.GoString))?.__copy__();
    }
function testPrint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        for (__0 => _test in _tests) {
            _buf.reset();
            {
                var _err:stdgo.Error = fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), null, _test._x, null);
                if (_err != null) {
                    _t.errorf(("Fprint failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __0:stdgo.GoString = _trim((_buf.string() : stdgo.GoString)?.__copy__())?.__copy__(), __1:stdgo.GoString = _trim(_test._s?.__copy__())?.__copy__(), _ts:stdgo.GoString = __1, _s:stdgo.GoString = __0;
                if (_s != (_ts)) {
                    _t.errorf(("got:\n%s\nexpected:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ts));
                };
            };
        };
    }
function _resolve(_scope:stdgo.Ref<Scope>, _ident:stdgo.Ref<Ident>):Bool {
        stdgo.Go.cfor(_scope != null && ((_scope : Dynamic).__nil__ == null || !(_scope : Dynamic).__nil__), _scope = _scope.outer, {
            {
                var _obj = _scope.lookup(_ident.name?.__copy__());
                if (_obj != null && ((_obj : Dynamic).__nil__ == null || !(_obj : Dynamic).__nil__)) {
                    _ident.obj = _obj;
                    return true;
                };
            };
        });
        return false;
    }
function newPackage(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _files:stdgo.GoMap<stdgo.GoString, stdgo.Ref<File>>, _importer:Importer, _universe:stdgo.Ref<Scope>):{ var _0 : stdgo.Ref<Package>; var _1 : stdgo.Error; } {
        var _p:T_pkgBuilder = ({} : stdgo._internal.go.ast.Ast.T_pkgBuilder);
        _p._fset = _fset;
        var _pkgName:stdgo.GoString = stdgo.Go.str()?.__copy__();
        var _pkgScope = newScope(_universe);
        for (__8 => _file in _files) {
            {
                var _name:stdgo.GoString = _file.name.name?.__copy__();
                if (_pkgName == (stdgo.Go.str())) {
                    _pkgName = _name?.__copy__();
                } else if (_name != (_pkgName)) {
                    _p._errorf(_file.package_, ("package %s; expected %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_pkgName));
                    continue;
                };
            };
            for (__17 => _obj in _file.scope.objects) {
                _p._declare(_pkgScope, null, _obj);
            };
        };
        var _imports = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast.Object>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Object>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.Object>>);
        for (__26 => _file in _files) {
            if (_file.name.name != (_pkgName)) {
                continue;
            };
            var _importErrors:Bool = false;
            var _fileScope = newScope(_pkgScope);
            for (__27 => _spec in _file.imports) {
                if (_importer == null) {
                    _importErrors = true;
                    continue;
                };
                var __tmp__ = stdgo._internal.strconv.Strconv.unquote(_spec.path.value?.__copy__()), _path:stdgo.GoString = __tmp__._0, __28:stdgo.Error = __tmp__._1;
                var __tmp__ = _importer(_imports, _path?.__copy__()), _pkg:stdgo.Ref<stdgo._internal.go.ast.Ast.Object> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _p._errorf(_spec.path.pos(), ("could not import %s (%s)" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                    _importErrors = true;
                    continue;
                };
                var _name:stdgo.GoString = _pkg.name?.__copy__();
                if (_spec.name != null && ((_spec.name : Dynamic).__nil__ == null || !(_spec.name : Dynamic).__nil__)) {
                    _name = _spec.name.name?.__copy__();
                };
                if (_name == (("." : stdgo.GoString))) {
                    for (__37 => _obj in (stdgo.Go.typeAssert((_pkg.data : stdgo.Ref<Scope>)) : stdgo.Ref<Scope>).objects) {
                        _p._declare(_fileScope, _pkgScope, _obj);
                    };
                } else if (_name != (("_" : stdgo.GoString))) {
                    var _obj = newObj((1 : stdgo._internal.go.ast.Ast.ObjKind), _name?.__copy__());
                    _obj.decl = stdgo.Go.toInterface(stdgo.Go.asInterface(_spec));
                    _obj.data = _pkg.data;
                    _p._declare(_fileScope, _pkgScope, _obj);
                };
            };
            if (_importErrors) {
                _pkgScope.outer = null;
            };
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            for (__54 => _ident in _file.unresolved) {
                if (!_resolve(_fileScope, _ident)) {
                    _p._errorf(_ident.pos(), ("undeclared name: %s" : stdgo.GoString), stdgo.Go.toInterface(_ident.name));
                    _file.unresolved[(_i : stdgo.GoInt)] = _ident;
                    _i++;
                };
            };
            _file.unresolved = (_file.unresolved.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>>);
            _pkgScope.outer = _universe;
        };
        _p._errors.sort();
        return { _0 : (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast.Package(_pkgName?.__copy__(), _pkgScope, _imports, _files) : stdgo._internal.go.ast.Ast.Package)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Package>), _1 : _p._errors.err() };
    }
function newScope(_outer:stdgo.Ref<Scope>):stdgo.Ref<Scope> {
        {};
        return (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast.Scope(_outer, ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast.Object>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Object>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast.Object>>)) : stdgo._internal.go.ast.Ast.Scope)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Scope>);
    }
function newObj(_kind:ObjKind, _name:stdgo.GoString):stdgo.Ref<Object> {
        return (stdgo.Go.setRef(({ kind : _kind, name : _name?.__copy__() } : stdgo._internal.go.ast.Ast.Object)) : stdgo.Ref<stdgo._internal.go.ast.Ast.Object>);
    }
function _walkIdentList(_v:Visitor, _list:stdgo.Slice<stdgo.Ref<Ident>>):Void {
        for (__0 => _x in _list) {
            walk(_v, stdgo.Go.asInterface(_x));
        };
    }
function _walkExprList(_v:Visitor, _list:stdgo.Slice<Expr>):Void {
        for (__0 => _x in _list) {
            walk(_v, _x);
        };
    }
function _walkStmtList(_v:Visitor, _list:stdgo.Slice<Stmt>):Void {
        for (__0 => _x in _list) {
            walk(_v, _x);
        };
    }
function _walkDeclList(_v:Visitor, _list:stdgo.Slice<Decl>):Void {
        for (__0 => _x in _list) {
            walk(_v, _x);
        };
    }
function walk(_v:Visitor, _node:Node):Void {
        {
            _v = _v.visit(_node);
            if (_v == null) {
                return;
            };
        };
        {
            final __type__ = _node;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Comment>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.Comment> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Comment>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<CommentGroup>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>) : __type__.__underlying__().value;
                for (__0 => _c in _n.list) {
                    walk(_v, stdgo.Go.asInterface(_c));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Field>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.doc));
                };
                _walkIdentList(_v, _n.names);
                if (_n.type != null) {
                    walk(_v, _n.type);
                };
                if (_n.tag != null && ((_n.tag : Dynamic).__nil__ == null || !(_n.tag : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.tag));
                };
                if (_n.comment != null && ((_n.comment : Dynamic).__nil__ == null || !(_n.comment : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<FieldList>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FieldList>) : __type__.__underlying__().value;
                for (__1 => _f in _n.list) {
                    walk(_v, stdgo.Go.asInterface(_f));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<BadExpr>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<Ident>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<BasicLit>))) {
                var _n:stdgo._internal.go.ast.Ast.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast.Node) : cast __type__;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Ellipsis>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.Ellipsis> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ellipsis>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ellipsis>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ellipsis>) : __type__.__underlying__().value;
                if (_n.elt != null) {
                    walk(_v, _n.elt);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<FuncLit>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncLit>) : __type__.__underlying__().value;
                walk(_v, stdgo.Go.asInterface(_n.type));
                walk(_v, stdgo.Go.asInterface(_n.body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<CompositeLit>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CompositeLit>) : __type__.__underlying__().value;
                if (_n.type != null) {
                    walk(_v, _n.type);
                };
                _walkExprList(_v, _n.elts);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ParenExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ParenExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<SelectorExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectorExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                walk(_v, stdgo.Go.asInterface(_n.sel));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<IndexExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                walk(_v, _n.index);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<IndexListExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                for (__2 => _index in _n.indices) {
                    walk(_v, _index);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<SliceExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.SliceExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SliceExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SliceExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SliceExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                if (_n.low != null) {
                    walk(_v, _n.low);
                };
                if (_n.high != null) {
                    walk(_v, _n.high);
                };
                if (_n.max != null) {
                    walk(_v, _n.max);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<TypeAssertExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.TypeAssertExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeAssertExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeAssertExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeAssertExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                if (_n.type != null) {
                    walk(_v, _n.type);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<CallExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CallExpr>) : __type__.__underlying__().value;
                walk(_v, _n.fun);
                _walkExprList(_v, _n.args);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<StarExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StarExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<UnaryExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.UnaryExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<BinaryExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BinaryExpr>) : __type__.__underlying__().value;
                walk(_v, _n.x);
                walk(_v, _n.y);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<KeyValueExpr>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.KeyValueExpr>) : __type__.__underlying__().value;
                walk(_v, _n.key);
                walk(_v, _n.value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ArrayType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ArrayType>) : __type__.__underlying__().value;
                if (_n.len != null) {
                    walk(_v, _n.len);
                };
                walk(_v, _n.elt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<StructType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StructType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.StructType>) : __type__.__underlying__().value;
                walk(_v, stdgo.Go.asInterface(_n.fields));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<FuncType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncType>) : __type__.__underlying__().value;
                if (_n.typeParams != null && ((_n.typeParams : Dynamic).__nil__ == null || !(_n.typeParams : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.typeParams));
                };
                if (_n.params != null && ((_n.params : Dynamic).__nil__ == null || !(_n.params : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.params));
                };
                if (_n.results != null && ((_n.results : Dynamic).__nil__ == null || !(_n.results : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.results));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<InterfaceType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.InterfaceType>) : __type__.__underlying__().value;
                walk(_v, stdgo.Go.asInterface(_n.methods));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<MapType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.MapType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.MapType>) : __type__.__underlying__().value;
                walk(_v, _n.key);
                walk(_v, _n.value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ChanType>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ChanType>) : __type__.__underlying__().value;
                walk(_v, _n.value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<BadStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.BadStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadStmt>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<DeclStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.DeclStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeclStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeclStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeclStmt>) : __type__.__underlying__().value;
                walk(_v, _n.decl);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<EmptyStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.EmptyStmt>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<LabeledStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>) : __type__.__underlying__().value;
                walk(_v, stdgo.Go.asInterface(_n.label));
                walk(_v, _n.stmt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ExprStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ExprStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ExprStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ExprStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ExprStmt>) : __type__.__underlying__().value;
                walk(_v, _n.x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<SendStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.SendStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SendStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SendStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SendStmt>) : __type__.__underlying__().value;
                walk(_v, _n.chan);
                walk(_v, _n.value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<IncDecStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.IncDecStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IncDecStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IncDecStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IncDecStmt>) : __type__.__underlying__().value;
                walk(_v, _n.x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<AssignStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt>) : __type__.__underlying__().value;
                _walkExprList(_v, _n.lhs);
                _walkExprList(_v, _n.rhs);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<GoStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.GoStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GoStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GoStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GoStmt>) : __type__.__underlying__().value;
                walk(_v, stdgo.Go.asInterface(_n.call));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<DeferStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.DeferStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeferStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeferStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.DeferStmt>) : __type__.__underlying__().value;
                walk(_v, stdgo.Go.asInterface(_n.call));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ReturnStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ReturnStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ReturnStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ReturnStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ReturnStmt>) : __type__.__underlying__().value;
                _walkExprList(_v, _n.results);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<BranchStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.BranchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BranchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BranchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BranchStmt>) : __type__.__underlying__().value;
                if (_n.label != null && ((_n.label : Dynamic).__nil__ == null || !(_n.label : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.label));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<BlockStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BlockStmt>) : __type__.__underlying__().value;
                _walkStmtList(_v, _n.list);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<IfStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.IfStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IfStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IfStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IfStmt>) : __type__.__underlying__().value;
                if (_n.init != null) {
                    walk(_v, _n.init);
                };
                walk(_v, _n.cond);
                walk(_v, stdgo.Go.asInterface(_n.body));
                if (_n.else_ != null) {
                    walk(_v, _n.else_);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<CaseClause>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.CaseClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CaseClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CaseClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CaseClause>) : __type__.__underlying__().value;
                _walkExprList(_v, _n.list);
                _walkStmtList(_v, _n.body);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<SwitchStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.SwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SwitchStmt>) : __type__.__underlying__().value;
                if (_n.init != null) {
                    walk(_v, _n.init);
                };
                if (_n.tag != null) {
                    walk(_v, _n.tag);
                };
                walk(_v, stdgo.Go.asInterface(_n.body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<TypeSwitchStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSwitchStmt>) : __type__.__underlying__().value;
                if (_n.init != null) {
                    walk(_v, _n.init);
                };
                walk(_v, _n.assign);
                walk(_v, stdgo.Go.asInterface(_n.body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<CommClause>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.CommClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.CommClause>) : __type__.__underlying__().value;
                if (_n.comm != null) {
                    walk(_v, _n.comm);
                };
                _walkStmtList(_v, _n.body);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<SelectStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.SelectStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.SelectStmt>) : __type__.__underlying__().value;
                walk(_v, stdgo.Go.asInterface(_n.body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ForStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ForStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ForStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ForStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ForStmt>) : __type__.__underlying__().value;
                if (_n.init != null) {
                    walk(_v, _n.init);
                };
                if (_n.cond != null) {
                    walk(_v, _n.cond);
                };
                if (_n.post != null) {
                    walk(_v, _n.post);
                };
                walk(_v, stdgo.Go.asInterface(_n.body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<RangeStmt>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.RangeStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.RangeStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.RangeStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.RangeStmt>) : __type__.__underlying__().value;
                if (_n.key != null) {
                    walk(_v, _n.key);
                };
                if (_n.value != null) {
                    walk(_v, _n.value);
                };
                walk(_v, _n.x);
                walk(_v, stdgo.Go.asInterface(_n.body));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ImportSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.doc));
                };
                if (_n.name != null && ((_n.name : Dynamic).__nil__ == null || !(_n.name : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.name));
                };
                walk(_v, stdgo.Go.asInterface(_n.path));
                if (_n.comment != null && ((_n.comment : Dynamic).__nil__ == null || !(_n.comment : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ValueSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.doc));
                };
                _walkIdentList(_v, _n.names);
                if (_n.type != null) {
                    walk(_v, _n.type);
                };
                _walkExprList(_v, _n.values);
                if (_n.comment != null && ((_n.comment : Dynamic).__nil__ == null || !(_n.comment : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<TypeSpec>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.doc));
                };
                walk(_v, stdgo.Go.asInterface(_n.name));
                if (_n.typeParams != null && ((_n.typeParams : Dynamic).__nil__ == null || !(_n.typeParams : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.typeParams));
                };
                walk(_v, _n.type);
                if (_n.comment != null && ((_n.comment : Dynamic).__nil__ == null || !(_n.comment : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.comment));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<BadDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.BadDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.BadDecl>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<GenDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.GenDecl>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.doc));
                };
                for (__3 => _s in _n.specs) {
                    walk(_v, _s);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<FuncDecl>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.doc));
                };
                if (_n.recv != null && ((_n.recv : Dynamic).__nil__ == null || !(_n.recv : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.recv));
                };
                walk(_v, stdgo.Go.asInterface(_n.name));
                walk(_v, stdgo.Go.asInterface(_n.type));
                if (_n.body != null && ((_n.body : Dynamic).__nil__ == null || !(_n.body : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.body));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<File>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.File>) : __type__.__underlying__().value;
                if (_n.doc != null && ((_n.doc : Dynamic).__nil__ == null || !(_n.doc : Dynamic).__nil__)) {
                    walk(_v, stdgo.Go.asInterface(_n.doc));
                };
                walk(_v, stdgo.Go.asInterface(_n.name));
                _walkDeclList(_v, _n.decls);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Package>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast.Package> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Package>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Package>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Package>) : __type__.__underlying__().value;
                for (__4 => _f in _n.files) {
                    walk(_v, stdgo.Go.asInterface(_f));
                };
            } else {
                var _n:stdgo._internal.go.ast.Ast.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast.Node) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("ast.Walk: unexpected node type %T" : stdgo.GoString), stdgo.Go.toInterface(_n)));
            };
        };
        _v.visit((null : stdgo._internal.go.ast.Ast.Node));
    }
function inspect(_node:Node, _f:Node -> Bool):Void {
        walk(stdgo.Go.asInterface((_f : T_inspector)), _node);
    }
class Comment_asInterface {
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Comment>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.Comment_asInterface) class Comment_static_extension {
    @:keep
    static public function end( _c:stdgo.Ref<Comment>):stdgo._internal.go.token.Token.Pos {
        @:recv var _c:stdgo.Ref<Comment> = _c;
        return (((_c.slash : stdgo.GoInt) + (_c.text.length) : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _c:stdgo.Ref<Comment>):stdgo._internal.go.token.Token.Pos {
        @:recv var _c:stdgo.Ref<Comment> = _c;
        return _c.slash;
    }
}
class CommentGroup_asInterface {
    @:keep
    public dynamic function text():stdgo.GoString return __self__.value.text();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CommentGroup>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.CommentGroup_asInterface) class CommentGroup_static_extension {
    @:keep
    static public function text( _g:stdgo.Ref<CommentGroup>):stdgo.GoString {
        @:recv var _g:stdgo.Ref<CommentGroup> = _g;
        if (_g == null || (_g : Dynamic).__nil__) {
            return stdgo.Go.str()?.__copy__();
        };
        var _comments = (new stdgo.Slice<stdgo.GoString>((_g.list.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _c in _g.list) {
            _comments[(_i : stdgo.GoInt)] = _c.text?.__copy__();
        };
        var _lines = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _c in _comments) {
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c[(1 : stdgo.GoInt)];
                        if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _c = (_c.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            if ((_c.length) == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            if (_c[(0 : stdgo.GoInt)] == ((32 : stdgo.GoUInt8))) {
                                _c = (_c.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                break;
                            };
                            if (_isDirective(_c?.__copy__())) {
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            break;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _c = (_c.__slice__((2 : stdgo.GoInt), ((_c.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
            var _cl = stdgo._internal.strings.Strings.split(_c?.__copy__(), ("\n" : stdgo.GoString));
            for (__1 => _l in _cl) {
                _lines = (_lines.__append__(_stripTrailingWhitespace(_l?.__copy__())?.__copy__()));
            };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__2 => _line in _lines) {
            if (((_line != stdgo.Go.str()) || ((_n > (0 : stdgo.GoInt) : Bool) && _lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != (stdgo.Go.str()) : Bool) : Bool)) {
                _lines[(_n : stdgo.GoInt)] = _line?.__copy__();
                _n++;
            };
        };
        _lines = (_lines.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoString>);
        if (((_n > (0 : stdgo.GoInt) : Bool) && (_lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != stdgo.Go.str()) : Bool)) {
            _lines = (_lines.__append__(stdgo.Go.str()?.__copy__()));
        };
        return stdgo._internal.strings.Strings.join(_lines, ("\n" : stdgo.GoString))?.__copy__();
    }
    @:keep
    static public function end( _g:stdgo.Ref<CommentGroup>):stdgo._internal.go.token.Token.Pos {
        @:recv var _g:stdgo.Ref<CommentGroup> = _g;
        return _g.list[((_g.list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
    }
    @:keep
    static public function pos( _g:stdgo.Ref<CommentGroup>):stdgo._internal.go.token.Token.Pos {
        @:recv var _g:stdgo.Ref<CommentGroup> = _g;
        return _g.list[(0 : stdgo.GoInt)].pos();
    }
}
class Field_asInterface {
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Field>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.Field_asInterface) class Field_static_extension {
    @:keep
    static public function end( _f:stdgo.Ref<Field>):stdgo._internal.go.token.Token.Pos {
        @:recv var _f:stdgo.Ref<Field> = _f;
        if (_f.tag != null && ((_f.tag : Dynamic).__nil__ == null || !(_f.tag : Dynamic).__nil__)) {
            return _f.tag.end();
        };
        if (_f.type != null) {
            return _f.type.end();
        };
        if (((_f.names.length) > (0 : stdgo.GoInt) : Bool)) {
            return _f.names[((_f.names.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
        };
        return (0 : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _f:stdgo.Ref<Field>):stdgo._internal.go.token.Token.Pos {
        @:recv var _f:stdgo.Ref<Field> = _f;
        if (((_f.names.length) > (0 : stdgo.GoInt) : Bool)) {
            return _f.names[(0 : stdgo.GoInt)].pos();
        };
        if (_f.type != null) {
            return _f.type.pos();
        };
        return (0 : stdgo._internal.go.token.Token.Pos);
    }
}
class FieldList_asInterface {
    @:keep
    public dynamic function numFields():stdgo.GoInt return __self__.value.numFields();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FieldList>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.FieldList_asInterface) class FieldList_static_extension {
    @:keep
    static public function numFields( _f:stdgo.Ref<FieldList>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<FieldList> = _f;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) {
            for (__0 => _g in _f.list) {
                var _m:stdgo.GoInt = (_g.names.length);
                if (_m == ((0 : stdgo.GoInt))) {
                    _m = (1 : stdgo.GoInt);
                };
                _n = (_n + (_m) : stdgo.GoInt);
            };
        };
        return _n;
    }
    @:keep
    static public function end( _f:stdgo.Ref<FieldList>):stdgo._internal.go.token.Token.Pos {
        @:recv var _f:stdgo.Ref<FieldList> = _f;
        if (_f.closing.isValid()) {
            return (_f.closing + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
        };
        {
            var _n:stdgo.GoInt = (_f.list.length);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return _f.list[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        return (0 : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _f:stdgo.Ref<FieldList>):stdgo._internal.go.token.Token.Pos {
        @:recv var _f:stdgo.Ref<FieldList> = _f;
        if (_f.opening.isValid()) {
            return _f.opening;
        };
        if (((_f.list.length) > (0 : stdgo.GoInt) : Bool)) {
            return _f.list[(0 : stdgo.GoInt)].pos();
        };
        return (0 : stdgo._internal.go.token.Token.Pos);
    }
}
class BadExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BadExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.BadExpr_asInterface) class BadExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<BadExpr>):Void {
        @:recv var _:stdgo.Ref<BadExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<BadExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<BadExpr> = _x;
        return _x.to;
    }
    @:keep
    static public function pos( _x:stdgo.Ref<BadExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<BadExpr> = _x;
        return _x.from;
    }
}
class Ident_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function isExported():Bool return __self__.value.isExported();
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Ident>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.Ident_asInterface) class Ident_static_extension {
    @:keep
    static public function string( _id:stdgo.Ref<Ident>):stdgo.GoString {
        @:recv var _id:stdgo.Ref<Ident> = _id;
        if (_id != null && ((_id : Dynamic).__nil__ == null || !(_id : Dynamic).__nil__)) {
            return _id.name?.__copy__();
        };
        return ("<nil>" : stdgo.GoString);
    }
    @:keep
    static public function isExported( _id:stdgo.Ref<Ident>):Bool {
        @:recv var _id:stdgo.Ref<Ident> = _id;
        return stdgo._internal.go.token.Token.isExported(_id.name?.__copy__());
    }
    @:keep
    static public function _exprNode( _:stdgo.Ref<Ident>):Void {
        @:recv var _:stdgo.Ref<Ident> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<Ident>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<Ident> = _x;
        return (((_x.namePos : stdgo.GoInt) + (_x.name.length) : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:stdgo.Ref<Ident>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<Ident> = _x;
        return _x.namePos;
    }
}
class Ellipsis_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Ellipsis>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.Ellipsis_asInterface) class Ellipsis_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<Ellipsis>):Void {
        @:recv var _:stdgo.Ref<Ellipsis> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<Ellipsis>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<Ellipsis> = _x;
        if (_x.elt != null) {
            return _x.elt.end();
        };
        return (_x.ellipsis + (3 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:stdgo.Ref<Ellipsis>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<Ellipsis> = _x;
        return _x.ellipsis;
    }
}
class BasicLit_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BasicLit>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.BasicLit_asInterface) class BasicLit_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<BasicLit>):Void {
        @:recv var _:stdgo.Ref<BasicLit> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<BasicLit>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<BasicLit> = _x;
        return (((_x.valuePos : stdgo.GoInt) + (_x.value.length) : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:stdgo.Ref<BasicLit>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<BasicLit> = _x;
        return _x.valuePos;
    }
}
class FuncLit_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FuncLit>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.FuncLit_asInterface) class FuncLit_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<FuncLit>):Void {
        @:recv var _:stdgo.Ref<FuncLit> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<FuncLit>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<FuncLit> = _x;
        return _x.body.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<FuncLit>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<FuncLit> = _x;
        return _x.type.pos();
    }
}
class CompositeLit_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CompositeLit>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.CompositeLit_asInterface) class CompositeLit_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<CompositeLit>):Void {
        @:recv var _:stdgo.Ref<CompositeLit> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<CompositeLit>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<CompositeLit> = _x;
        return (_x.rbrace + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:stdgo.Ref<CompositeLit>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<CompositeLit> = _x;
        if (_x.type != null) {
            return _x.type.pos();
        };
        return _x.lbrace;
    }
}
class ParenExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ParenExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.ParenExpr_asInterface) class ParenExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<ParenExpr>):Void {
        @:recv var _:stdgo.Ref<ParenExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<ParenExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<ParenExpr> = _x;
        return (_x.rparen + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:stdgo.Ref<ParenExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<ParenExpr> = _x;
        return _x.lparen;
    }
}
class SelectorExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SelectorExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.SelectorExpr_asInterface) class SelectorExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<SelectorExpr>):Void {
        @:recv var _:stdgo.Ref<SelectorExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<SelectorExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<SelectorExpr> = _x;
        return _x.sel.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<SelectorExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<SelectorExpr> = _x;
        return _x.x.pos();
    }
}
class IndexExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<IndexExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.IndexExpr_asInterface) class IndexExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<IndexExpr>):Void {
        @:recv var _:stdgo.Ref<IndexExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<IndexExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<IndexExpr> = _x;
        return (_x.rbrack + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:stdgo.Ref<IndexExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<IndexExpr> = _x;
        return _x.x.pos();
    }
}
class IndexListExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<IndexListExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.IndexListExpr_asInterface) class IndexListExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<IndexListExpr>):Void {
        @:recv var _:stdgo.Ref<IndexListExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<IndexListExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<IndexListExpr> = _x;
        return (_x.rbrack + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:stdgo.Ref<IndexListExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<IndexListExpr> = _x;
        return _x.x.pos();
    }
}
class SliceExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SliceExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.SliceExpr_asInterface) class SliceExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<SliceExpr>):Void {
        @:recv var _:stdgo.Ref<SliceExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<SliceExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<SliceExpr> = _x;
        return (_x.rbrack + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:stdgo.Ref<SliceExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<SliceExpr> = _x;
        return _x.x.pos();
    }
}
class TypeAssertExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TypeAssertExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.TypeAssertExpr_asInterface) class TypeAssertExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<TypeAssertExpr>):Void {
        @:recv var _:stdgo.Ref<TypeAssertExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<TypeAssertExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<TypeAssertExpr> = _x;
        return (_x.rparen + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:stdgo.Ref<TypeAssertExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<TypeAssertExpr> = _x;
        return _x.x.pos();
    }
}
class CallExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CallExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.CallExpr_asInterface) class CallExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<CallExpr>):Void {
        @:recv var _:stdgo.Ref<CallExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<CallExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<CallExpr> = _x;
        return (_x.rparen + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _x:stdgo.Ref<CallExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<CallExpr> = _x;
        return _x.fun.pos();
    }
}
class StarExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StarExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.StarExpr_asInterface) class StarExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<StarExpr>):Void {
        @:recv var _:stdgo.Ref<StarExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<StarExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<StarExpr> = _x;
        return _x.x.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<StarExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<StarExpr> = _x;
        return _x.star;
    }
}
class UnaryExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<UnaryExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.UnaryExpr_asInterface) class UnaryExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<UnaryExpr>):Void {
        @:recv var _:stdgo.Ref<UnaryExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<UnaryExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<UnaryExpr> = _x;
        return _x.x.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<UnaryExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<UnaryExpr> = _x;
        return _x.opPos;
    }
}
class BinaryExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BinaryExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.BinaryExpr_asInterface) class BinaryExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<BinaryExpr>):Void {
        @:recv var _:stdgo.Ref<BinaryExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<BinaryExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<BinaryExpr> = _x;
        return _x.y.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<BinaryExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<BinaryExpr> = _x;
        return _x.x.pos();
    }
}
class KeyValueExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<KeyValueExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.KeyValueExpr_asInterface) class KeyValueExpr_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<KeyValueExpr>):Void {
        @:recv var _:stdgo.Ref<KeyValueExpr> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<KeyValueExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<KeyValueExpr> = _x;
        return _x.value.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<KeyValueExpr>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<KeyValueExpr> = _x;
        return _x.key.pos();
    }
}
class ArrayType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ArrayType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.ArrayType_asInterface) class ArrayType_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<ArrayType>):Void {
        @:recv var _:stdgo.Ref<ArrayType> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<ArrayType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<ArrayType> = _x;
        return _x.elt.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<ArrayType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<ArrayType> = _x;
        return _x.lbrack;
    }
}
class StructType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StructType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.StructType_asInterface) class StructType_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<StructType>):Void {
        @:recv var _:stdgo.Ref<StructType> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<StructType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<StructType> = _x;
        return _x.fields.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<StructType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<StructType> = _x;
        return _x.struct_;
    }
}
class FuncType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FuncType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.FuncType_asInterface) class FuncType_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<FuncType>):Void {
        @:recv var _:stdgo.Ref<FuncType> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<FuncType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<FuncType> = _x;
        if (_x.results != null && ((_x.results : Dynamic).__nil__ == null || !(_x.results : Dynamic).__nil__)) {
            return _x.results.end();
        };
        return _x.params.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<FuncType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<FuncType> = _x;
        if ((_x.func.isValid() || ((_x.params == null) || (_x.params : Dynamic).__nil__) : Bool)) {
            return _x.func;
        };
        return _x.params.pos();
    }
}
class InterfaceType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<InterfaceType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.InterfaceType_asInterface) class InterfaceType_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<InterfaceType>):Void {
        @:recv var _:stdgo.Ref<InterfaceType> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<InterfaceType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<InterfaceType> = _x;
        return _x.methods.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<InterfaceType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<InterfaceType> = _x;
        return _x.interface_;
    }
}
class MapType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MapType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.MapType_asInterface) class MapType_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<MapType>):Void {
        @:recv var _:stdgo.Ref<MapType> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<MapType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<MapType> = _x;
        return _x.value.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<MapType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<MapType> = _x;
        return _x.map_;
    }
}
class ChanType_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ChanType>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.ChanType_asInterface) class ChanType_static_extension {
    @:keep
    static public function _exprNode( _:stdgo.Ref<ChanType>):Void {
        @:recv var _:stdgo.Ref<ChanType> = _;
    }
    @:keep
    static public function end( _x:stdgo.Ref<ChanType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<ChanType> = _x;
        return _x.value.end();
    }
    @:keep
    static public function pos( _x:stdgo.Ref<ChanType>):stdgo._internal.go.token.Token.Pos {
        @:recv var _x:stdgo.Ref<ChanType> = _x;
        return _x.begin;
    }
}
class BadStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BadStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.BadStmt_asInterface) class BadStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<BadStmt>):Void {
        @:recv var _:stdgo.Ref<BadStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<BadStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<BadStmt> = _s;
        return _s.to;
    }
    @:keep
    static public function pos( _s:stdgo.Ref<BadStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<BadStmt> = _s;
        return _s.from;
    }
}
class DeclStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<DeclStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.DeclStmt_asInterface) class DeclStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<DeclStmt>):Void {
        @:recv var _:stdgo.Ref<DeclStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<DeclStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<DeclStmt> = _s;
        return _s.decl.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<DeclStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<DeclStmt> = _s;
        return _s.decl.pos();
    }
}
class EmptyStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<EmptyStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.EmptyStmt_asInterface) class EmptyStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<EmptyStmt>):Void {
        @:recv var _:stdgo.Ref<EmptyStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<EmptyStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<EmptyStmt> = _s;
        if (_s.implicit) {
            return _s.semicolon;
        };
        return (_s.semicolon + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:stdgo.Ref<EmptyStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<EmptyStmt> = _s;
        return _s.semicolon;
    }
}
class LabeledStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<LabeledStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.LabeledStmt_asInterface) class LabeledStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<LabeledStmt>):Void {
        @:recv var _:stdgo.Ref<LabeledStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<LabeledStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<LabeledStmt> = _s;
        return _s.stmt.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<LabeledStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<LabeledStmt> = _s;
        return _s.label.pos();
    }
}
class ExprStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ExprStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.ExprStmt_asInterface) class ExprStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<ExprStmt>):Void {
        @:recv var _:stdgo.Ref<ExprStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<ExprStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<ExprStmt> = _s;
        return _s.x.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<ExprStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<ExprStmt> = _s;
        return _s.x.pos();
    }
}
class SendStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SendStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.SendStmt_asInterface) class SendStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<SendStmt>):Void {
        @:recv var _:stdgo.Ref<SendStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<SendStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<SendStmt> = _s;
        return _s.value.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<SendStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<SendStmt> = _s;
        return _s.chan.pos();
    }
}
class IncDecStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<IncDecStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.IncDecStmt_asInterface) class IncDecStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<IncDecStmt>):Void {
        @:recv var _:stdgo.Ref<IncDecStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<IncDecStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<IncDecStmt> = _s;
        return (_s.tokPos + (2 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:stdgo.Ref<IncDecStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<IncDecStmt> = _s;
        return _s.x.pos();
    }
}
class AssignStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<AssignStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.AssignStmt_asInterface) class AssignStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<AssignStmt>):Void {
        @:recv var _:stdgo.Ref<AssignStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<AssignStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<AssignStmt> = _s;
        return _s.rhs[((_s.rhs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<AssignStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<AssignStmt> = _s;
        return _s.lhs[(0 : stdgo.GoInt)].pos();
    }
}
class GoStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<GoStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.GoStmt_asInterface) class GoStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<GoStmt>):Void {
        @:recv var _:stdgo.Ref<GoStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<GoStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<GoStmt> = _s;
        return _s.call.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<GoStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<GoStmt> = _s;
        return _s.go;
    }
}
class DeferStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<DeferStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.DeferStmt_asInterface) class DeferStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<DeferStmt>):Void {
        @:recv var _:stdgo.Ref<DeferStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<DeferStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<DeferStmt> = _s;
        return _s.call.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<DeferStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<DeferStmt> = _s;
        return _s.defer;
    }
}
class ReturnStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ReturnStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.ReturnStmt_asInterface) class ReturnStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<ReturnStmt>):Void {
        @:recv var _:stdgo.Ref<ReturnStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<ReturnStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<ReturnStmt> = _s;
        {
            var _n:stdgo.GoInt = (_s.results.length);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return _s.results[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        return (_s.return_ + (6 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:stdgo.Ref<ReturnStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<ReturnStmt> = _s;
        return _s.return_;
    }
}
class BranchStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BranchStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.BranchStmt_asInterface) class BranchStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<BranchStmt>):Void {
        @:recv var _:stdgo.Ref<BranchStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<BranchStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<BranchStmt> = _s;
        if (_s.label != null && ((_s.label : Dynamic).__nil__ == null || !(_s.label : Dynamic).__nil__)) {
            return _s.label.end();
        };
        return (((_s.tokPos : stdgo.GoInt) + ((_s.tok.string() : stdgo.GoString).length) : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:stdgo.Ref<BranchStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<BranchStmt> = _s;
        return _s.tokPos;
    }
}
class BlockStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BlockStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.BlockStmt_asInterface) class BlockStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<BlockStmt>):Void {
        @:recv var _:stdgo.Ref<BlockStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<BlockStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<BlockStmt> = _s;
        if (_s.rbrace.isValid()) {
            return (_s.rbrace + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
        };
        {
            var _n:stdgo.GoInt = (_s.list.length);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return _s.list[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        return (_s.lbrace + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:stdgo.Ref<BlockStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<BlockStmt> = _s;
        return _s.lbrace;
    }
}
class IfStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<IfStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.IfStmt_asInterface) class IfStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<IfStmt>):Void {
        @:recv var _:stdgo.Ref<IfStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<IfStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<IfStmt> = _s;
        if (_s.else_ != null) {
            return _s.else_.end();
        };
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<IfStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<IfStmt> = _s;
        return _s.if_;
    }
}
class CaseClause_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CaseClause>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.CaseClause_asInterface) class CaseClause_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<CaseClause>):Void {
        @:recv var _:stdgo.Ref<CaseClause> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<CaseClause>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<CaseClause> = _s;
        {
            var _n:stdgo.GoInt = (_s.body.length);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return _s.body[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        return (_s.colon + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:stdgo.Ref<CaseClause>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<CaseClause> = _s;
        return _s.case_;
    }
}
class SwitchStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SwitchStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.SwitchStmt_asInterface) class SwitchStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<SwitchStmt>):Void {
        @:recv var _:stdgo.Ref<SwitchStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<SwitchStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<SwitchStmt> = _s;
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<SwitchStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<SwitchStmt> = _s;
        return _s.switch_;
    }
}
class TypeSwitchStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TypeSwitchStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.TypeSwitchStmt_asInterface) class TypeSwitchStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<TypeSwitchStmt>):Void {
        @:recv var _:stdgo.Ref<TypeSwitchStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<TypeSwitchStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<TypeSwitchStmt> = _s;
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<TypeSwitchStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<TypeSwitchStmt> = _s;
        return _s.switch_;
    }
}
class CommClause_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CommClause>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.CommClause_asInterface) class CommClause_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<CommClause>):Void {
        @:recv var _:stdgo.Ref<CommClause> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<CommClause>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<CommClause> = _s;
        {
            var _n:stdgo.GoInt = (_s.body.length);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return _s.body[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        return (_s.colon + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _s:stdgo.Ref<CommClause>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<CommClause> = _s;
        return _s.case_;
    }
}
class SelectStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SelectStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.SelectStmt_asInterface) class SelectStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<SelectStmt>):Void {
        @:recv var _:stdgo.Ref<SelectStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<SelectStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<SelectStmt> = _s;
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<SelectStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<SelectStmt> = _s;
        return _s.select;
    }
}
class ForStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ForStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.ForStmt_asInterface) class ForStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<ForStmt>):Void {
        @:recv var _:stdgo.Ref<ForStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<ForStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<ForStmt> = _s;
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<ForStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<ForStmt> = _s;
        return _s.for_;
    }
}
class RangeStmt_asInterface {
    @:keep
    public dynamic function _stmtNode():Void __self__.value._stmtNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RangeStmt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.RangeStmt_asInterface) class RangeStmt_static_extension {
    @:keep
    static public function _stmtNode( _:stdgo.Ref<RangeStmt>):Void {
        @:recv var _:stdgo.Ref<RangeStmt> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<RangeStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<RangeStmt> = _s;
        return _s.body.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<RangeStmt>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<RangeStmt> = _s;
        return _s.for_;
    }
}
class ImportSpec_asInterface {
    @:keep
    public dynamic function _specNode():Void __self__.value._specNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ImportSpec>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.ImportSpec_asInterface) class ImportSpec_static_extension {
    @:keep
    static public function _specNode( _:stdgo.Ref<ImportSpec>):Void {
        @:recv var _:stdgo.Ref<ImportSpec> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<ImportSpec>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<ImportSpec> = _s;
        if (_s.endPos != ((0 : stdgo._internal.go.token.Token.Pos))) {
            return _s.endPos;
        };
        return _s.path.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<ImportSpec>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<ImportSpec> = _s;
        if (_s.name != null && ((_s.name : Dynamic).__nil__ == null || !(_s.name : Dynamic).__nil__)) {
            return _s.name.pos();
        };
        return _s.path.pos();
    }
}
class ValueSpec_asInterface {
    @:keep
    public dynamic function _specNode():Void __self__.value._specNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ValueSpec>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.ValueSpec_asInterface) class ValueSpec_static_extension {
    @:keep
    static public function _specNode( _:stdgo.Ref<ValueSpec>):Void {
        @:recv var _:stdgo.Ref<ValueSpec> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<ValueSpec>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<ValueSpec> = _s;
        {
            var _n:stdgo.GoInt = (_s.values.length);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return _s.values[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        if (_s.type != null) {
            return _s.type.end();
        };
        return _s.names[((_s.names.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<ValueSpec>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<ValueSpec> = _s;
        return _s.names[(0 : stdgo.GoInt)].pos();
    }
}
class TypeSpec_asInterface {
    @:keep
    public dynamic function _specNode():Void __self__.value._specNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<TypeSpec>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.TypeSpec_asInterface) class TypeSpec_static_extension {
    @:keep
    static public function _specNode( _:stdgo.Ref<TypeSpec>):Void {
        @:recv var _:stdgo.Ref<TypeSpec> = _;
    }
    @:keep
    static public function end( _s:stdgo.Ref<TypeSpec>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<TypeSpec> = _s;
        return _s.type.end();
    }
    @:keep
    static public function pos( _s:stdgo.Ref<TypeSpec>):stdgo._internal.go.token.Token.Pos {
        @:recv var _s:stdgo.Ref<TypeSpec> = _s;
        return _s.name.pos();
    }
}
class BadDecl_asInterface {
    @:keep
    public dynamic function _declNode():Void __self__.value._declNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BadDecl>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.BadDecl_asInterface) class BadDecl_static_extension {
    @:keep
    static public function _declNode( _:stdgo.Ref<BadDecl>):Void {
        @:recv var _:stdgo.Ref<BadDecl> = _;
    }
    @:keep
    static public function end( _d:stdgo.Ref<BadDecl>):stdgo._internal.go.token.Token.Pos {
        @:recv var _d:stdgo.Ref<BadDecl> = _d;
        return _d.to;
    }
    @:keep
    static public function pos( _d:stdgo.Ref<BadDecl>):stdgo._internal.go.token.Token.Pos {
        @:recv var _d:stdgo.Ref<BadDecl> = _d;
        return _d.from;
    }
}
class GenDecl_asInterface {
    @:keep
    public dynamic function _declNode():Void __self__.value._declNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<GenDecl>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.GenDecl_asInterface) class GenDecl_static_extension {
    @:keep
    static public function _declNode( _:stdgo.Ref<GenDecl>):Void {
        @:recv var _:stdgo.Ref<GenDecl> = _;
    }
    @:keep
    static public function end( _d:stdgo.Ref<GenDecl>):stdgo._internal.go.token.Token.Pos {
        @:recv var _d:stdgo.Ref<GenDecl> = _d;
        if (_d.rparen.isValid()) {
            return (_d.rparen + (1 : stdgo._internal.go.token.Token.Pos) : stdgo._internal.go.token.Token.Pos);
        };
        return _d.specs[(0 : stdgo.GoInt)].end();
    }
    @:keep
    static public function pos( _d:stdgo.Ref<GenDecl>):stdgo._internal.go.token.Token.Pos {
        @:recv var _d:stdgo.Ref<GenDecl> = _d;
        return _d.tokPos;
    }
}
class FuncDecl_asInterface {
    @:keep
    public dynamic function _declNode():Void __self__.value._declNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FuncDecl>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.FuncDecl_asInterface) class FuncDecl_static_extension {
    @:keep
    static public function _declNode( _:stdgo.Ref<FuncDecl>):Void {
        @:recv var _:stdgo.Ref<FuncDecl> = _;
    }
    @:keep
    static public function end( _d:stdgo.Ref<FuncDecl>):stdgo._internal.go.token.Token.Pos {
        @:recv var _d:stdgo.Ref<FuncDecl> = _d;
        if (_d.body != null && ((_d.body : Dynamic).__nil__ == null || !(_d.body : Dynamic).__nil__)) {
            return _d.body.end();
        };
        return _d.type.end();
    }
    @:keep
    static public function pos( _d:stdgo.Ref<FuncDecl>):stdgo._internal.go.token.Token.Pos {
        @:recv var _d:stdgo.Ref<FuncDecl> = _d;
        return _d.type.pos();
    }
}
class File_asInterface {
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<File>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.File_asInterface) class File_static_extension {
    @:keep
    static public function end( _f:stdgo.Ref<File>):stdgo._internal.go.token.Token.Pos {
        @:recv var _f:stdgo.Ref<File> = _f;
        {
            var _n:stdgo.GoInt = (_f.decls.length);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return _f.decls[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        return _f.name.end();
    }
    @:keep
    static public function pos( _f:stdgo.Ref<File>):stdgo._internal.go.token.Token.Pos {
        @:recv var _f:stdgo.Ref<File> = _f;
        return _f.package_;
    }
}
class Package_asInterface {
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Package>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.Package_asInterface) class Package_static_extension {
    @:keep
    static public function end( _p:stdgo.Ref<Package>):stdgo._internal.go.token.Token.Pos {
        @:recv var _p:stdgo.Ref<Package> = _p;
        return (0 : stdgo._internal.go.token.Token.Pos);
    }
    @:keep
    static public function pos( _p:stdgo.Ref<Package>):stdgo._internal.go.token.Token.Pos {
        @:recv var _p:stdgo.Ref<Package> = _p;
        return (0 : stdgo._internal.go.token.Token.Pos);
    }
}
class T_commentListReader_asInterface {
    @:keep
    public dynamic function _next():Void __self__.value._next();
    @:keep
    public dynamic function _eol():Bool return __self__.value._eol();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_commentListReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T_commentListReader_asInterface) class T_commentListReader_static_extension {
    @:keep
    static public function _next( _r:stdgo.Ref<T_commentListReader>):Void {
        @:recv var _r:stdgo.Ref<T_commentListReader> = _r;
        if (!_r._eol()) {
            _r._comment = _r._list[(_r._index : stdgo.GoInt)];
            _r._pos = _r._fset.position(_r._comment.pos())?.__copy__();
            _r._end = _r._fset.position(_r._comment.end())?.__copy__();
            _r._index++;
        };
    }
    @:keep
    static public function _eol( _r:stdgo.Ref<T_commentListReader>):Bool {
        @:recv var _r:stdgo.Ref<T_commentListReader> = _r;
        return (_r._index >= (_r._list.length) : Bool);
    }
}
class T_printer_asInterface {
    @:keep
    public dynamic function _print(_x:stdgo._internal.reflect.Reflect.Value):Void __self__.value._print(_x);
    @:keep
    public dynamic function _printf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._printf(_format, ..._args);
    @:keep
    public dynamic function write(_data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_printer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    static public function _print( _p:stdgo.Ref<T_printer>, _x:stdgo._internal.reflect.Reflect.Value):Void {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        if (!notNilFilter(stdgo.Go.str()?.__copy__(), _x?.__copy__())) {
            _p._printf(("nil" : stdgo.GoString));
            return;
        };
        {
            final __value__ = _x.kind();
            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _p._print(_x.elem()?.__copy__());
            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _p._printf(("%s (len = %d) {" : stdgo.GoString), stdgo.Go.toInterface(_x.type()), stdgo.Go.toInterface(_x.len()));
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    _p._indent++;
                    _p._printf(("\n" : stdgo.GoString));
                    for (__40 => _key in _x.mapKeys()) {
                        _p._print(_key?.__copy__());
                        _p._printf((": " : stdgo.GoString));
                        _p._print(_x.mapIndex(_key?.__copy__())?.__copy__());
                        _p._printf(("\n" : stdgo.GoString));
                    };
                    _p._indent--;
                };
                _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _p._printf(("*" : stdgo.GoString));
                var _ptr:stdgo.AnyInterface = _x.interface_();
                {
                    var __tmp__ = (_p._ptrmap != null && _p._ptrmap.exists(_ptr) ? { _0 : _p._ptrmap[_ptr], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _line:stdgo.GoInt = __tmp__._0, _exists:Bool = __tmp__._1;
                    if (_exists) {
                        _p._printf(("(obj @ %d)" : stdgo.GoString), stdgo.Go.toInterface(_line));
                    } else {
                        _p._ptrmap[_ptr] = _p._line;
                        _p._print(_x.elem()?.__copy__());
                    };
                };
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _p._printf(("%s {" : stdgo.GoString), stdgo.Go.toInterface(_x.type()));
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    _p._indent++;
                    _p._printf(("\n" : stdgo.GoString));
                    {
                        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _x.len(), _n:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            _p._printf(("%d: " : stdgo.GoString), stdgo.Go.toInterface(_i));
                            _p._print(_x.index(_i)?.__copy__());
                            _p._printf(("\n" : stdgo.GoString));
                        });
                    };
                    _p._indent--;
                };
                _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_x.interface_() : stdgo.Slice<stdgo.GoByte>)) : stdgo.Slice<stdgo.GoByte>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false };
                    }, _s = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _p._printf(("%#q" : stdgo.GoString), stdgo.Go.toInterface(_s));
                        return;
                    };
                };
                _p._printf(("%s (len = %d) {" : stdgo.GoString), stdgo.Go.toInterface(_x.type()), stdgo.Go.toInterface(_x.len()));
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    _p._indent++;
                    _p._printf(("\n" : stdgo.GoString));
                    {
                        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _x.len(), _n:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            _p._printf(("%d: " : stdgo.GoString), stdgo.Go.toInterface(_i));
                            _p._print(_x.index(_i)?.__copy__());
                            _p._printf(("\n" : stdgo.GoString));
                        });
                    };
                    _p._indent--;
                };
                _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var _t:stdgo._internal.reflect.Reflect.Type_ = _x.type();
                _p._printf(("%s {" : stdgo.GoString), stdgo.Go.toInterface(_t));
                _p._indent++;
                var _first:Bool = true;
                {
                    var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _t.numField(), _n:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        {
                            var _name:stdgo.GoString = _t.field(_i).name?.__copy__();
                            if (isExported(_name?.__copy__())) {
                                var _value:stdgo._internal.reflect.Reflect.Value = _x.field(_i)?.__copy__();
                                if (((_p._filter == null) || _p._filter(_name?.__copy__(), _value?.__copy__()) : Bool)) {
                                    if (_first) {
                                        _p._printf(("\n" : stdgo.GoString));
                                        _first = false;
                                    };
                                    _p._printf(("%s: " : stdgo.GoString), stdgo.Go.toInterface(_name));
                                    _p._print(_value?.__copy__());
                                    _p._printf(("\n" : stdgo.GoString));
                                };
                            };
                        };
                    });
                };
                _p._indent--;
                _p._printf(("}" : stdgo.GoString));
            } else {
                var _v:stdgo.AnyInterface = _x.interface_();
                {
                    final __type__ = _v;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                        var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                        _p._printf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_v));
                        return;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.token.Token.Pos))) {
                        var _v:stdgo._internal.go.token.Token.Pos = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Pos) : __type__.__underlying__().value;
                        if (_p._fset != null && ((_p._fset : Dynamic).__nil__ == null || !(_p._fset : Dynamic).__nil__)) {
                            _p._printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p._fset.position(_v))));
                            return;
                        };
                    };
                };
                _p._printf(("%v" : stdgo.GoString), _v);
            };
        };
    }
    @:keep
    static public function _printf( _p:stdgo.Ref<T_printer>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        {
            var __tmp__ = stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(_p), _format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface((new stdgo._internal.go.ast.Ast.T_localError(_err) : stdgo._internal.go.ast.Ast.T_localError));
            };
        };
    }
    @:keep
    static public function write( _p:stdgo.Ref<T_printer>, _data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<T_printer> = _p;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_i => _b in _data) {
            if (_b == ((10 : stdgo.GoUInt8))) {
                {
                    var __tmp__ = _p._output.write((_data.__slice__(_n, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _m = __tmp__._0;
                    _err = __tmp__._1;
                };
                _n = (_n + (_m) : stdgo.GoInt);
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                _p._line++;
            } else if (_p._last == ((10 : stdgo.GoUInt8))) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt.fprintf(_p._output, ("%6d  " : stdgo.GoString), stdgo.Go.toInterface(_p._line));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                {
                    var _j:stdgo.GoInt = _p._indent;
                    stdgo.Go.cfor((_j > (0 : stdgo.GoInt) : Bool), _j--, {
                        {
                            var __tmp__ = _p._output.write(_indent);
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : _n, _1 : _err };
                        };
                    });
                };
            };
            _p._last = _b;
        };
        if (((_data.length) > _n : Bool)) {
            {
                var __tmp__ = _p._output.write((_data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                _m = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = (_n + (_m) : stdgo.GoInt);
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_pkgBuilder_asInterface {
    @:keep
    public dynamic function _declare(_scope:stdgo.Ref<Scope>, _altScope:stdgo.Ref<Scope>, _obj:stdgo.Ref<Object>):Void __self__.value._declare(_scope, _altScope, _obj);
    @:keep
    public dynamic function _errorf(_pos:stdgo._internal.go.token.Token.Pos, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._errorf(_pos, _format, ..._args);
    @:keep
    public dynamic function _error(_pos:stdgo._internal.go.token.Token.Pos, _msg:stdgo.GoString):Void __self__.value._error(_pos, _msg);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_pkgBuilder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T_pkgBuilder_asInterface) class T_pkgBuilder_static_extension {
    @:keep
    static public function _declare( _p:stdgo.Ref<T_pkgBuilder>, _scope:stdgo.Ref<Scope>, _altScope:stdgo.Ref<Scope>, _obj:stdgo.Ref<Object>):Void {
        @:recv var _p:stdgo.Ref<T_pkgBuilder> = _p;
        var _alt = _scope.insert(_obj);
        if (((_alt == null) || (_alt : Dynamic).__nil__ && ((_altScope != null) && ((_altScope : Dynamic).__nil__ == null || !(_altScope : Dynamic).__nil__)) : Bool)) {
            _alt = _altScope.lookup(_obj.name?.__copy__());
        };
        if (_alt != null && ((_alt : Dynamic).__nil__ == null || !(_alt : Dynamic).__nil__)) {
            var _prevDecl:stdgo.GoString = stdgo.Go.str()?.__copy__();
            {
                var _pos:stdgo._internal.go.token.Token.Pos = _alt.pos();
                if (_pos.isValid()) {
                    _prevDecl = stdgo._internal.fmt.Fmt.sprintf(("\n\tprevious declaration at %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p._fset.position(_pos))))?.__copy__();
                };
            };
            _p._error(_obj.pos(), stdgo._internal.fmt.Fmt.sprintf(("%s redeclared in this block%s" : stdgo.GoString), stdgo.Go.toInterface(_obj.name), stdgo.Go.toInterface(_prevDecl))?.__copy__());
        };
    }
    @:keep
    static public function _errorf( _p:stdgo.Ref<T_pkgBuilder>, _pos:stdgo._internal.go.token.Token.Pos, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<T_pkgBuilder> = _p;
        _p._error(_pos, stdgo._internal.fmt.Fmt.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
    }
    @:keep
    static public function _error( _p:stdgo.Ref<T_pkgBuilder>, _pos:stdgo._internal.go.token.Token.Pos, _msg:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<T_pkgBuilder> = _p;
        _p._errors.add(_p._fset.position(_pos)?.__copy__(), _msg?.__copy__());
    }
}
class Scope_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function insert(_obj:stdgo.Ref<Object>):stdgo.Ref<Object> return __self__.value.insert(_obj);
    @:keep
    public dynamic function lookup(_name:stdgo.GoString):stdgo.Ref<Object> return __self__.value.lookup(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Scope>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.Scope_asInterface) class Scope_static_extension {
    @:keep
    static public function string( _s:stdgo.Ref<Scope>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<Scope> = _s;
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("scope %p {" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        if ((((_s != null) && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) && ((_s.objects.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            stdgo._internal.fmt.Fmt.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
            for (__0 => _obj in _s.objects) {
                stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("\t%s %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_obj.kind)), stdgo.Go.toInterface(_obj.name));
            };
        };
        stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("}\n" : stdgo.GoString));
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function insert( _s:stdgo.Ref<Scope>, _obj:stdgo.Ref<Object>):stdgo.Ref<Object> {
        @:recv var _s:stdgo.Ref<Scope> = _s;
        var _alt:stdgo.Ref<Object> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Object>);
        {
            _alt = (_s.objects[_obj.name] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Object>));
            if (_alt == null || (_alt : Dynamic).__nil__) {
                _s.objects[_obj.name] = _obj;
            };
        };
        return _alt;
    }
    @:keep
    static public function lookup( _s:stdgo.Ref<Scope>, _name:stdgo.GoString):stdgo.Ref<Object> {
        @:recv var _s:stdgo.Ref<Scope> = _s;
        return (_s.objects[_name] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Object>));
    }
}
class Object_asInterface {
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Object>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.Object_asInterface) class Object_static_extension {
    @:keep
    static public function pos( _obj:stdgo.Ref<Object>):stdgo._internal.go.token.Token.Pos {
        @:recv var _obj:stdgo.Ref<Object> = _obj;
        var _name:stdgo.GoString = _obj.name?.__copy__();
        {
            final __type__ = _obj.decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Field>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.Field> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Field>) : __type__.__underlying__().value;
                for (__0 => _n in _d.names) {
                    if (_n.name == (_name)) {
                        return _n.pos();
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ImportSpec>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ImportSpec>) : __type__.__underlying__().value;
                if ((((_d.name != null) && ((_d.name : Dynamic).__nil__ == null || !(_d.name : Dynamic).__nil__)) && (_d.name.name == _name) : Bool)) {
                    return _d.name.pos();
                };
                return _d.path.pos();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<ValueSpec>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.ValueSpec>) : __type__.__underlying__().value;
                for (__1 => _n in _d.names) {
                    if (_n.name == (_name)) {
                        return _n.pos();
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<TypeSpec>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.TypeSpec>) : __type__.__underlying__().value;
                if (_d.name.name == (_name)) {
                    return _d.name.pos();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.FuncDecl>) : __type__.__underlying__().value;
                if (_d.name.name == (_name)) {
                    return _d.name.pos();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<LabeledStmt>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.LabeledStmt>) : __type__.__underlying__().value;
                if (_d.label.name == (_name)) {
                    return _d.label.pos();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<AssignStmt>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.AssignStmt>) : __type__.__underlying__().value;
                for (__2 => _x in _d.lhs) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<Ident>)) : stdgo.Ref<Ident>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>), _1 : false };
                        }, _ident = __tmp__._0, _isIdent = __tmp__._1;
                        if ((_isIdent && (_ident.name == _name) : Bool)) {
                            return _ident.pos();
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<Scope>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast.Scope> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Scope>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Scope>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Scope>) : __type__.__underlying__().value;
            };
        };
        return (0 : stdgo._internal.go.token.Token.Pos);
    }
}
class T_byPos_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byPos>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T_byPos_asInterface) class T_byPos_static_extension {
    @:keep
    static public function swap( _a:T_byPos, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _a:T_byPos = _a;
        {
            final __tmp__0 = _a[(_j : stdgo.GoInt)];
            final __tmp__1 = _a[(_i : stdgo.GoInt)];
            final __tmp__2 = _a;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _a;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _a:T_byPos, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _a:T_byPos = _a;
        return (_a[(_i : stdgo.GoInt)].pos() < _a[(_j : stdgo.GoInt)].pos() : Bool);
    }
    @:keep
    static public function len( _a:T_byPos):stdgo.GoInt {
        @:recv var _a:T_byPos = _a;
        return (_a.length);
    }
}
class CommentMap_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function comments():stdgo.Slice<stdgo.Ref<CommentGroup>> return __self__.value.comments();
    @:keep
    public dynamic function filter(_node:Node):CommentMap return __self__.value.filter(_node);
    @:keep
    public dynamic function update(_old:Node, _new:Node):Node return __self__.value.update(_old, _new);
    @:keep
    public dynamic function _addComment(_n:Node, _c:stdgo.Ref<CommentGroup>):Void __self__.value._addComment(_n, _c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CommentMap>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.CommentMap_asInterface) class CommentMap_static_extension {
    @:keep
    static public function string( _cmap:CommentMap):stdgo.GoString {
        @:recv var _cmap:CommentMap = _cmap;
        var _nodes:stdgo.Slice<Node> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast.Node>);
        for (_node => _ in _cmap) {
            _nodes = (_nodes.__append__(_node));
        };
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface((_nodes : T_byInterval)));
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        stdgo._internal.fmt.Fmt.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(("CommentMap {" : stdgo.GoString)));
        for (__0 => _node in _nodes) {
            var _comment = (_cmap[_node] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>));
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_node) : stdgo.Ref<Ident>)) : stdgo.Ref<Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast.Ident>), _1 : false };
                }, _ident = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _s = _ident.name?.__copy__();
                } else {
                    _s = stdgo._internal.fmt.Fmt.sprintf(("%T" : stdgo.GoString), stdgo.Go.toInterface(_node))?.__copy__();
                };
            };
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("\t%p  %20s:  %s\n" : stdgo.GoString), stdgo.Go.toInterface(_node), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_summary(_comment)));
        };
        stdgo._internal.fmt.Fmt.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.toInterface(("}" : stdgo.GoString)));
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function comments( _cmap:CommentMap):stdgo.Slice<stdgo.Ref<CommentGroup>> {
        @:recv var _cmap:CommentMap = _cmap;
        var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>((0 : stdgo.GoInt).toBasic(), (_cmap.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
        for (__0 => _e in _cmap) {
            _list = (_list.__append__(...(_e : Array<stdgo._internal.go.ast.Ast.CommentGroup>)));
        };
        _sortComments(_list);
        return _list;
    }
    @:keep
    static public function filter( _cmap:CommentMap, _node:Node):CommentMap {
        @:recv var _cmap:CommentMap = _cmap;
        var _umap:stdgo._internal.go.ast.Ast.CommentMap = (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast.Node", [], stdgo._internal.internal.reflect.Reflect.GoType.named("Node", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>>) : stdgo._internal.go.ast.Ast.CommentMap);
        inspect(_node, function(_n:Node):Bool {
            {
                var _g = (_cmap[_n] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>));
                if (((_g.length) > (0 : stdgo.GoInt) : Bool)) {
                    _umap[_n] = _g;
                };
            };
            return true;
        });
        return _umap;
    }
    @:keep
    static public function update( _cmap:CommentMap, _old:Node, _new:Node):Node {
        @:recv var _cmap:CommentMap = _cmap;
        {
            var _list = (_cmap[_old] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>));
            if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                if (_cmap != null) _cmap.remove(_old);
                _cmap[_new] = ((_cmap[_new] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>)).__append__(...(_list : Array<stdgo._internal.go.ast.Ast.CommentGroup>)));
            };
        };
        return _new;
    }
    @:keep
    static public function _addComment( _cmap:CommentMap, _n:Node, _c:stdgo.Ref<CommentGroup>):Void {
        @:recv var _cmap:CommentMap = _cmap;
        var _list = (_cmap[_n] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>));
        if ((_list.length) == ((0 : stdgo.GoInt))) {
            _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>(1, 1, ...[_c]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast.CommentGroup>>);
        } else {
            _list = (_list.__append__(_c));
        };
        _cmap[_n] = _list;
    }
}
class T_byInterval_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byInterval>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T_byInterval_asInterface) class T_byInterval_static_extension {
    @:keep
    static public function swap( _a:T_byInterval, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _a:T_byInterval = _a;
        {
            final __tmp__0 = _a[(_j : stdgo.GoInt)];
            final __tmp__1 = _a[(_i : stdgo.GoInt)];
            final __tmp__2 = _a;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _a;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _a:T_byInterval, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _a:T_byInterval = _a;
        var __0:stdgo._internal.go.token.Token.Pos = _a[(_i : stdgo.GoInt)].pos(), __1:stdgo._internal.go.token.Token.Pos = _a[(_j : stdgo.GoInt)].pos(), _pj:stdgo._internal.go.token.Token.Pos = __1, _pi:stdgo._internal.go.token.Token.Pos = __0;
        return ((_pi < _pj : Bool) || (_pi == (_pj) && (_a[(_i : stdgo.GoInt)].end() > _a[(_j : stdgo.GoInt)].end() : Bool) : Bool) : Bool);
    }
    @:keep
    static public function len( _a:T_byInterval):stdgo.GoInt {
        @:recv var _a:T_byInterval = _a;
        return (_a.length);
    }
}
class T_nodeStack_asInterface {
    @:keep
    public dynamic function _pop(_pos:stdgo._internal.go.token.Token.Pos):Node return __self__.value._pop(_pos);
    @:keep
    public dynamic function _push(_n:Node):Void __self__.value._push(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_nodeStack>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T_nodeStack_asInterface) class T_nodeStack_static_extension {
    @:keep
    static public function _pop( _s:stdgo.Ref<T_nodeStack>, _pos:stdgo._internal.go.token.Token.Pos):Node {
        @:recv var _s:stdgo.Ref<T_nodeStack> = _s;
        var _top:Node = (null : stdgo._internal.go.ast.Ast.Node);
        var _i:stdgo.GoInt = ((_s : stdgo._internal.go.ast.Ast.T_nodeStack).length);
        while (((_i > (0 : stdgo.GoInt) : Bool) && (((_s : stdgo._internal.go.ast.Ast.T_nodeStack))[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].end() <= _pos : Bool) : Bool)) {
            _top = ((_s : stdgo._internal.go.ast.Ast.T_nodeStack))[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
            _i--;
        };
        _s.__setData__((((_s : stdgo._internal.go.ast.Ast.T_nodeStack)).__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.go.ast.Ast.T_nodeStack));
        return _top;
    }
    @:keep
    static public function _push( _s:stdgo.Ref<T_nodeStack>, _n:Node):Void {
        @:recv var _s:stdgo.Ref<T_nodeStack> = _s;
        _s._pop(_n.pos());
        _s.__setData__((((_s : stdgo._internal.go.ast.Ast.T_nodeStack)).__append__(_n)));
    }
}
class ObjKind_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ObjKind>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.ObjKind_asInterface) class ObjKind_static_extension {
    @:keep
    static public function string( _kind:ObjKind):stdgo.GoString {
        @:recv var _kind:ObjKind = _kind;
        return _objKindStrings[(_kind : stdgo.GoInt)]?.__copy__();
    }
}
class T_inspector_asInterface {
    @:keep
    public dynamic function visit(_node:Node):Visitor return __self__.value.visit(_node);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_inspector>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.ast.Ast.T_inspector_asInterface) class T_inspector_static_extension {
    @:keep
    static public function visit( _f:T_inspector, _node:Node):Visitor {
        @:recv var _f:T_inspector = _f;
        if (_f(_node)) {
            return stdgo.Go.asInterface(_f);
        };
        return (null : stdgo._internal.go.ast.Ast.Visitor);
    }
}
