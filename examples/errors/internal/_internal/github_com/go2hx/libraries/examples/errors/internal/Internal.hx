package _internal.github_com.go2hx.libraries.examples.errors.internal;
@:structInit @:using(_internal.github_com.go2hx.libraries.examples.errors.internal.Internal.MyError_static_extension) class MyError {
    public var when : stdgo._internal.time.Time.Time = ({} : stdgo._internal.time.Time.Time);
    public var what : stdgo.GoString = "";
    public function new(?when:stdgo._internal.time.Time.Time, ?what:stdgo.GoString) {
        if (when != null) this.when = when;
        if (what != null) this.what = what;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MyError(when, what);
    }
}
function _oops():stdgo.Error {
        return stdgo.Go.asInterface((new _internal.github_com.go2hx.libraries.examples.errors.internal.Internal.MyError(stdgo._internal.time.Time.date((1989 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Month), (15 : stdgo.GoInt), (22 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__(), ("the file system has gone away" : stdgo.GoString)) : _internal.github_com.go2hx.libraries.examples.errors.internal.Internal.MyError));
    }
function main():Void {
        {
            var _err:stdgo.Error = _oops();
            if (_err != null) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_err));
            };
        };
    }
class MyError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MyError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(_internal.github_com.go2hx.libraries.examples.errors.internal.Internal.MyError_asInterface) class MyError_static_extension {
    @:keep
    static public function error( _e:MyError):stdgo.GoString {
        @:recv var _e:MyError = _e?.__copy__();
        return stdgo._internal.fmt.Fmt.sprintf(("%v: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_e.when)), stdgo.Go.toInterface(_e.what))?.__copy__();
    }
}
