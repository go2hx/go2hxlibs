package stdgo._internal.go.internal.typeparams;
@:structInit @:using(stdgo._internal.go.internal.typeparams.Typeparams.IndexExpr_static_extension) class IndexExpr {
    public var orig : stdgo._internal.go.ast.Ast.Expr = (null : stdgo._internal.go.ast.Ast.Expr);
    @:embedded
    public var indexListExpr : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>);
    public function new(?orig:stdgo._internal.go.ast.Ast.Expr, ?indexListExpr:stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>) {
        if (orig != null) this.orig = orig;
        if (indexListExpr != null) this.indexListExpr = indexListExpr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function end():stdgo._internal.go.token.Token.Pos return indexListExpr.end();
    @:embedded
    public function pos():stdgo._internal.go.token.Token.Pos return indexListExpr.pos();
    @:embedded
    public function _exprNode() indexListExpr._exprNode();
    public function __copy__() {
        return new IndexExpr(orig, indexListExpr);
    }
}
function packIndexExpr(_x:stdgo._internal.go.ast.Ast.Expr, _lbrack:stdgo._internal.go.token.Token.Pos, _exprs:stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>, _rbrack:stdgo._internal.go.token.Token.Pos):stdgo._internal.go.ast.Ast.Expr {
        {
            final __value__ = (_exprs.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("internal error: PackIndexExpr with empty expr slice" : stdgo.GoString));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, index : _exprs[(0 : stdgo.GoInt)], rbrack : _rbrack } : stdgo._internal.go.ast.Ast.IndexExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>));
            } else {
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, indices : _exprs, rbrack : _rbrack } : stdgo._internal.go.ast.Ast.IndexListExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>));
            };
        };
    }
function unpackIndexExpr(_n:stdgo._internal.go.ast.Ast.Node):stdgo.Ref<IndexExpr> {
        {
            final __type__ = _n;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexExpr>) : __type__.__underlying__().value;
                return (stdgo.Go.setRef((new stdgo._internal.go.internal.typeparams.Typeparams.IndexExpr(stdgo.Go.asInterface(_e), (stdgo.Go.setRef(({ x : _e.x, lbrack : _e.lbrack, indices : (new stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>(1, 1, ...[_e.index]) : stdgo.Slice<stdgo._internal.go.ast.Ast.Expr>), rbrack : _e.rbrack } : stdgo._internal.go.ast.Ast.IndexListExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>)) : stdgo._internal.go.internal.typeparams.Typeparams.IndexExpr)) : stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams.IndexExpr>);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>))) {
                var _e:stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast.IndexListExpr>) : __type__.__underlying__().value;
                return (stdgo.Go.setRef((new stdgo._internal.go.internal.typeparams.Typeparams.IndexExpr(stdgo.Go.asInterface(_e), _e) : stdgo._internal.go.internal.typeparams.Typeparams.IndexExpr)) : stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams.IndexExpr>);
            };
        };
        return null;
    }
class IndexExpr_asInterface {
    @:embedded
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:embedded
    public dynamic function pos():stdgo._internal.go.token.Token.Pos return __self__.value.pos();
    @:embedded
    public dynamic function end():stdgo._internal.go.token.Token.Pos return __self__.value.end();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<IndexExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.internal.typeparams.Typeparams.IndexExpr_asInterface) class IndexExpr_static_extension {
    @:embedded
    public static function _exprNode( __self__:IndexExpr) __self__._exprNode();
    @:embedded
    public static function pos( __self__:IndexExpr):stdgo._internal.go.token.Token.Pos return __self__.pos();
    @:embedded
    public static function end( __self__:IndexExpr):stdgo._internal.go.token.Token.Pos return __self__.end();
}
