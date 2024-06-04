package stdgo._internal.go.importer;
private var __go2hxdoc__package : Bool;
@:structInit @:private @:using(stdgo._internal.go.importer.Importer.T_gcimports_static_extension) class T_gcimports {
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token.FileSet>);
    public var _packages : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>);
    public var _lookup : stdgo._internal.go.importer.Importer.Lookup = (null : stdgo._internal.go.importer.Importer.Lookup);
    public function new(?_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, ?_packages:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>, ?_lookup:stdgo._internal.go.importer.Importer.Lookup) {
        if (_fset != null) this._fset = _fset;
        if (_packages != null) this._packages = _packages;
        if (_lookup != null) this._lookup = _lookup;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gcimports(_fset, _packages, _lookup);
    }
}
@:structInit @:private @:using(stdgo._internal.go.importer.Importer.T_gccgoimports_static_extension) class T_gccgoimports {
    public var _packages : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>);
    public var _importer : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.Importer = (null : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.Importer);
    public var _lookup : stdgo._internal.go.importer.Importer.Lookup = (null : stdgo._internal.go.importer.Importer.Lookup);
    public function new(?_packages:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>, ?_importer:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.Importer, ?_lookup:stdgo._internal.go.importer.Importer.Lookup) {
        if (_packages != null) this._packages = _packages;
        if (_importer != null) this._importer = _importer;
        if (_lookup != null) this._lookup = _lookup;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gccgoimports(_packages, _importer, _lookup);
    }
}
@:named typedef Lookup = stdgo.GoString -> { var _0 : stdgo._internal.io.Io.ReadCloser; var _1 : stdgo.Error; };
function forCompiler(_fset:stdgo.Ref<stdgo._internal.go.token.Token.FileSet>, _compiler:stdgo.GoString, _lookup:Lookup):stdgo._internal.go.types.Types.Importer {
        {
            final __value__ = _compiler;
            if (__value__ == (("gc" : stdgo.GoString))) {
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ _fset : _fset, _packages : ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types.Package>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types.Package>);
                    @:mergeBlock {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>), _lookup : _lookup } : stdgo._internal.go.importer.Importer.T_gcimports)) : stdgo.Ref<stdgo._internal.go.importer.Importer.T_gcimports>));
            } else if (__value__ == (("gccgo" : stdgo.GoString))) {
                var _inst:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.GccgoInstallation = ({} : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.GccgoInstallation);
                {
                    var _err:stdgo.Error = _inst.initFromDriver(("gccgo" : stdgo.GoString));
                    if (_err != null) {
                        return (null : stdgo._internal.go.types.Types.Importer);
                    };
                };
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ _packages : ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types.Package>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types.Package>);
                    @:mergeBlock {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>), _importer : _inst.getImporter((null : stdgo.Slice<stdgo.GoString>), (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.InitData>)), _lookup : _lookup } : stdgo._internal.go.importer.Importer.T_gccgoimports)) : stdgo.Ref<stdgo._internal.go.importer.Importer.T_gccgoimports>));
            } else if (__value__ == (("source" : stdgo.GoString))) {
                if (_lookup != null) {
                    throw stdgo.Go.toInterface(("source importer for custom import path lookup not supported (issue #13847)." : stdgo.GoString));
                };
                return stdgo.Go.asInterface(stdgo._internal.go.internal.srcimporter.Srcimporter.new_((stdgo.Go.setRef(stdgo._internal.go.build.Build.default_) : stdgo.Ref<stdgo._internal.go.build.Build.Context>), _fset, ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types.Package>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types.Package>);
                    @:mergeBlock {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>)));
            };
        };
        return (null : stdgo._internal.go.types.Types.Importer);
    }
function for_(_compiler:stdgo.GoString, _lookup:Lookup):stdgo._internal.go.types.Types.Importer {
        return forCompiler(stdgo._internal.go.token.Token.newFileSet(), _compiler?.__copy__(), _lookup);
    }
function default_():stdgo._internal.go.types.Types.Importer {
        return for_(stdgo._internal.runtime.Runtime.compiler?.__copy__(), null);
    }
function testMain(_m:stdgo.Ref<stdgo._internal.testing.Testing.M>):Void {
        stdgo._internal.go.build.Build.default_.goroot = stdgo._internal.internal.testenv.Testenv.goroot((null : stdgo._internal.testing.Testing.TB))?.__copy__();
        Sys.exit(_m.run());
    }
function testForCompiler(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {};
        var __tmp__ = stdgo._internal.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), stdgo._internal.internal.testenv.Testenv.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("list" : stdgo.GoString), ("-export" : stdgo.GoString), ("-f={{context.Compiler}}:{{.Export}}" : stdgo.GoString), ("math/big" : stdgo.GoString)).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("go list %s: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(("math/big" : stdgo.GoString)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        var _export:stdgo.GoString = stdgo._internal.strings.Strings.trimSpace((_out : stdgo.GoString)?.__copy__())?.__copy__();
        var __tmp__ = stdgo._internal.strings.Strings.cut(_export?.__copy__(), (":" : stdgo.GoString)), _compiler:stdgo.GoString = __tmp__._0, _target:stdgo.GoString = __tmp__._1, __14:Bool = __tmp__._2;
        if (_compiler == (("gccgo" : stdgo.GoString))) {
            _t.skip(stdgo.Go.toInterface(("golang.org/issue/22500" : stdgo.GoString)));
        };
        var _fset = stdgo._internal.go.token.Token.newFileSet();
        _t.run(("LookupDefault" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var _imp:stdgo._internal.go.types.Types.Importer = forCompiler(_fset, _compiler?.__copy__(), null);
            var __tmp__ = _imp.import_(("math/big" : stdgo.GoString)), _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_pkg.path() != (("math/big" : stdgo.GoString))) {
                _t.fatalf(("Path() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_pkg.path()), stdgo.Go.toInterface(("math/big" : stdgo.GoString)));
            };
            var _mathBigInt:stdgo._internal.go.types.Types.Object = _pkg.scope().lookup(("Int" : stdgo.GoString));
            var _posn:stdgo._internal.go.token.Token.Position = _fset.position(_mathBigInt.pos())?.__copy__();
            var _filename:stdgo.GoString = stdgo._internal.strings.Strings.replace(_posn.filename?.__copy__(), ("$GOROOT" : stdgo.GoString), stdgo._internal.internal.testenv.Testenv.goroot(stdgo.Go.asInterface(_t))?.__copy__(), (1 : stdgo.GoInt))?.__copy__();
            var __tmp__ = stdgo._internal.os.Os.readFile(_filename?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("can\'t read file containing declaration of math/big.Int: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _lines = stdgo._internal.strings.Strings.split((_data : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString));
            if (((_posn.line > (_lines.length) : Bool) || !stdgo._internal.strings.Strings.hasPrefix(_lines[(_posn.line - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("type Int" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("Object %v position %s does not contain its declaration" : stdgo.GoString), stdgo.Go.toInterface(_mathBigInt), stdgo.Go.toInterface(stdgo.Go.asInterface(_posn)));
            };
        });
        _t.run(("LookupCustom" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            if (true) {
                _t.skip(stdgo.Go.toInterface(("not supported by GOEXPERIMENT=unified; see go.dev/cl/406319" : stdgo.GoString)));
            };
            var _lookup:stdgo.GoString -> { var _0 : stdgo._internal.io.Io.ReadCloser; var _1 : stdgo.Error; } = function(_path:stdgo.GoString):{ var _0 : stdgo._internal.io.Io.ReadCloser; var _1 : stdgo.Error; } {
                if (_path != (("math/bigger" : stdgo.GoString))) {
                    _t.fatalf(("lookup called with unexpected path %q" : stdgo.GoString), stdgo.Go.toInterface(_path));
                };
                var __tmp__ = stdgo._internal.os.Os.open(_target?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
            };
            var _imp:stdgo._internal.go.types.Types.Importer = forCompiler(_fset, _compiler?.__copy__(), _lookup);
            var __tmp__ = _imp.import_(("math/bigger" : stdgo.GoString)), _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (_pkg.path() != (("math/bigger" : stdgo.GoString))) {
                _t.fatalf(("Path() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_pkg.path()), stdgo.Go.toInterface(("math/bigger" : stdgo.GoString)));
            };
        });
    }
class T_gcimports_asInterface {
    @:keep
    public dynamic function importFrom(_path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.types.Types.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } return __self__.value.importFrom(_path, _srcDir, _mode);
    @:keep
    public dynamic function import_(_path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } return __self__.value.import_(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_gcimports>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.importer.Importer.T_gcimports_asInterface) class T_gcimports_static_extension {
    @:keep
    static public function importFrom( _m:stdgo.Ref<T_gcimports>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.types.Types.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<T_gcimports> = _m;
        if (_mode != ((0 : stdgo._internal.go.types.Types.ImportMode))) {
            throw stdgo.Go.toInterface(("mode must be 0" : stdgo.GoString));
        };
        return stdgo._internal.go.internal.gcimporter.Gcimporter.import_(_m._fset, _m._packages, _path?.__copy__(), _srcDir?.__copy__(), _m._lookup);
    }
    @:keep
    static public function import_( _m:stdgo.Ref<T_gcimports>, _path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<T_gcimports> = _m;
        return _m.importFrom(_path?.__copy__(), stdgo.Go.str()?.__copy__(), (0 : stdgo._internal.go.types.Types.ImportMode));
    }
}
class T_gccgoimports_asInterface {
    @:keep
    public dynamic function importFrom(_path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.types.Types.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } return __self__.value.importFrom(_path, _srcDir, _mode);
    @:keep
    public dynamic function import_(_path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } return __self__.value.import_(_path);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_gccgoimports>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.importer.Importer.T_gccgoimports_asInterface) class T_gccgoimports_static_extension {
    @:keep
    static public function importFrom( _m:stdgo.Ref<T_gccgoimports>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.types.Types.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<T_gccgoimports> = _m;
        if (_mode != ((0 : stdgo._internal.go.types.Types.ImportMode))) {
            throw stdgo.Go.toInterface(("mode must be 0" : stdgo.GoString));
        };
        return _m._importer(_m._packages, _path?.__copy__(), _srcDir?.__copy__(), _m._lookup);
    }
    @:keep
    static public function import_( _m:stdgo.Ref<T_gccgoimports>, _path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<T_gccgoimports> = _m;
        return _m.importFrom(_path?.__copy__(), stdgo.Go.str()?.__copy__(), (0 : stdgo._internal.go.types.Types.ImportMode));
    }
}
