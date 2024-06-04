package _internal.github_com.go2hx.libraries.examples.sort.internal;
@:structInit @:using(_internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person_static_extension) class Person {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Person(name, age);
    }
}
@:named @:using(_internal.github_com.go2hx.libraries.examples.sort.internal.Internal.ByAge_static_extension) typedef ByAge = stdgo.Slice<_internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person>;
function main():Void {
        var _people = (new stdgo.Slice<_internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person>(4, 4, ...[(new _internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person(("Bob" : stdgo.GoString), (31 : stdgo.GoInt)) : _internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person), (new _internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person(("John" : stdgo.GoString), (42 : stdgo.GoInt)) : _internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person), (new _internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person(("Michael" : stdgo.GoString), (17 : stdgo.GoInt)) : _internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person), (new _internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person(("Jenny" : stdgo.GoString), (26 : stdgo.GoInt)) : _internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person)])) : stdgo.Slice<_internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface((_people : ByAge)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].age > _people[(_j : stdgo.GoInt)].age : Bool);
        });
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_people));
    }
class Person_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Person>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(_internal.github_com.go2hx.libraries.examples.sort.internal.Internal.Person_asInterface) class Person_static_extension {
    @:keep
    static public function string( _p:Person):stdgo.GoString {
        @:recv var _p:Person = _p?.__copy__();
        return stdgo._internal.fmt.Fmt.sprintf(("%s: %d" : stdgo.GoString), stdgo.Go.toInterface(_p.name), stdgo.Go.toInterface(_p.age))?.__copy__();
    }
}
class ByAge_asInterface {
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ByAge>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(_internal.github_com.go2hx.libraries.examples.sort.internal.Internal.ByAge_asInterface) class ByAge_static_extension {
    @:keep
    static public function less( _a:ByAge, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _a:ByAge = _a;
        return (_a[(_i : stdgo.GoInt)].age < _a[(_j : stdgo.GoInt)].age : Bool);
    }
    @:keep
    static public function swap( _a:ByAge, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _a:ByAge = _a;
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
    static public function len( _a:ByAge):stdgo.GoInt {
        @:recv var _a:ByAge = _a;
        return (_a.length);
    }
}
