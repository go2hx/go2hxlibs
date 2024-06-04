package stdgo._internal.go.internal.gccgoimporter;
private var __go2hxdoc__package : Bool;
final _armag : stdgo.GoString = ("!<arch>\n" : stdgo.GoString);
final _armagt : stdgo.GoString = ("!<thin>\n" : stdgo.GoString);
final _armagb : stdgo.GoString = ("<bigaf>\n" : stdgo.GoString);
final _arNameOff : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final _arNameSize : stdgo.GoUInt64 = (16i64 : stdgo.GoUInt64);
final _arDateOff : stdgo.GoUInt64 = (16i64 : stdgo.GoUInt64);
final _arDateSize : stdgo.GoUInt64 = (12i64 : stdgo.GoUInt64);
final _arUIDOff : stdgo.GoUInt64 = (28i64 : stdgo.GoUInt64);
final _arUIDSize : stdgo.GoUInt64 = (6i64 : stdgo.GoUInt64);
final _arGIDOff : stdgo.GoUInt64 = (34i64 : stdgo.GoUInt64);
final _arGIDSize : stdgo.GoUInt64 = (6i64 : stdgo.GoUInt64);
final _arModeOff : stdgo.GoUInt64 = (40i64 : stdgo.GoUInt64);
final _arModeSize : stdgo.GoUInt64 = (8i64 : stdgo.GoUInt64);
final _arSizeOff : stdgo.GoUInt64 = (48i64 : stdgo.GoUInt64);
final _arSizeSize : stdgo.GoUInt64 = (10i64 : stdgo.GoUInt64);
final _arFmagOff : stdgo.GoUInt64 = (58i64 : stdgo.GoUInt64);
final _arFmagSize : stdgo.GoUInt64 = (2i64 : stdgo.GoUInt64);
final _arHdrSize : stdgo.GoUInt64 = (60i64 : stdgo.GoUInt64);
final _arfmag : stdgo.GoString = ("`\n" : stdgo.GoString);
final _gccgov1Magic : stdgo.GoString = ("v1;\n" : stdgo.GoString);
final _gccgov2Magic : stdgo.GoString = ("v2;\n" : stdgo.GoString);
final _gccgov3Magic : stdgo.GoString = ("v3;\n" : stdgo.GoString);
final _goimporterMagic : stdgo.GoString = ("\n$$ " : stdgo.GoString);
final _archiveMagic : stdgo.GoString = ("!<ar" : stdgo.GoString);
final _aixbigafMagic : stdgo.GoString = ("<big" : stdgo.GoString);
final _gccgoBuiltinINT8 : stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
final _gccgoBuiltinINT16 : stdgo.GoUInt64 = (2i64 : stdgo.GoUInt64);
final _gccgoBuiltinINT32 : stdgo.GoUInt64 = (3i64 : stdgo.GoUInt64);
final _gccgoBuiltinINT64 : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
final _gccgoBuiltinUINT8 : stdgo.GoUInt64 = (5i64 : stdgo.GoUInt64);
final _gccgoBuiltinUINT16 : stdgo.GoUInt64 = (6i64 : stdgo.GoUInt64);
final _gccgoBuiltinUINT32 : stdgo.GoUInt64 = (7i64 : stdgo.GoUInt64);
final _gccgoBuiltinUINT64 : stdgo.GoUInt64 = (8i64 : stdgo.GoUInt64);
final _gccgoBuiltinFLOAT32 : stdgo.GoUInt64 = (9i64 : stdgo.GoUInt64);
final _gccgoBuiltinFLOAT64 : stdgo.GoUInt64 = (10i64 : stdgo.GoUInt64);
final _gccgoBuiltinINT : stdgo.GoUInt64 = (11i64 : stdgo.GoUInt64);
final _gccgoBuiltinUINT : stdgo.GoUInt64 = (12i64 : stdgo.GoUInt64);
final _gccgoBuiltinUINTPTR : stdgo.GoUInt64 = (13i64 : stdgo.GoUInt64);
final _gccgoBuiltinBOOL : stdgo.GoUInt64 = (15i64 : stdgo.GoUInt64);
final _gccgoBuiltinSTRING : stdgo.GoUInt64 = (16i64 : stdgo.GoUInt64);
final _gccgoBuiltinCOMPLEX64 : stdgo.GoUInt64 = (17i64 : stdgo.GoUInt64);
final _gccgoBuiltinCOMPLEX128 : stdgo.GoUInt64 = (18i64 : stdgo.GoUInt64);
final _gccgoBuiltinERROR : stdgo.GoUInt64 = (19i64 : stdgo.GoUInt64);
final _gccgoBuiltinBYTE : stdgo.GoUInt64 = (20i64 : stdgo.GoUInt64);
final _gccgoBuiltinRUNE : stdgo.GoUInt64 = (21i64 : stdgo.GoUInt64);
var _reserved : stdgo.Ref<T__struct_0> = (stdgo.Go.setRef(({ type : (null : stdgo._internal.go.types.Types.Type_) } : T__struct_0)) : stdgo.Ref<T__struct_0>);
@:keep class T__interface_0_static_extension {
    static public function name(t:T__interface_0):stdgo.GoString return t.name();
}
typedef T__interface_0 = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function name():stdgo.GoString;
};
@:structInit @:private @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_seekerReadAt_static_extension) class T_seekerReadAt {
    public var _seeker : stdgo._internal.io.Io.ReadSeeker = (null : stdgo._internal.io.Io.ReadSeeker);
    public function new(?_seeker:stdgo._internal.io.Io.ReadSeeker) {
        if (_seeker != null) this._seeker = _seeker;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_seekerReadAt(_seeker);
    }
}
@:structInit @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.GccgoInstallation_static_extension) class GccgoInstallation {
    public var gccVersion : stdgo.GoString = "";
    public var targetTriple : stdgo.GoString = "";
    public var libPaths : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?gccVersion:stdgo.GoString, ?targetTriple:stdgo.GoString, ?libPaths:stdgo.Slice<stdgo.GoString>) {
        if (gccVersion != null) this.gccVersion = gccVersion;
        if (targetTriple != null) this.targetTriple = targetTriple;
        if (libPaths != null) this.libPaths = libPaths;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GccgoInstallation(gccVersion, targetTriple, libPaths);
    }
}
@:structInit class PackageInit {
    public var name : stdgo.GoString = "";
    public var initFunc : stdgo.GoString = "";
    public var priority : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?initFunc:stdgo.GoString, ?priority:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (initFunc != null) this.initFunc = initFunc;
        if (priority != null) this.priority = priority;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PackageInit(name, initFunc, priority);
    }
}
@:structInit class InitData {
    public var priority : stdgo.GoInt = 0;
    public var inits : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.PackageInit> = (null : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.PackageInit>);
    public function new(?priority:stdgo.GoInt, ?inits:stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.PackageInit>) {
        if (priority != null) this.priority = priority;
        if (inits != null) this.inits = inits;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InitData(priority, inits);
    }
}
@:structInit @:private @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_parser_static_extension) class T_parser {
    public var _scanner : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner> = (null : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>);
    public var _version : stdgo.GoString = "";
    public var _tok : stdgo.GoInt32 = 0;
    public var _lit : stdgo.GoString = "";
    public var _pkgpath : stdgo.GoString = "";
    public var _pkgname : stdgo.GoString = "";
    public var _pkg : stdgo.Ref<stdgo._internal.go.types.Types.Package> = (null : stdgo.Ref<stdgo._internal.go.types.Types.Package>);
    public var _imports : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>);
    public var _typeList : stdgo.Slice<stdgo._internal.go.types.Types.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types.Type_>);
    public var _typeData : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _fixups : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_fixupRecord> = (null : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_fixupRecord>);
    public var _initdata : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.InitData = ({} : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.InitData);
    public var _aliases : stdgo.GoMap<stdgo.GoInt, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
    public function new(?_scanner:stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, ?_version:stdgo.GoString, ?_tok:stdgo.GoInt32, ?_lit:stdgo.GoString, ?_pkgpath:stdgo.GoString, ?_pkgname:stdgo.GoString, ?_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, ?_imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>, ?_typeList:stdgo.Slice<stdgo._internal.go.types.Types.Type_>, ?_typeData:stdgo.Slice<stdgo.GoString>, ?_fixups:stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_fixupRecord>, ?_initdata:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.InitData, ?_aliases:stdgo.GoMap<stdgo.GoInt, stdgo.GoString>) {
        if (_scanner != null) this._scanner = _scanner;
        if (_version != null) this._version = _version;
        if (_tok != null) this._tok = _tok;
        if (_lit != null) this._lit = _lit;
        if (_pkgpath != null) this._pkgpath = _pkgpath;
        if (_pkgname != null) this._pkgname = _pkgname;
        if (_pkg != null) this._pkg = _pkg;
        if (_imports != null) this._imports = _imports;
        if (_typeList != null) this._typeList = _typeList;
        if (_typeData != null) this._typeData = _typeData;
        if (_fixups != null) this._fixups = _fixups;
        if (_initdata != null) this._initdata = _initdata;
        if (_aliases != null) this._aliases = _aliases;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parser(
_scanner,
_version,
_tok,
_lit,
_pkgpath,
_pkgname,
_pkg,
_imports,
_typeList,
_typeData,
_fixups,
_initdata,
_aliases);
    }
}
@:structInit @:private class T_fixupRecord {
    public var _toUpdate : stdgo.Ref<stdgo._internal.go.types.Types.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types.Named>);
    public var _target : stdgo._internal.go.types.Types.Type_ = (null : stdgo._internal.go.types.Types.Type_);
    public function new(?_toUpdate:stdgo.Ref<stdgo._internal.go.types.Types.Named>, ?_target:stdgo._internal.go.types.Types.Type_) {
        if (_toUpdate != null) this._toUpdate = _toUpdate;
        if (_target != null) this._target = _target;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fixupRecord(_toUpdate, _target);
    }
}
@:structInit @:private @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_importError_static_extension) class T_importError {
    public var _pos : stdgo._internal.text.scanner.Scanner.Position = ({} : stdgo._internal.text.scanner.Scanner.Position);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_pos:stdgo._internal.text.scanner.Scanner.Position, ?_err:stdgo.Error) {
        if (_pos != null) this._pos = _pos;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_importError(_pos, _err);
    }
}
class T__struct_0_asInterface {
    @:embedded
    public dynamic function underlying():stdgo._internal.go.types.Types.Type_ return __self__.value.underlying();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T__struct_0_asInterface) class T__struct_0_static_extension {
    @:embedded
    public static function underlying( __self__:T__struct_0):stdgo._internal.go.types.Types.Type_ return return __self__.type.underlying();
    @:embedded
    public static function string( __self__:T__struct_0):stdgo.GoString return return __self__.type.string();
}
@:local @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T__struct_0_static_extension) typedef T__struct_0 = {
    @:embedded
    public var type : stdgo._internal.go.types.Types.Type_;
};
@:named typedef Importer = (stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>, stdgo.GoString, stdgo.GoString, stdgo.GoString -> { var _0 : stdgo._internal.io.Io.ReadCloser; var _1 : stdgo.Error; }) -> { var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; };
function _arExportData(_archive:stdgo._internal.io.Io.ReadSeeker):{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo.Error; } {
        {
            var __tmp__ = _archive.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : _err };
            };
        };
        var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt8)]);
        {
            var __tmp__ = _archive.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : _err };
            };
        };
        {
            final __value__ = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString);
            if (__value__ == (("!<arch>\n" : stdgo.GoString))) {
                return _standardArExportData(_archive);
            } else if (__value__ == (("!<thin>\n" : stdgo.GoString))) {
                return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : stdgo._internal.errors.Errors.new_(("unsupported thin archive" : stdgo.GoString)) };
            } else if (__value__ == (("<bigaf>\n" : stdgo.GoString))) {
                return _aixBigArExportData(_archive);
            } else {
                return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : stdgo._internal.fmt.Fmt.errorf(("unrecognized archive file format %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) };
            };
        };
    }
function _standardArExportData(_archive:stdgo._internal.io.Io.ReadSeeker):{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo.Error; } {
        var _off:stdgo.GoInt64 = (("!<arch>\n" : stdgo.GoString).length : stdgo.GoInt64);
        while (true) {
            var _hdrBuf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(60, 60, ...[for (i in 0 ... 60) (0 : stdgo.GoUInt8)]);
            {
                var __tmp__ = _archive.read((_hdrBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : _err };
                };
            };
            _off = (_off + ((60i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            if (!stdgo._internal.bytes.Bytes.equal((_hdrBuf.__slice__((58 : stdgo.GoInt), (60 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (("`\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))) {
                return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : stdgo._internal.fmt.Fmt.errorf(("archive header format header (%q)" : stdgo.GoString), stdgo.Go.toInterface((_hdrBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) };
            };
            var __tmp__ = stdgo._internal.strconv.Strconv.parseInt(stdgo._internal.strings.Strings.trimSpace(((_hdrBuf.__slice__((48 : stdgo.GoInt), (58 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__())?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _size:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : stdgo._internal.fmt.Fmt.errorf(("error parsing size in archive header (%q): %v" : stdgo.GoString), stdgo.Go.toInterface((_hdrBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err)) };
            };
            var _fn = (_hdrBuf.__slice__((0 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (((_fn[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) && (((_fn[(1 : stdgo.GoInt)] == ((32 : stdgo.GoUInt8)) || _fn[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) || (((_fn.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == ("/SYM64/ " : stdgo.GoString)) : Bool)) : Bool)) {} else {
                var _archiveAt:stdgo._internal.io.Io.ReaderAt = _readerAtFromSeeker(_archive);
                var __tmp__ = _elfFromAr(stdgo._internal.io.Io.newSectionReader(_archiveAt, _off, _size)), _ret:stdgo._internal.io.Io.ReadSeeker = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_ret != null) || (_err != null) : Bool)) {
                    return { _0 : _ret, _1 : _err };
                };
            };
            if ((_size & (1i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
                _size++;
            };
            _off = (_off + (_size) : stdgo.GoInt64);
            {
                var __tmp__ = _archive.seek(_off, (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : _err };
                };
            };
        };
    }
function _elfFromAr(_member:stdgo.Ref<stdgo._internal.io.Io.SectionReader>):{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.debug.elf.Elf.newFile(stdgo.Go.asInterface(_member)), _ef:stdgo.Ref<stdgo._internal.debug.elf.Elf.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : _err };
        };
        var _sec = _ef.section((".go_export" : stdgo.GoString));
        if (_sec == null || (_sec : Dynamic).__nil__) {
            return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : (null : stdgo.Error) };
        };
        return { _0 : _sec.open(), _1 : (null : stdgo.Error) };
    }
function _aixBigArExportData(_archive:stdgo._internal.io.Io.ReadSeeker):{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo.Error; } {
        var _archiveAt:stdgo._internal.io.Io.ReaderAt = _readerAtFromSeeker(_archive);
        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff.newArchive(_archiveAt), _arch:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff.Archive> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : _err };
        };
        for (__0 => _mem in _arch.members) {
            var __tmp__ = _arch.getFile(_mem.memberHeader.name?.__copy__()), _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : _err };
            };
            var _sdat = _f.csect((".go_export" : stdgo.GoString));
            if (_sdat != null) {
                return { _0 : stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_sdat)), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : stdgo._internal.fmt.Fmt.errorf((".go_export not found in this archive" : stdgo.GoString)) };
    }
function _readerAtFromSeeker(_rs:stdgo._internal.io.Io.ReadSeeker):stdgo._internal.io.Io.ReaderAt {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rs) : stdgo._internal.io.Io.ReaderAt)) : stdgo._internal.io.Io.ReaderAt), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.ReaderAt), _1 : false };
            }, _ret = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _ret;
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_seekerReadAt(_rs) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_seekerReadAt));
    }
function _findExportFile(_searchpaths:stdgo.Slice<stdgo.GoString>, _pkgpath:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        for (__0 => _spath in _searchpaths) {
            var _pkgfullpath:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_spath?.__copy__(), _pkgpath?.__copy__())?.__copy__();
            var __tmp__ = stdgo._internal.path.filepath.Filepath.split(_pkgfullpath?.__copy__()), _pkgdir:stdgo.GoString = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
            for (__1 => _filepath in (new stdgo.GoArray<stdgo.GoString>(5, 5, ...[_pkgfullpath?.__copy__(), (_pkgfullpath + (".gox" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_pkgdir + ("lib" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (".so" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_pkgdir + ("lib" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (".a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (_pkgfullpath + (".o" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.GoArray<stdgo.GoString>)) {
                var __tmp__ = stdgo._internal.os.Os.stat(_filepath?.__copy__()), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && !_fi.isDir() : Bool)) {
                    return { _0 : _filepath?.__copy__(), _1 : (null : stdgo.Error) };
                };
            };
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt.errorf(("%s: could not find export data (tried %s)" : stdgo.GoString), stdgo.Go.toInterface(_pkgpath), stdgo.Go.toInterface(stdgo._internal.strings.Strings.join(_searchpaths, (":" : stdgo.GoString)))) };
    }
function _openExportFile(_fpath:stdgo.GoString):{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo._internal.io.Io.Closer; var _2 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _reader:stdgo._internal.io.Io.ReadSeeker = (null : stdgo._internal.io.Io.ReadSeeker), _closer:stdgo._internal.io.Io.Closer = (null : stdgo._internal.io.Io.Closer), _err:stdgo.Error = (null : stdgo.Error);
        try {
            var __tmp__ = stdgo._internal.os.Os.open(_fpath?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _reader, _1 : _closer, _2 : _err };
            };
            _closer = stdgo.Go.asInterface(_f);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (((_err != null) && (_closer != null) : Bool)) {
                        _f.close();
                    };
                };
                a();
            });
            var _magic:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
            {
                var __tmp__ = _f.readAt((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64));
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo._internal.io.Io.Closer; var _2 : stdgo.Error; } = { _0 : _reader, _1 : _closer, _2 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _objreader:stdgo._internal.io.Io.ReaderAt = (null : stdgo._internal.io.Io.ReaderAt);
            {
                final __value__ = ((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString);
                if (__value__ == (("v1;\n" : stdgo.GoString)) || __value__ == (("v2;\n" : stdgo.GoString)) || __value__ == (("v3;\n" : stdgo.GoString)) || __value__ == (("\n$$ " : stdgo.GoString))) {
                    _reader = stdgo.Go.asInterface(_f);
                    {
                        final __ret__:{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo._internal.io.Io.Closer; var _2 : stdgo.Error; } = { _0 : _reader, _1 : _closer, _2 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                } else if (__value__ == (("!<ar" : stdgo.GoString)) || __value__ == (("<big" : stdgo.GoString))) {
                    {
                        var __tmp__ = _arExportData(stdgo.Go.asInterface(_f));
                        _reader = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    {
                        final __ret__:{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo._internal.io.Io.Closer; var _2 : stdgo.Error; } = { _0 : _reader, _1 : _closer, _2 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                } else {
                    _objreader = stdgo.Go.asInterface(_f);
                };
            };
            var __tmp__ = stdgo._internal.debug.elf.Elf.newFile(_objreader), _ef:stdgo.Ref<stdgo._internal.debug.elf.Elf.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                var _sec = _ef.section((".go_export" : stdgo.GoString));
                if (_sec == null || (_sec : Dynamic).__nil__) {
                    _err = stdgo._internal.fmt.Fmt.errorf(("%s: .go_export section not found" : stdgo.GoString), stdgo.Go.toInterface(_fpath));
                    {
                        final __ret__:{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo._internal.io.Io.Closer; var _2 : stdgo.Error; } = { _0 : _reader, _1 : _closer, _2 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                _reader = _sec.open();
                {
                    final __ret__:{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo._internal.io.Io.Closer; var _2 : stdgo.Error; } = { _0 : _reader, _1 : _closer, _2 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var __tmp__ = stdgo._internal.internal.xcoff.Xcoff.newFile(_objreader), _xf:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                var _sdat = _xf.csect((".go_export" : stdgo.GoString));
                if (_sdat == null) {
                    _err = stdgo._internal.fmt.Fmt.errorf(("%s: .go_export section not found" : stdgo.GoString), stdgo.Go.toInterface(_fpath));
                    {
                        final __ret__:{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo._internal.io.Io.Closer; var _2 : stdgo.Error; } = { _0 : _reader, _1 : _closer, _2 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                _reader = stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_sdat));
                {
                    final __ret__:{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo._internal.io.Io.Closer; var _2 : stdgo.Error; } = { _0 : _reader, _1 : _closer, _2 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _err = stdgo._internal.fmt.Fmt.errorf(("%s: unrecognized file format" : stdgo.GoString), stdgo.Go.toInterface(_fpath));
            {
                final __ret__:{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo._internal.io.Io.Closer; var _2 : stdgo.Error; } = { _0 : _reader, _1 : _closer, _2 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo._internal.io.Io.Closer; var _2 : stdgo.Error; } = { _0 : _reader, _1 : _closer, _2 : _err };
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
            final __ret__:{ var _0 : stdgo._internal.io.Io.ReadSeeker; var _1 : stdgo._internal.io.Io.Closer; var _2 : stdgo.Error; } = { _0 : _reader, _1 : _closer, _2 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function getImporter(_searchpaths:stdgo.Slice<stdgo.GoString>, _initmap:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types.Package>, InitData>):Importer {
        return function(_imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>, _pkgpath:stdgo.GoString, _srcDir:stdgo.GoString, _lookup:stdgo.GoString -> { var _0 : stdgo._internal.io.Io.ReadCloser; var _1 : stdgo.Error; }):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } {
            var __deferstack__:Array<Void -> Void> = [];
            var _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package> = (null : stdgo.Ref<stdgo._internal.go.types.Types.Package>), _err:stdgo.Error = (null : stdgo.Error);
            try {
                if (_pkgpath == (("unsafe" : stdgo.GoString))) {
                    return { _0 : stdgo._internal.go.types.Types.unsafe, _1 : (null : stdgo.Error) };
                };
                var _reader:stdgo._internal.io.Io.ReadSeeker = (null : stdgo._internal.io.Io.ReadSeeker);
                var _fpath:stdgo.GoString = ("" : stdgo.GoString);
                var _rc:stdgo._internal.io.Io.ReadCloser = (null : stdgo._internal.io.Io.ReadCloser);
                if (_lookup != null) {
                    {
                        var _p = (_imports[_pkgpath] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types.Package>));
                        if ((((_p != null) && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) && _p.complete() : Bool)) {
                            return { _0 : _p, _1 : (null : stdgo.Error) };
                        };
                    };
                    {
                        var __tmp__ = _lookup(_pkgpath?.__copy__());
                        _rc = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                if (_rc != null) {
                    __deferstack__.unshift(() -> _rc.close());
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rc) : stdgo._internal.io.Io.ReadSeeker)) : stdgo._internal.io.Io.ReadSeeker), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.io.Io.ReadSeeker), _1 : false };
                    }, _rs = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt.errorf(("gccgo importer requires lookup to return an io.ReadSeeker, have %T" : stdgo.GoString), stdgo.Go.toInterface(_rc)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    _reader = _rs;
                    _fpath = ((("<lookup " : stdgo.GoString) + _pkgpath?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rc) : T__interface_0)) : T__interface_0), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T__interface_0), _1 : false };
                        }, _n = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _fpath = _n.name()?.__copy__();
                        };
                    };
                } else {
                    {
                        var __tmp__ = _findExportFile(_searchpaths, _pkgpath?.__copy__());
                        _fpath = __tmp__._0?.__copy__();
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    var __tmp__ = _openExportFile(_fpath?.__copy__()), _r:stdgo._internal.io.Io.ReadSeeker = __tmp__._0, _closer:stdgo._internal.io.Io.Closer = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    if (_closer != null) {
                        __deferstack__.unshift(() -> _closer.close());
                    };
                    _reader = _r;
                };
                var _magics:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = _readMagic(_reader);
                    _magics = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } = { _0 : _pkg, _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                if (((_magics == ("!<ar" : stdgo.GoString)) || (_magics == ("<big" : stdgo.GoString)) : Bool)) {
                    {
                        var __tmp__ = _arExportData(_reader);
                        _reader = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } = { _0 : _pkg, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    {
                        var __tmp__ = _readMagic(_reader);
                        _magics = __tmp__._0?.__copy__();
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } = { _0 : _pkg, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
                {
                    final __value__ = _magics;
                    if (__value__ == (("v1;\n" : stdgo.GoString)) || __value__ == (("v2;\n" : stdgo.GoString)) || __value__ == (("v3;\n" : stdgo.GoString))) {
                        var _p:T_parser = ({} : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_parser);
                        _p._init(_fpath?.__copy__(), _reader, _imports);
                        _pkg = _p._parsePackage();
                        if (_initmap != null) {
                            _initmap[_pkg] = _p._initdata?.__copy__();
                        };
                    } else {
                        _err = stdgo._internal.fmt.Fmt.errorf(("unrecognized magic string: %q" : stdgo.GoString), stdgo.Go.toInterface(_magics));
                    };
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } = { _0 : _pkg, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } = { _0 : _pkg, _1 : _err };
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
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.Error; } = { _0 : _pkg, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        };
    }
function _readMagic(_reader:stdgo._internal.io.Io.ReadSeeker):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _magic:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
        {
            var __tmp__ = _reader.read((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
            };
        };
        {
            var __tmp__ = _reader.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : _err };
            };
        };
        return { _0 : ((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
function _deref(_typ:stdgo._internal.go.types.Types.Type_):stdgo._internal.go.types.Types.Type_ {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types.Pointer_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types.Pointer_>), _1 : false };
            }, _p = __tmp__._0, __0 = __tmp__._1;
            if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
                _typ = _p.elem();
            };
        };
        return _typ;
    }
function _lookupBuiltinType(_typ:stdgo.GoInt):stdgo._internal.go.types.Types.Type_ {
        return {
            var s:stdgo.GoArray<stdgo._internal.go.types.Types.Type_> = new stdgo.GoArray<stdgo._internal.go.types.Types.Type_>(22, 22, ...[for (i in 0 ... 22) (null : stdgo._internal.go.types.Types.Type_)]);
            s[1] = stdgo._internal.go.types.Types.typ[((3 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[2] = stdgo._internal.go.types.Types.typ[((4 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[3] = stdgo._internal.go.types.Types.typ[((5 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[4] = stdgo._internal.go.types.Types.typ[((6 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[5] = stdgo._internal.go.types.Types.typ[((8 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[6] = stdgo._internal.go.types.Types.typ[((9 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[7] = stdgo._internal.go.types.Types.typ[((10 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[8] = stdgo._internal.go.types.Types.typ[((11 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[9] = stdgo._internal.go.types.Types.typ[((13 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[10] = stdgo._internal.go.types.Types.typ[((14 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[11] = stdgo._internal.go.types.Types.typ[((2 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[12] = stdgo._internal.go.types.Types.typ[((7 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[13] = stdgo._internal.go.types.Types.typ[((12 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[15] = stdgo._internal.go.types.Types.typ[((1 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[16] = stdgo._internal.go.types.Types.typ[((17 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[17] = stdgo._internal.go.types.Types.typ[((15 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[18] = stdgo._internal.go.types.Types.typ[((16 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            s[19] = stdgo._internal.go.types.Types.universe.lookup(("error" : stdgo.GoString)).type();
            s[20] = stdgo._internal.go.types.Types.universe.lookup(("byte" : stdgo.GoString)).type();
            s[21] = stdgo._internal.go.types.Types.universe.lookup(("rune" : stdgo.GoString)).type();
            s;
        }[(_typ : stdgo.GoInt)];
    }
class T_seekerReadAt_asInterface {
    @:keep
    public dynamic function readAt(_p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_p, _off);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_seekerReadAt>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_seekerReadAt_asInterface) class T_seekerReadAt_static_extension {
    @:keep
    static public function readAt( _sra:T_seekerReadAt, _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sra:T_seekerReadAt = _sra?.__copy__();
        {
            var __tmp__ = _sra._seeker.seek(_off, (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        return _sra._seeker.read(_p);
    }
}
class GccgoInstallation_asInterface {
    @:keep
    public dynamic function getImporter(_incpaths:stdgo.Slice<stdgo.GoString>, _initmap:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types.Package>, InitData>):Importer return __self__.value.getImporter(_incpaths, _initmap);
    @:keep
    public dynamic function searchPaths():stdgo.Slice<stdgo.GoString> return __self__.value.searchPaths();
    @:keep
    public dynamic function initFromDriver(_gccgoPath:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Error return __self__.value.initFromDriver(_gccgoPath, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<GccgoInstallation>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.GccgoInstallation_asInterface) class GccgoInstallation_static_extension {
    @:keep
    static public function getImporter( _inst:stdgo.Ref<GccgoInstallation>, _incpaths:stdgo.Slice<stdgo.GoString>, _initmap:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types.Package>, InitData>):Importer {
        @:recv var _inst:stdgo.Ref<GccgoInstallation> = _inst;
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.getImporter(((_incpaths.__append__(...(_inst.searchPaths() : Array<stdgo.GoString>))).__append__(("." : stdgo.GoString))), _initmap);
    }
    @:keep
    static public function searchPaths( _inst:stdgo.Ref<GccgoInstallation>):stdgo.Slice<stdgo.GoString> {
        @:recv var _inst:stdgo.Ref<GccgoInstallation> = _inst;
        var _paths:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__0 => _lpath in _inst.libPaths) {
            var _spath:stdgo.GoString = stdgo._internal.path.filepath.Filepath.join(_lpath?.__copy__(), ("go" : stdgo.GoString), _inst.gccVersion?.__copy__())?.__copy__();
            var __tmp__ = stdgo._internal.os.Os.stat(_spath?.__copy__()), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || !_fi.isDir() : Bool)) {
                continue;
            };
            _paths = (_paths.__append__(_spath?.__copy__()));
            _spath = stdgo._internal.path.filepath.Filepath.join(_spath?.__copy__(), _inst.targetTriple?.__copy__())?.__copy__();
            {
                var __tmp__ = stdgo._internal.os.Os.stat(_spath?.__copy__());
                _fi = __tmp__._0;
                _err = __tmp__._1;
            };
            if (((_err != null) || !_fi.isDir() : Bool)) {
                continue;
            };
            _paths = (_paths.__append__(_spath?.__copy__()));
        };
        _paths = (_paths.__append__(...(_inst.libPaths : Array<stdgo.GoString>)));
        return _paths;
    }
    @:keep
    static public function initFromDriver( _inst:stdgo.Ref<GccgoInstallation>, _gccgoPath:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Error {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        @:recv var _inst:stdgo.Ref<GccgoInstallation> = _inst;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _argv = ((new stdgo.Slice<stdgo.GoString>(5, 5, ...[("-###" : stdgo.GoString), ("-S" : stdgo.GoString), ("-x" : stdgo.GoString), ("go" : stdgo.GoString), ("-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_args : Array<stdgo.GoString>)));
        var _cmd = stdgo._internal.os.exec.Exec.command(_gccgoPath?.__copy__(), ...(_argv : Array<stdgo.GoString>));
        var __tmp__ = _cmd.stderrPipe(), _stderr:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _err = _cmd.start();
        if (_err != null) {
            return _err;
        };
        var _scanner = stdgo._internal.bufio.Bufio.newScanner(_stderr);
        while (_scanner.scan()) {
            var _line:stdgo.GoString = _scanner.text()?.__copy__();
            if (stdgo._internal.strings.Strings.hasPrefix(_line?.__copy__(), ("Target: " : stdgo.GoString))) {
                _inst.targetTriple = (_line.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            } else if (_line[(0 : stdgo.GoInt)] == ((32 : stdgo.GoUInt8))) {
                var _args = stdgo._internal.strings.Strings.fields(_line?.__copy__());
                for (__12 => _arg in (_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                    if (stdgo._internal.strings.Strings.hasPrefix(_arg?.__copy__(), ("-L" : stdgo.GoString))) {
                        _inst.libPaths = (_inst.libPaths.__append__((_arg.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()));
                    };
                };
            };
        };
        _argv = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-dumpversion" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_args : Array<stdgo.GoString>)));
        var __tmp__ = stdgo._internal.os.exec.Exec.command(_gccgoPath?.__copy__(), ...(_argv : Array<stdgo.GoString>)).output(), _stdout:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _inst.gccVersion = stdgo._internal.strings.Strings.trimSpace((_stdout : stdgo.GoString)?.__copy__())?.__copy__();
        return _err;
    }
}
class T_parser_asInterface {
    @:keep
    public dynamic function _parsePackage():stdgo.Ref<stdgo._internal.go.types.Types.Package> return __self__.value._parsePackage();
    @:keep
    public dynamic function _parseDirective():Void __self__.value._parseDirective();
    @:keep
    public dynamic function _parseInitDataDirective():Void __self__.value._parseInitDataDirective();
    @:keep
    public dynamic function _maybeCreatePackage():Void __self__.value._maybeCreatePackage();
    @:keep
    public dynamic function _parsePackageInit():PackageInit return __self__.value._parsePackageInit();
    @:keep
    public dynamic function _parseSavedType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _i:stdgo.GoInt, _nlist:stdgo.Slice<stdgo.AnyInterface>):Void __self__.value._parseSavedType(_pkg, _i, _nlist);
    @:keep
    public dynamic function _parseTypes(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):Void __self__.value._parseTypes(_pkg);
    @:keep
    public dynamic function _skipInlineBody():Void __self__.value._skipInlineBody();
    @:keep
    public dynamic function _parseTypeExtended(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _n:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.go.types.Types.Type_; var _1 : stdgo.GoInt; } return __self__.value._parseTypeExtended(_pkg, ..._n);
    @:keep
    public dynamic function _parseTypeAfterAngle(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _n:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.go.types.Types.Type_; var _1 : stdgo.GoInt; } return __self__.value._parseTypeAfterAngle(_pkg, ..._n);
    @:keep
    public dynamic function _parseType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _n:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ return __self__.value._parseType(_pkg, ..._n);
    @:keep
    public dynamic function _parseTypeSpec(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ return __self__.value._parseTypeSpec(_pkg, _nlist);
    @:keep
    public dynamic function _parsePointerType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ return __self__.value._parsePointerType(_pkg, _nlist);
    @:keep
    public dynamic function _parseInterfaceType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ return __self__.value._parseInterfaceType(_pkg, _nlist);
    @:keep
    public dynamic function _parseFunc(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):stdgo.Ref<stdgo._internal.go.types.Types.Func> return __self__.value._parseFunc(_pkg);
    @:keep
    public dynamic function _parseFunctionType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.go.types.Types.Signature> return __self__.value._parseFunctionType(_pkg, _nlist);
    @:keep
    public dynamic function _parseResultList(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):stdgo.Ref<stdgo._internal.go.types.Types.Tuple> return __self__.value._parseResultList(_pkg);
    @:keep
    public dynamic function _parseParamList(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Tuple>; var _1 : Bool; } return __self__.value._parseParamList(_pkg);
    @:keep
    public dynamic function _parseStructType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ return __self__.value._parseStructType(_pkg, _nlist);
    @:keep
    public dynamic function _parseChanType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ return __self__.value._parseChanType(_pkg, _nlist);
    @:keep
    public dynamic function _parseMapType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ return __self__.value._parseMapType(_pkg, _nlist);
    @:keep
    public dynamic function _parseArrayOrSliceType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ return __self__.value._parseArrayOrSliceType(_pkg, _nlist);
    @:keep
    public dynamic function _parseInt():stdgo.GoInt return __self__.value._parseInt();
    @:keep
    public dynamic function _parseInt64():stdgo.GoInt64 return __self__.value._parseInt64();
    @:keep
    public dynamic function _parseNamedType(_nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ return __self__.value._parseNamedType(_nlist);
    @:keep
    public dynamic function _update(_t:stdgo._internal.go.types.Types.Type_, _nlist:stdgo.Slice<stdgo.AnyInterface>):Void __self__.value._update(_t, _nlist);
    @:keep
    public dynamic function _reserve(_n:stdgo.GoInt):Void __self__.value._reserve(_n);
    @:keep
    public dynamic function _parseConst(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):stdgo.Ref<stdgo._internal.go.types.Types.Const> return __self__.value._parseConst(_pkg);
    @:keep
    public dynamic function _parseConstValue(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):{ var _0 : stdgo._internal.go.constant.Constant.Value; var _1 : stdgo._internal.go.types.Types.Type_; } return __self__.value._parseConstValue(_pkg);
    @:keep
    public dynamic function _parseConversion(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):{ var _0 : stdgo._internal.go.constant.Constant.Value; var _1 : stdgo._internal.go.types.Types.Type_; } return __self__.value._parseConversion(_pkg);
    @:keep
    public dynamic function _parseVar(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):stdgo.Ref<stdgo._internal.go.types.Types.Var> return __self__.value._parseVar(_pkg);
    @:keep
    public dynamic function _parseParam(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Var>; var _1 : Bool; } return __self__.value._parseParam(_pkg);
    @:keep
    public dynamic function _parseField(_pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Var>; var _1 : stdgo.GoString; } return __self__.value._parseField(_pkg);
    @:keep
    public dynamic function _parseName():stdgo.GoString return __self__.value._parseName();
    @:keep
    public dynamic function _parseExportedName():{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.GoString; } return __self__.value._parseExportedName();
    @:keep
    public dynamic function _getPkg(_pkgpath:stdgo.GoString, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types.Package> return __self__.value._getPkg(_pkgpath, _name);
    @:keep
    public dynamic function _parseQualifiedNameStr(_unquotedName:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return __self__.value._parseQualifiedNameStr(_unquotedName);
    @:keep
    public dynamic function _parseUnquotedQualifiedName():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return __self__.value._parseUnquotedQualifiedName();
    @:keep
    public dynamic function _parseQualifiedName():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return __self__.value._parseQualifiedName();
    @:keep
    public dynamic function _next():Void __self__.value._next();
    @:keep
    public dynamic function _parseUnquotedString():stdgo.GoString return __self__.value._parseUnquotedString();
    @:keep
    public dynamic function _parseString():stdgo.GoString return __self__.value._parseString();
    @:keep
    public dynamic function _expectKeyword(_keyword:stdgo.GoString):Void __self__.value._expectKeyword(_keyword);
    @:keep
    public dynamic function _expectEOL():Void __self__.value._expectEOL();
    @:keep
    public dynamic function _expect(_tok:stdgo.GoRune):stdgo.GoString return __self__.value._expect(_tok);
    @:keep
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._errorf(_format, ..._args);
    @:keep
    public dynamic function _error(_err:stdgo.AnyInterface):Void __self__.value._error(_err);
    @:keep
    public dynamic function _initScanner(_filename:stdgo.GoString, _src:stdgo._internal.io.Io.Reader):Void __self__.value._initScanner(_filename, _src);
    @:keep
    public dynamic function _init(_filename:stdgo.GoString, _src:stdgo._internal.io.Io.Reader, _imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>):Void __self__.value._init(_filename, _src, _imports);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_parser>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    static public function _parsePackage( _p:stdgo.Ref<T_parser>):stdgo.Ref<stdgo._internal.go.types.Types.Package> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        while (_p._tok != ((-1 : stdgo.GoInt32))) {
            _p._parseDirective();
        };
        for (__0 => _f in _p._fixups) {
            if (_f._target.underlying() == null) {
                _p._errorf(("internal error: fixup can\'t be applied, loop required" : stdgo.GoString));
            };
            _f._toUpdate.setUnderlying(_f._target.underlying());
        };
        _p._fixups = (null : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_fixupRecord>);
        for (__33 => _typ in _p._typeList) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types.Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types.Interface>), _1 : false };
                }, _it = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _it.complete();
                };
            };
        };
        _p._pkg.markComplete();
        return _p._pkg;
    }
    @:keep
    static public function _parseDirective( _p:stdgo.Ref<T_parser>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (_p._tok != ((-2 : stdgo.GoInt32))) {
            _p._expect((-2 : stdgo.GoInt32));
        };
        {
            final __value__ = _p._lit;
            if (__value__ == (("v1" : stdgo.GoString)) || __value__ == (("v2" : stdgo.GoString)) || __value__ == (("v3" : stdgo.GoString)) || __value__ == (("priority" : stdgo.GoString)) || __value__ == (("init" : stdgo.GoString)) || __value__ == (("init_graph" : stdgo.GoString)) || __value__ == (("checksum" : stdgo.GoString))) {
                _p._parseInitDataDirective();
            } else if (__value__ == (("package" : stdgo.GoString))) {
                _p._next();
                _p._pkgname = _p._parseUnquotedString()?.__copy__();
                _p._maybeCreatePackage();
                if (((_p._version != (("v1" : stdgo.GoString)) && _p._tok != ((10 : stdgo.GoInt32)) : Bool) && (_p._tok != (59 : stdgo.GoInt32)) : Bool)) {
                    _p._parseUnquotedString();
                    _p._parseUnquotedString();
                };
                _p._expectEOL();
            } else if (__value__ == (("pkgpath" : stdgo.GoString))) {
                _p._next();
                _p._pkgpath = _p._parseUnquotedString()?.__copy__();
                _p._maybeCreatePackage();
                _p._expectEOL();
            } else if (__value__ == (("prefix" : stdgo.GoString))) {
                _p._next();
                _p._pkgpath = _p._parseUnquotedString()?.__copy__();
                _p._expectEOL();
            } else if (__value__ == (("import" : stdgo.GoString))) {
                _p._next();
                var _pkgname:stdgo.GoString = _p._parseUnquotedString()?.__copy__();
                var _pkgpath:stdgo.GoString = _p._parseUnquotedString()?.__copy__();
                _p._getPkg(_pkgpath?.__copy__(), _pkgname?.__copy__());
                _p._parseString();
                _p._expectEOL();
            } else if (__value__ == (("indirectimport" : stdgo.GoString))) {
                _p._next();
                var _pkgname:stdgo.GoString = _p._parseUnquotedString()?.__copy__();
                var _pkgpath:stdgo.GoString = _p._parseUnquotedString()?.__copy__();
                _p._getPkg(_pkgpath?.__copy__(), _pkgname?.__copy__());
                _p._expectEOL();
            } else if (__value__ == (("types" : stdgo.GoString))) {
                _p._next();
                _p._parseTypes(_p._pkg);
                _p._expectEOL();
            } else if (__value__ == (("func" : stdgo.GoString))) {
                _p._next();
                var _fun = _p._parseFunc(_p._pkg);
                if (_fun != null && ((_fun : Dynamic).__nil__ == null || !(_fun : Dynamic).__nil__)) {
                    _p._pkg.scope().insert(stdgo.Go.asInterface(_fun));
                };
                _p._expectEOL();
            } else if (__value__ == (("type" : stdgo.GoString))) {
                _p._next();
                _p._parseType(_p._pkg);
                _p._expectEOL();
            } else if (__value__ == (("var" : stdgo.GoString))) {
                _p._next();
                var _v = _p._parseVar(_p._pkg);
                if (_v != null && ((_v : Dynamic).__nil__ == null || !(_v : Dynamic).__nil__)) {
                    _p._pkg.scope().insert(stdgo.Go.asInterface(_v));
                };
                _p._expectEOL();
            } else if (__value__ == (("const" : stdgo.GoString))) {
                _p._next();
                var _c = _p._parseConst(_p._pkg);
                _p._pkg.scope().insert(stdgo.Go.asInterface(_c));
                _p._expectEOL();
            } else {
                _p._errorf(("unexpected identifier: %q" : stdgo.GoString), stdgo.Go.toInterface(_p._lit));
            };
        };
    }
    @:keep
    static public function _parseInitDataDirective( _p:stdgo.Ref<T_parser>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_p._tok != ((-2 : stdgo.GoInt32))) {
                _p._expect((-2 : stdgo.GoInt32));
            };
            {
                final __value__ = _p._lit;
                if (__value__ == (("v1" : stdgo.GoString)) || __value__ == (("v2" : stdgo.GoString)) || __value__ == (("v3" : stdgo.GoString))) {
                    _p._version = _p._lit?.__copy__();
                    _p._next();
                    _p._expect((59 : stdgo.GoInt32));
                    _p._expect((10 : stdgo.GoInt32));
                } else if (__value__ == (("priority" : stdgo.GoString))) {
                    _p._next();
                    _p._initdata.priority = _p._parseInt();
                    _p._expectEOL();
                } else if (__value__ == (("init" : stdgo.GoString))) {
                    _p._next();
                    while (((_p._tok != ((10 : stdgo.GoInt32)) && _p._tok != ((59 : stdgo.GoInt32)) : Bool) && (_p._tok != (-1 : stdgo.GoInt32)) : Bool)) {
                        _p._initdata.inits = (_p._initdata.inits.__append__(_p._parsePackageInit()?.__copy__()));
                    };
                    _p._expectEOL();
                } else if (__value__ == (("init_graph" : stdgo.GoString))) {
                    _p._next();
                    while (((_p._tok != ((10 : stdgo.GoInt32)) && _p._tok != ((59 : stdgo.GoInt32)) : Bool) && (_p._tok != (-1 : stdgo.GoInt32)) : Bool)) {
                        _p._parseInt64();
                        _p._parseInt64();
                    };
                    _p._expectEOL();
                } else if (__value__ == (("checksum" : stdgo.GoString))) {
                    {
                        var _a0 = _p._scanner.mode;
                        __deferstack__.unshift(() -> {
                            var a = function(_mode:stdgo.GoUInt):Void {
                                _p._scanner.mode = _mode;
                            };
                            a(_a0);
                        });
                    };
                    _p._scanner.mode = (_p._scanner.mode & ((((24u32 : stdgo.GoUInt)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt)) : stdgo.GoUInt);
                    _p._next();
                    _p._parseUnquotedString();
                    _p._expectEOL();
                } else {
                    _p._errorf(("unexpected identifier: %q" : stdgo.GoString), stdgo.Go.toInterface(_p._lit));
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
    static public function _maybeCreatePackage( _p:stdgo.Ref<T_parser>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (((_p._pkgname != stdgo.Go.str()) && (_p._pkgpath != stdgo.Go.str()) : Bool)) {
            _p._pkg = _p._getPkg(_p._pkgpath?.__copy__(), _p._pkgname?.__copy__());
        };
    }
    @:keep
    static public function _parsePackageInit( _p:stdgo.Ref<T_parser>):PackageInit {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _name:stdgo.GoString = _p._parseUnquotedString()?.__copy__();
        var _initfunc:stdgo.GoString = _p._parseUnquotedString()?.__copy__();
        var _priority:stdgo.GoInt = (-1 : stdgo.GoInt);
        if (_p._version == (("v1" : stdgo.GoString))) {
            _priority = _p._parseInt();
        };
        return ({ name : _name?.__copy__(), initFunc : _initfunc?.__copy__(), priority : _priority } : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.PackageInit);
    }
    @:keep
    static public function _parseSavedType( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _i:stdgo.GoInt, _nlist:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _p._scanner;
                var _a1 = _p._tok;
                var _a2 = _p._lit;
                __deferstack__.unshift(() -> {
                    var a = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, _tok:stdgo.GoRune, _lit:stdgo.GoString):Void {
                        _p._scanner = _s;
                        _p._tok = _tok;
                        _p._lit = _lit?.__copy__();
                    };
                    a(_a0, _a1, _a2?.__copy__());
                });
            };
            _p._scanner = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>);
            _p._initScanner(_p._scanner.position.filename?.__copy__(), stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(_p._typeData[(_i : stdgo.GoInt)]?.__copy__())));
            _p._expectKeyword(("type" : stdgo.GoString));
            var _id:stdgo.GoInt = _p._parseInt();
            if (_id != (_i)) {
                _p._errorf(("type ID mismatch: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_id), stdgo.Go.toInterface(_i));
            };
            if (stdgo.Go.toInterface(_p._typeList[(_i : stdgo.GoInt)]) == (stdgo.Go.toInterface(stdgo.Go.asInterface(_reserved)))) {
                _p._errorf(("internal error: %d already reserved in parseSavedType" : stdgo.GoString), stdgo.Go.toInterface(_i));
            };
            if (_p._typeList[(_i : stdgo.GoInt)] == null) {
                _p._reserve(_i);
                _p._parseTypeSpec(_pkg, (_nlist.__append__(stdgo.Go.toInterface(_i))));
            };
            if (((_p._typeList[(_i : stdgo.GoInt)] == null) || (stdgo.Go.toInterface(_p._typeList[(_i : stdgo.GoInt)]) == stdgo.Go.toInterface(stdgo.Go.asInterface(_reserved))) : Bool)) {
                _p._errorf(("internal error: parseSavedType(%d,%v) reserved/nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_nlist));
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
    static public function _parseTypes( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _maxp1:stdgo.GoInt = _p._parseInt();
            var _exportedp1:stdgo.GoInt = _p._parseInt();
            _p._typeList = (new stdgo.Slice<stdgo._internal.go.types.Types.Type_>((_maxp1 : stdgo.GoInt).toBasic(), _maxp1) : stdgo.Slice<stdgo._internal.go.types.Types.Type_>);
            {};
            var _typeOffsets:stdgo.Slice<T__parseTypes___localname___typeOffset_26108> = (null : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T__parseTypes___localname___typeOffset_26108>);
            var _total:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var _i:stdgo.GoInt = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _maxp1 : Bool), _i++, {
                    var _len:stdgo.GoInt = _p._parseInt();
                    _typeOffsets = (_typeOffsets.__append__((new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T__parseTypes___localname___typeOffset_26108(_total, _len) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T__parseTypes___localname___typeOffset_26108)));
                    _total = (_total + (_len) : stdgo.GoInt);
                });
            };
            {
                var _a0 = _p._scanner.whitespace;
                __deferstack__.unshift(() -> {
                    var a = function(_w:stdgo.GoUInt64):Void {
                        _p._scanner.whitespace = _w;
                    };
                    a(_a0);
                });
            };
            _p._scanner.whitespace = (0i64 : stdgo.GoUInt64);
            var _sb:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
            while ((_sb.len() < _total : Bool)) {
                var _r:stdgo.GoInt32 = _p._scanner.next();
                if (_r == ((-1 : stdgo.GoInt32))) {
                    _p._error(stdgo.Go.toInterface(("unexpected EOF" : stdgo.GoString)));
                };
                _sb.writeRune(_r);
            };
            var _allTypeData:stdgo.GoString = (_sb.string() : stdgo.GoString)?.__copy__();
            _p._typeData = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (__0 => _to in _typeOffsets) {
                _p._typeData = (_p._typeData.__append__((_allTypeData.__slice__(_to._offset, (_to._offset + _to._length : stdgo.GoInt)) : stdgo.GoString)?.__copy__()));
            };
            {
                var _i:stdgo.GoInt = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_exportedp1 : stdgo.GoInt) : Bool), _i++, {
                    _p._parseSavedType(_pkg, _i, (null : stdgo.Slice<stdgo.AnyInterface>));
                });
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
    static public function _skipInlineBody( _p:stdgo.Ref<T_parser>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_p._tok == ((60 : stdgo.GoInt32))) {
                _p._next();
                _p._expectKeyword(("inl" : stdgo.GoString));
            } else if (((_p._tok != (-2 : stdgo.GoInt32)) || (_p._lit != ("inl" : stdgo.GoString)) : Bool)) {
                return;
            } else {
                _p._next();
            };
            _p._expect((58 : stdgo.GoInt32));
            var _want:stdgo.GoInt = _p._parseInt();
            _p._expect((62 : stdgo.GoInt32));
            {
                var _a0 = _p._scanner.whitespace;
                __deferstack__.unshift(() -> {
                    var a = function(_w:stdgo.GoUInt64):Void {
                        _p._scanner.whitespace = _w;
                    };
                    a(_a0);
                });
            };
            _p._scanner.whitespace = (0i64 : stdgo.GoUInt64);
            var _got:stdgo.GoInt = (0 : stdgo.GoInt);
            while ((_got < _want : Bool)) {
                var _r:stdgo.GoInt32 = _p._scanner.next();
                if (_r == ((-1 : stdgo.GoInt32))) {
                    _p._error(stdgo.Go.toInterface(("unexpected EOF" : stdgo.GoString)));
                };
                _got = (_got + (stdgo._internal.unicode.utf8.Utf8.runeLen(_r)) : stdgo.GoInt);
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
    static public function _parseTypeExtended( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _n:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.go.types.Types.Type_; var _1 : stdgo.GoInt; } {
        var _n = new stdgo.Slice<stdgo.AnyInterface>(_n.length, 0, ..._n);
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _t:stdgo._internal.go.types.Types.Type_ = (null : stdgo._internal.go.types.Types.Type_), _n1:stdgo.GoInt = (0 : stdgo.GoInt);
        _p._expect((60 : stdgo.GoInt32));
        {
            var __tmp__ = _p._parseTypeAfterAngle(_pkg, ...(_n : Array<stdgo.AnyInterface>));
            _t = __tmp__._0;
            _n1 = __tmp__._1;
        };
        return { _0 : _t, _1 : _n1 };
    }
    @:keep
    static public function _parseTypeAfterAngle( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _n:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.go.types.Types.Type_; var _1 : stdgo.GoInt; } {
        var _n = new stdgo.Slice<stdgo.AnyInterface>(_n.length, 0, ..._n);
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _t:stdgo._internal.go.types.Types.Type_ = (null : stdgo._internal.go.types.Types.Type_), _n1:stdgo.GoInt = (0 : stdgo.GoInt);
        _p._expectKeyword(("type" : stdgo.GoString));
        _n1 = (0 : stdgo.GoInt);
        {
            final __value__ = _p._tok;
            if (__value__ == ((-3 : stdgo.GoInt32))) {
                _n1 = _p._parseInt();
                if (_p._tok == ((62 : stdgo.GoInt32))) {
                    if ((((_p._typeData.length) > (0 : stdgo.GoInt) : Bool) && (_p._typeList[(_n1 : stdgo.GoInt)] == null) : Bool)) {
                        _p._parseSavedType(_pkg, _n1, _n);
                    };
                    _t = _p._typeList[(_n1 : stdgo.GoInt)];
                    if (((_p._typeData.length == (0 : stdgo.GoInt)) && (stdgo.Go.toInterface(_t) == stdgo.Go.toInterface(stdgo.Go.asInterface(_reserved))) : Bool)) {
                        _p._errorf(("invalid type cycle, type %d not yet defined (nlist=%v)" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n));
                    };
                    _p._update(_t, _n);
                } else {
                    _p._reserve(_n1);
                    _t = _p._parseTypeSpec(_pkg, (_n.__append__(stdgo.Go.toInterface(_n1))));
                };
            } else if (__value__ == ((45 : stdgo.GoInt32))) {
                _p._next();
                var _n1:stdgo.GoInt = _p._parseInt();
                _t = _lookupBuiltinType(_n1);
                _p._update(_t, _n);
            } else {
                _p._errorf(("expected type number, got %s (%q)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner.tokenString(_p._tok)), stdgo.Go.toInterface(_p._lit));
                return { _0 : (null : stdgo._internal.go.types.Types.Type_), _1 : (0 : stdgo.GoInt) };
            };
        };
        if (((_t == null) || (stdgo.Go.toInterface(_t) == stdgo.Go.toInterface(stdgo.Go.asInterface(_reserved))) : Bool)) {
            _p._errorf(("internal error: bad return from parseType(%v)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _p._expect((62 : stdgo.GoInt32));
        return { _0 : _t, _1 : _n1 };
    }
    @:keep
    static public function _parseType( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _n:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ {
        var _n = new stdgo.Slice<stdgo.AnyInterface>(_n.length, 0, ..._n);
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._expect((60 : stdgo.GoInt32));
        var __tmp__ = _p._parseTypeAfterAngle(_pkg, ...(_n : Array<stdgo.AnyInterface>)), _t:stdgo._internal.go.types.Types.Type_ = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        return _t;
    }
    @:keep
    static public function _parseTypeSpec( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        {
            final __value__ = _p._tok;
            if (__value__ == ((-6 : stdgo.GoInt32))) {
                return _p._parseNamedType(_nlist);
            } else if (__value__ == ((-2 : stdgo.GoInt32))) {
                {
                    final __value__ = _p._lit;
                    if (__value__ == (("map" : stdgo.GoString))) {
                        return _p._parseMapType(_pkg, _nlist);
                    } else if (__value__ == (("chan" : stdgo.GoString))) {
                        return _p._parseChanType(_pkg, _nlist);
                    } else if (__value__ == (("struct" : stdgo.GoString))) {
                        return _p._parseStructType(_pkg, _nlist);
                    } else if (__value__ == (("interface" : stdgo.GoString))) {
                        return _p._parseInterfaceType(_pkg, _nlist);
                    };
                };
            } else if (__value__ == ((42 : stdgo.GoInt32))) {
                return _p._parsePointerType(_pkg, _nlist);
            } else if (__value__ == ((91 : stdgo.GoInt32))) {
                return _p._parseArrayOrSliceType(_pkg, _nlist);
            } else if (__value__ == ((40 : stdgo.GoInt32))) {
                return stdgo.Go.asInterface(_p._parseFunctionType(_pkg, _nlist));
            };
        };
        _p._errorf(("expected type name or literal, got %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner.tokenString(_p._tok)));
        return (null : stdgo._internal.go.types.Types.Type_);
    }
    @:keep
    static public function _parsePointerType( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._expect((42 : stdgo.GoInt32));
        if (_p._tok == ((-2 : stdgo.GoInt32))) {
            _p._expectKeyword(("any" : stdgo.GoString));
            var _t = stdgo._internal.go.types.Types.typ[((18 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)];
            _p._update(stdgo.Go.asInterface(_t), _nlist);
            return stdgo.Go.asInterface(_t);
        };
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types.Pointer_)) : stdgo.Ref<stdgo._internal.go.types.Types.Pointer_>);
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        {
            var __tmp__ = (stdgo._internal.go.types.Types.newPointer(_p._parseType(_pkg, stdgo.Go.toInterface(stdgo.Go.asInterface(_t)))) : stdgo._internal.go.types.Types.Pointer_)?.__copy__();
            _t._base = __tmp__._base;
        };
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    static public function _parseInterfaceType( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._expectKeyword(("interface" : stdgo.GoString));
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types.Interface)) : stdgo.Ref<stdgo._internal.go.types.Types.Interface>);
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        var _methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types.Func>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types.Func>>);
        var _embeddeds:stdgo.Slice<stdgo._internal.go.types.Types.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types.Type_>);
        _p._expect((123 : stdgo.GoInt32));
        while (((_p._tok != (125 : stdgo.GoInt32)) && (_p._tok != (-1 : stdgo.GoInt32)) : Bool)) {
            if (_p._tok == ((63 : stdgo.GoInt32))) {
                _p._next();
                _embeddeds = (_embeddeds.__append__(_p._parseType(_pkg)));
            } else {
                var _method = _p._parseFunc(_pkg);
                if (_method != null && ((_method : Dynamic).__nil__ == null || !(_method : Dynamic).__nil__)) {
                    _methods = (_methods.__append__(_method));
                };
            };
            _p._expect((59 : stdgo.GoInt32));
        };
        _p._expect((125 : stdgo.GoInt32));
        {
            var __tmp__ = (stdgo._internal.go.types.Types.newInterfaceType(_methods, _embeddeds) : stdgo._internal.go.types.Types.Interface)?.__copy__();
            _t._check = __tmp__._check;
            _t._methods = __tmp__._methods;
            _t._embeddeds = __tmp__._embeddeds;
            _t._embedPos = __tmp__._embedPos;
            _t._implicit = __tmp__._implicit;
            _t._complete = __tmp__._complete;
            _t._tset = __tmp__._tset;
        };
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    static public function _parseFunc( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):stdgo.Ref<stdgo._internal.go.types.Types.Func> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (_p._tok == ((47 : stdgo.GoInt32))) {
            _p._expect((47 : stdgo.GoInt32));
            _p._expect((42 : stdgo.GoInt32));
            if (_p._expect((-2 : stdgo.GoInt32)) == (("asm" : stdgo.GoString))) {
                _p._parseUnquotedString();
            };
            _p._expect((42 : stdgo.GoInt32));
            _p._expect((47 : stdgo.GoInt32));
        };
        var _name:stdgo.GoString = _p._parseName()?.__copy__();
        var _f = stdgo._internal.go.types.Types.newFunc((0 : stdgo._internal.go.token.Token.Pos), _pkg, _name?.__copy__(), _p._parseFunctionType(_pkg, (null : stdgo.Slice<stdgo.AnyInterface>)));
        _p._skipInlineBody();
        if (((_name[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _name[(0 : stdgo.GoInt)] == ((60 : stdgo.GoUInt8)) : Bool) || stdgo._internal.strings.Strings.containsRune(_name?.__copy__(), (36 : stdgo.GoInt32)) : Bool)) {
            return null;
        };
        return _f;
    }
    @:keep
    static public function _parseFunctionType( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.go.types.Types.Signature> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types.Signature)) : stdgo.Ref<stdgo._internal.go.types.Types.Signature>);
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        var __tmp__ = _p._parseParamList(_pkg), _params:stdgo.Ref<stdgo._internal.go.types.Types.Tuple> = __tmp__._0, _isVariadic:Bool = __tmp__._1;
        var _results = _p._parseResultList(_pkg);
        {
            var __tmp__ = (stdgo._internal.go.types.Types.newSignatureType(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types.TypeParam>>), _params, _results, _isVariadic) : stdgo._internal.go.types.Types.Signature)?.__copy__();
            _t._rparams = __tmp__._rparams;
            _t._tparams = __tmp__._tparams;
            _t._scope = __tmp__._scope;
            _t._recv = __tmp__._recv;
            _t._params = __tmp__._params;
            _t._results = __tmp__._results;
            _t._variadic = __tmp__._variadic;
        };
        return _t;
    }
    @:keep
    static public function _parseResultList( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):stdgo.Ref<stdgo._internal.go.types.Types.Tuple> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        {
            final __value__ = _p._tok;
            if (__value__ == ((60 : stdgo.GoInt32))) {
                _p._next();
                if (((_p._tok == (-2 : stdgo.GoInt32)) && (_p._lit == ("inl" : stdgo.GoString)) : Bool)) {
                    return null;
                };
                var __tmp__ = _p._parseTypeAfterAngle(_pkg), _taa:stdgo._internal.go.types.Types.Type_ = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                return stdgo._internal.go.types.Types.newTuple(stdgo._internal.go.types.Types.newParam((0 : stdgo._internal.go.token.Token.Pos), _pkg, stdgo.Go.str()?.__copy__(), _taa));
            } else if (__value__ == ((40 : stdgo.GoInt32))) {
                var __tmp__ = _p._parseParamList(_pkg), _params:stdgo.Ref<stdgo._internal.go.types.Types.Tuple> = __tmp__._0, __1:Bool = __tmp__._1;
                return _params;
            } else {
                return null;
            };
        };
    }
    @:keep
    static public function _parseParamList( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Tuple>; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types.Var>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types.Var>>);
        var _isVariadic:Bool = false;
        _p._expect((40 : stdgo.GoInt32));
        while (((_p._tok != (41 : stdgo.GoInt32)) && (_p._tok != (-1 : stdgo.GoInt32)) : Bool)) {
            if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                _p._expect((44 : stdgo.GoInt32));
            };
            var __tmp__ = _p._parseParam(_pkg), _par:stdgo.Ref<stdgo._internal.go.types.Types.Var> = __tmp__._0, _variadic:Bool = __tmp__._1;
            _list = (_list.__append__(_par));
            if (_variadic) {
                if (_isVariadic) {
                    _p._error(stdgo.Go.toInterface(("... not on final argument" : stdgo.GoString)));
                };
                _isVariadic = true;
            };
        };
        _p._expect((41 : stdgo.GoInt32));
        return { _0 : stdgo._internal.go.types.Types.newTuple(...(_list : Array<stdgo.Ref<stdgo._internal.go.types.Types.Var>>)), _1 : _isVariadic };
    }
    @:keep
    static public function _parseStructType( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._expectKeyword(("struct" : stdgo.GoString));
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types.Struct)) : stdgo.Ref<stdgo._internal.go.types.Types.Struct>);
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        var _fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types.Var>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types.Var>>);
        var _tags:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        _p._expect((123 : stdgo.GoInt32));
        while (((_p._tok != (125 : stdgo.GoInt32)) && (_p._tok != (-1 : stdgo.GoInt32)) : Bool)) {
            var __tmp__ = _p._parseField(_pkg), _field:stdgo.Ref<stdgo._internal.go.types.Types.Var> = __tmp__._0, _tag:stdgo.GoString = __tmp__._1;
            _p._expect((59 : stdgo.GoInt32));
            _fields = (_fields.__append__(_field));
            _tags = (_tags.__append__(_tag?.__copy__()));
        };
        _p._expect((125 : stdgo.GoInt32));
        {
            var __tmp__ = (stdgo._internal.go.types.Types.newStruct(_fields, _tags) : stdgo._internal.go.types.Types.Struct)?.__copy__();
            _t._fields = __tmp__._fields;
            _t._tags = __tmp__._tags;
        };
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    static public function _parseChanType( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._expectKeyword(("chan" : stdgo.GoString));
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types.Chan)) : stdgo.Ref<stdgo._internal.go.types.Types.Chan>);
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        var _dir:stdgo._internal.go.types.Types.ChanDir = (0 : stdgo._internal.go.types.Types.ChanDir);
        {
            final __value__ = _p._tok;
            if (__value__ == ((45 : stdgo.GoInt32))) {
                _p._next();
                _p._expect((60 : stdgo.GoInt32));
                _dir = (1 : stdgo._internal.go.types.Types.ChanDir);
            } else if (__value__ == ((60 : stdgo.GoInt32))) {
                if (_p._scanner.peek() == ((45 : stdgo.GoInt32))) {
                    _p._next();
                    _p._expect((45 : stdgo.GoInt32));
                    _dir = (2 : stdgo._internal.go.types.Types.ChanDir);
                };
            };
        };
        {
            var __tmp__ = (stdgo._internal.go.types.Types.newChan(_dir, _p._parseType(_pkg)) : stdgo._internal.go.types.Types.Chan)?.__copy__();
            _t._dir = __tmp__._dir;
            _t._elem = __tmp__._elem;
        };
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    static public function _parseMapType( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._expectKeyword(("map" : stdgo.GoString));
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types.Map_)) : stdgo.Ref<stdgo._internal.go.types.Types.Map_>);
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        _p._expect((91 : stdgo.GoInt32));
        var _key:stdgo._internal.go.types.Types.Type_ = _p._parseType(_pkg);
        _p._expect((93 : stdgo.GoInt32));
        var _elem:stdgo._internal.go.types.Types.Type_ = _p._parseType(_pkg);
        {
            var __tmp__ = (stdgo._internal.go.types.Types.newMap(_key, _elem) : stdgo._internal.go.types.Types.Map_)?.__copy__();
            _t._key = __tmp__._key;
            _t._elem = __tmp__._elem;
        };
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    static public function _parseArrayOrSliceType( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._expect((91 : stdgo.GoInt32));
        if (_p._tok == ((93 : stdgo.GoInt32))) {
            _p._next();
            var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types.Slice_)) : stdgo.Ref<stdgo._internal.go.types.Types.Slice_>);
            _p._update(stdgo.Go.asInterface(_t), _nlist);
            {
                var __tmp__ = (stdgo._internal.go.types.Types.newSlice(_p._parseType(_pkg)) : stdgo._internal.go.types.Types.Slice_)?.__copy__();
                _t._elem = __tmp__._elem;
            };
            return stdgo.Go.asInterface(_t);
        };
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types.Array_)) : stdgo.Ref<stdgo._internal.go.types.Types.Array_>);
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        var _len:stdgo.GoInt64 = _p._parseInt64();
        _p._expect((93 : stdgo.GoInt32));
        {
            var __tmp__ = (stdgo._internal.go.types.Types.newArray(_p._parseType(_pkg), _len) : stdgo._internal.go.types.Types.Array_)?.__copy__();
            _t._len = __tmp__._len;
            _t._elem = __tmp__._elem;
        };
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    static public function _parseInt( _p:stdgo.Ref<T_parser>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _lit:stdgo.GoString = _p._expect((-3 : stdgo.GoInt32))?.__copy__();
        var __tmp__ = stdgo._internal.strconv.Strconv.parseInt(_lit?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _p._error(stdgo.Go.toInterface(_err));
        };
        return (_n : stdgo.GoInt);
    }
    @:keep
    static public function _parseInt64( _p:stdgo.Ref<T_parser>):stdgo.GoInt64 {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _lit:stdgo.GoString = _p._expect((-3 : stdgo.GoInt32))?.__copy__();
        var __tmp__ = stdgo._internal.strconv.Strconv.parseInt(_lit?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _p._error(stdgo.Go.toInterface(_err));
        };
        return _n;
    }
    @:keep
    static public function _parseNamedType( _p:stdgo.Ref<T_parser>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types.Type_ {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var __tmp__ = _p._parseExportedName(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        var _scope = _pkg.scope();
        var _obj:stdgo._internal.go.types.Types.Object = _scope.lookup(_name?.__copy__());
        if (((_obj != null) && (_obj.type() == null) : Bool)) {
            _p._errorf(("%v has nil type" : stdgo.GoString), stdgo.Go.toInterface(_obj));
        };
        if (((_p._tok == (-2 : stdgo.GoInt32)) && (_p._lit == ("notinheap" : stdgo.GoString)) : Bool)) {
            _p._next();
        };
        if (_p._tok == ((61 : stdgo.GoInt32))) {
            _p._next();
            _p._aliases[(stdgo.Go.typeAssert((_nlist[((_nlist.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt)] = _name?.__copy__();
            if (_obj != null) {
                var _t:stdgo._internal.go.types.Types.Type_ = _obj.type();
                _p._update(_t, _nlist);
                _p._parseType(_pkg);
                return _t;
            };
            var _t:stdgo._internal.go.types.Types.Type_ = _p._parseType(_pkg, ...(_nlist : Array<stdgo.AnyInterface>));
            _obj = stdgo.Go.asInterface(stdgo._internal.go.types.Types.newTypeName((0 : stdgo._internal.go.token.Token.Pos), _pkg, _name?.__copy__(), _t));
            _scope.insert(_obj);
            return _t;
        };
        if (_obj == null) {
            var _tname = stdgo._internal.go.types.Types.newTypeName((0 : stdgo._internal.go.token.Token.Pos), _pkg, _name?.__copy__(), (null : stdgo._internal.go.types.Types.Type_));
            stdgo._internal.go.types.Types.newNamed(_tname, (null : stdgo._internal.go.types.Types.Type_), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types.Func>>));
            _scope.insert(stdgo.Go.asInterface(_tname));
            _obj = stdgo.Go.asInterface(_tname);
        };
        var _t:stdgo._internal.go.types.Types.Type_ = _obj.type();
        _p._update(_t, _nlist);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types.Named>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types.Named>), _1 : false };
        }, _nt = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            var _pt:stdgo._internal.go.types.Types.Type_ = _p._parseType(_pkg);
            if (stdgo.Go.toInterface(_pt) != (stdgo.Go.toInterface(_t))) {
                _p._error(stdgo.Go.toInterface(("unexpected underlying type for non-named TypeName" : stdgo.GoString)));
            };
            return _t;
        };
        var _underlying:stdgo._internal.go.types.Types.Type_ = _p._parseType(_pkg);
        if (_nt.underlying() == null) {
            if (_underlying.underlying() == null) {
                var _fix:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_fixupRecord = ({ _toUpdate : _nt, _target : _underlying } : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_fixupRecord);
                _p._fixups = (_p._fixups.__append__(_fix?.__copy__()));
            } else {
                _nt.setUnderlying(_underlying.underlying());
            };
        };
        if (_p._tok == ((10 : stdgo.GoInt32))) {
            _p._next();
            while (_p._tok == ((-2 : stdgo.GoInt32))) {
                _p._expectKeyword(("func" : stdgo.GoString));
                if (_p._tok == ((47 : stdgo.GoInt32))) {
                    _p._expect((47 : stdgo.GoInt32));
                    _p._expect((42 : stdgo.GoInt32));
                    if (_p._expect((-2 : stdgo.GoInt32)) == (("asm" : stdgo.GoString))) {
                        _p._parseUnquotedString();
                    };
                    _p._expect((42 : stdgo.GoInt32));
                    _p._expect((47 : stdgo.GoInt32));
                };
                _p._expect((40 : stdgo.GoInt32));
                var __tmp__ = _p._parseParam(_pkg), _receiver:stdgo.Ref<stdgo._internal.go.types.Types.Var> = __tmp__._0, __16:Bool = __tmp__._1;
                _p._expect((41 : stdgo.GoInt32));
                var _name:stdgo.GoString = _p._parseName()?.__copy__();
                var __tmp__ = _p._parseParamList(_pkg), _params:stdgo.Ref<stdgo._internal.go.types.Types.Tuple> = __tmp__._0, _isVariadic:Bool = __tmp__._1;
                var _results = _p._parseResultList(_pkg);
                _p._skipInlineBody();
                _p._expectEOL();
                var _sig = stdgo._internal.go.types.Types.newSignatureType(_receiver, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types.TypeParam>>), _params, _results, _isVariadic);
                _nt.addMethod(stdgo._internal.go.types.Types.newFunc((0 : stdgo._internal.go.token.Token.Pos), _pkg, _name?.__copy__(), _sig));
            };
        };
        return stdgo.Go.asInterface(_nt);
    }
    @:keep
    static public function _update( _p:stdgo.Ref<T_parser>, _t:stdgo._internal.go.types.Types.Type_, _nlist:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (stdgo.Go.toInterface(_t) == (stdgo.Go.toInterface(stdgo.Go.asInterface(_reserved)))) {
            _p._errorf(("internal error: update(%v) invoked on reserved" : stdgo.GoString), stdgo.Go.toInterface(_nlist));
        };
        if (_t == null) {
            _p._errorf(("internal error: update(%v) invoked on nil" : stdgo.GoString), stdgo.Go.toInterface(_nlist));
        };
        for (__0 => _n in _nlist) {
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt))) {
                    var _n:stdgo.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                    if (stdgo.Go.toInterface(_p._typeList[(_n : stdgo.GoInt)]) == (stdgo.Go.toInterface(_t))) {
                        continue;
                    };
                    if (stdgo.Go.toInterface(_p._typeList[(_n : stdgo.GoInt)]) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_reserved)))) {
                        _p._errorf(("internal error: update(%v): %d not reserved" : stdgo.GoString), stdgo.Go.toInterface(_nlist), stdgo.Go.toInterface(_n));
                    };
                    _p._typeList[(_n : stdgo.GoInt)] = _t;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types.Pointer_>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.types.Types.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types.Pointer_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types.Pointer_>) : __type__.__underlying__().value;
                    if (stdgo.Go.toInterface((_n : stdgo._internal.go.types.Types.Pointer_)) != stdgo.Go.toInterface(((new stdgo._internal.go.types.Types.Pointer_() : stdgo._internal.go.types.Types.Pointer_)))) {
                        var _elem:stdgo._internal.go.types.Types.Type_ = _n.elem();
                        if (stdgo.Go.toInterface(_elem) == (stdgo.Go.toInterface(_t))) {
                            continue;
                        };
                        _p._errorf(("internal error: update: pointer already set to %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_elem), stdgo.Go.toInterface(_t));
                    };
                    {
                        var __tmp__ = (stdgo._internal.go.types.Types.newPointer(_t) : stdgo._internal.go.types.Types.Pointer_)?.__copy__();
                        _n._base = __tmp__._base;
                    };
                } else {
                    var _n:stdgo.AnyInterface = __type__?.__underlying__();
                    _p._errorf(("internal error: %T on nlist" : stdgo.GoString), _n);
                };
            };
        };
    }
    @:keep
    static public function _reserve( _p:stdgo.Ref<T_parser>, _n:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if ((_p._typeData.length) == ((0 : stdgo.GoInt))) {
            if (_n != ((_p._typeList.length))) {
                _p._errorf(("invalid type number %d (out of sync)" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
            _p._typeList = (_p._typeList.__append__(stdgo.Go.asInterface(_reserved)));
        } else {
            if (_p._typeList[(_n : stdgo.GoInt)] != null) {
                _p._errorf(("previously visited type number %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
            _p._typeList[(_n : stdgo.GoInt)] = stdgo.Go.asInterface(_reserved);
        };
    }
    @:keep
    static public function _parseConst( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):stdgo.Ref<stdgo._internal.go.types.Types.Const> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _name:stdgo.GoString = _p._parseName()?.__copy__();
        var _typ:stdgo._internal.go.types.Types.Type_ = (null : stdgo._internal.go.types.Types.Type_);
        if (_p._tok == ((60 : stdgo.GoInt32))) {
            _typ = _p._parseType(_pkg);
        };
        _p._expect((61 : stdgo.GoInt32));
        var __tmp__ = _p._parseConstValue(_pkg), _val:stdgo._internal.go.constant.Constant.Value = __tmp__._0, _vtyp:stdgo._internal.go.types.Types.Type_ = __tmp__._1;
        if (_typ == null) {
            _typ = _vtyp;
        };
        return stdgo._internal.go.types.Types.newConst((0 : stdgo._internal.go.token.Token.Pos), _pkg, _name?.__copy__(), _typ, _val);
    }
    @:keep
    static public function _parseConstValue( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):{ var _0 : stdgo._internal.go.constant.Constant.Value; var _1 : stdgo._internal.go.types.Types.Type_; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _val:stdgo._internal.go.constant.Constant.Value = (null : stdgo._internal.go.constant.Constant.Value), _typ:stdgo._internal.go.types.Types.Type_ = (null : stdgo._internal.go.types.Types.Type_);
        if (_p._tok == ((36 : stdgo.GoInt32))) {
            _p._next();
            if (_p._tok != ((-2 : stdgo.GoInt32))) {
                _p._errorf(("expected identifier after \'$\', got %s (%q)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner.tokenString(_p._tok)), stdgo.Go.toInterface(_p._lit));
            };
        };
        {
            final __value__ = _p._tok;
            if (__value__ == ((-6 : stdgo.GoInt32))) {
                var _str:stdgo.GoString = _p._parseString()?.__copy__();
                _val = stdgo._internal.go.constant.Constant.makeString(_str?.__copy__());
                _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types.typ[((24 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)]);
                return { _0 : _val, _1 : _typ };
            } else if (__value__ == ((-2 : stdgo.GoInt32))) {
                var _b:Bool = false;
                {
                    final __value__ = _p._lit;
                    if (__value__ == (("false" : stdgo.GoString))) {} else if (__value__ == (("true" : stdgo.GoString))) {
                        _b = true;
                    } else if (__value__ == (("convert" : stdgo.GoString))) {
                        return _p._parseConversion(_pkg);
                    } else {
                        _p._errorf(("expected const value, got %s (%q)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner.tokenString(_p._tok)), stdgo.Go.toInterface(_p._lit));
                    };
                };
                _p._next();
                _val = stdgo._internal.go.constant.Constant.makeBool(_b);
                _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types.typ[((19 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)]);
                return { _0 : _val, _1 : _typ };
            };
        };
        var _sign:stdgo.GoString = stdgo.Go.str()?.__copy__();
        if (_p._tok == ((45 : stdgo.GoInt32))) {
            _p._next();
            _sign = ("-" : stdgo.GoString);
        };
        {
            final __value__ = _p._tok;
            if (__value__ == ((-3 : stdgo.GoInt32))) {
                _val = stdgo._internal.go.constant.Constant.makeFromLiteral((_sign + _p._lit?.__copy__() : stdgo.GoString)?.__copy__(), (5 : stdgo._internal.go.token.Token.Token), (0u32 : stdgo.GoUInt));
                if (_val == null) {
                    _p._error(stdgo.Go.toInterface(("could not parse integer literal" : stdgo.GoString)));
                };
                _p._next();
                if (_p._tok == ((39 : stdgo.GoInt32))) {
                    _p._next();
                    _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types.typ[((21 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)]);
                } else {
                    _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types.typ[((20 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)]);
                };
            } else if (__value__ == ((-4 : stdgo.GoInt32))) {
                var _re:stdgo.GoString = (_sign + _p._lit?.__copy__() : stdgo.GoString)?.__copy__();
                _p._next();
                var _im:stdgo.GoString = ("" : stdgo.GoString);
                {
                    final __value__ = _p._tok;
                    if (__value__ == ((43 : stdgo.GoInt32))) {
                        _p._next();
                        _im = _p._expect((-4 : stdgo.GoInt32))?.__copy__();
                    } else if (__value__ == ((45 : stdgo.GoInt32))) {
                        _p._next();
                        _im = (("-" : stdgo.GoString) + _p._expect((-4 : stdgo.GoInt32))?.__copy__() : stdgo.GoString)?.__copy__();
                    } else if (__value__ == ((-2 : stdgo.GoInt32))) {
                        _im = _re?.__copy__();
                        _re = ("0" : stdgo.GoString);
                    } else {
                        _val = stdgo._internal.go.constant.Constant.makeFromLiteral(_re?.__copy__(), (6 : stdgo._internal.go.token.Token.Token), (0u32 : stdgo.GoUInt));
                        if (_val == null) {
                            _p._error(stdgo.Go.toInterface(("could not parse float literal" : stdgo.GoString)));
                        };
                        _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types.typ[((22 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)]);
                        return { _0 : _val, _1 : _typ };
                    };
                };
                _p._expectKeyword(("i" : stdgo.GoString));
                var _reval:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeFromLiteral(_re?.__copy__(), (6 : stdgo._internal.go.token.Token.Token), (0u32 : stdgo.GoUInt));
                if (_reval == null) {
                    _p._error(stdgo.Go.toInterface(("could not parse real component of complex literal" : stdgo.GoString)));
                };
                var _imval:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeFromLiteral((_im + ("i" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (7 : stdgo._internal.go.token.Token.Token), (0u32 : stdgo.GoUInt));
                if (_imval == null) {
                    _p._error(stdgo.Go.toInterface(("could not parse imag component of complex literal" : stdgo.GoString)));
                };
                _val = stdgo._internal.go.constant.Constant.binaryOp(_reval, (12 : stdgo._internal.go.token.Token.Token), _imval);
                _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types.typ[((23 : stdgo._internal.go.types.Types.BasicKind) : stdgo.GoInt)]);
            } else {
                _p._errorf(("expected const value, got %s (%q)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner.tokenString(_p._tok)), stdgo.Go.toInterface(_p._lit));
            };
        };
        return { _0 : _val, _1 : _typ };
    }
    @:keep
    static public function _parseConversion( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):{ var _0 : stdgo._internal.go.constant.Constant.Value; var _1 : stdgo._internal.go.types.Types.Type_; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _val:stdgo._internal.go.constant.Constant.Value = (null : stdgo._internal.go.constant.Constant.Value), _typ:stdgo._internal.go.types.Types.Type_ = (null : stdgo._internal.go.types.Types.Type_);
        _p._expectKeyword(("convert" : stdgo.GoString));
        _p._expect((40 : stdgo.GoInt32));
        _typ = _p._parseType(_pkg);
        _p._expect((44 : stdgo.GoInt32));
        {
            var __tmp__ = _p._parseConstValue(_pkg);
            _val = __tmp__._0;
        };
        _p._expect((41 : stdgo.GoInt32));
        return { _0 : _val, _1 : _typ };
    }
    @:keep
    static public function _parseVar( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):stdgo.Ref<stdgo._internal.go.types.Types.Var> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _name:stdgo.GoString = _p._parseName()?.__copy__();
        var _v = stdgo._internal.go.types.Types.newVar((0 : stdgo._internal.go.token.Token.Pos), _pkg, _name?.__copy__(), _p._parseType(_pkg));
        if (((_name[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) || (_name[(0 : stdgo.GoInt)] == (60 : stdgo.GoUInt8)) : Bool)) {
            return null;
        };
        return _v;
    }
    @:keep
    static public function _parseParam( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Var>; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _param:stdgo.Ref<stdgo._internal.go.types.Types.Var> = (null : stdgo.Ref<stdgo._internal.go.types.Types.Var>), _isVariadic:Bool = false;
        var _name:stdgo.GoString = _p._parseName()?.__copy__();
        if (((stdgo._internal.strings.Strings.hasPrefix(_name?.__copy__(), ("p." : stdgo.GoString)) || stdgo._internal.strings.Strings.hasPrefix(_name?.__copy__(), ("r." : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings.hasPrefix(_name?.__copy__(), ("$ret" : stdgo.GoString)) : Bool)) {
            _name = stdgo.Go.str()?.__copy__();
        };
        if (((_p._tok == (60 : stdgo.GoInt32)) && (_p._scanner.peek() == (101 : stdgo.GoInt32)) : Bool)) {
            _p._next();
            _p._expectKeyword(("esc" : stdgo.GoString));
            _p._expect((58 : stdgo.GoInt32));
            _p._expect((-3 : stdgo.GoInt32));
            _p._expect((62 : stdgo.GoInt32));
        };
        if (_p._tok == ((46 : stdgo.GoInt32))) {
            _p._next();
            _p._expect((46 : stdgo.GoInt32));
            _p._expect((46 : stdgo.GoInt32));
            _isVariadic = true;
        };
        var _typ:stdgo._internal.go.types.Types.Type_ = _p._parseType(_pkg);
        if (_isVariadic) {
            _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types.newSlice(_typ));
        };
        _param = stdgo._internal.go.types.Types.newParam((0 : stdgo._internal.go.token.Token.Pos), _pkg, _name?.__copy__(), _typ);
        return { _0 : _param, _1 : _isVariadic };
    }
    @:keep
    static public function _parseField( _p:stdgo.Ref<T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Var>; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _field:stdgo.Ref<stdgo._internal.go.types.Types.Var> = (null : stdgo.Ref<stdgo._internal.go.types.Types.Var>), _tag:stdgo.GoString = ("" : stdgo.GoString);
        var _name:stdgo.GoString = _p._parseName()?.__copy__();
        var __tmp__ = _p._parseTypeExtended(_pkg), _typ:stdgo._internal.go.types.Types.Type_ = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        var _anon:Bool = false;
        if (_name == (stdgo.Go.str())) {
            _anon = true;
            {
                var __tmp__ = (_p._aliases != null && _p._aliases.exists(_n) ? { _0 : _p._aliases[_n], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _aname:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _name = _aname?.__copy__();
                } else {
                    {
                        final __type__ = _deref(_typ);
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types.Basic>))) {
                            var _typ:stdgo.Ref<stdgo._internal.go.types.Types.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types.Basic>) : __type__.__underlying__().value;
                            _name = _typ.name()?.__copy__();
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types.Named>))) {
                            var _typ:stdgo.Ref<stdgo._internal.go.types.Types.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types.Named>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types.Named>) : __type__.__underlying__().value;
                            _name = _typ._check._environment._decl._fdecl.name.obj().name()?.__copy__();
                        } else {
                            var _typ:stdgo._internal.go.types.Types.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types.Type_) : cast __type__;
                            _p._error(stdgo.Go.toInterface(("embedded field expected" : stdgo.GoString)));
                        };
                    };
                };
            };
        };
        _field = stdgo._internal.go.types.Types.newField((0 : stdgo._internal.go.token.Token.Pos), _pkg, _name?.__copy__(), _typ, _anon);
        if (_p._tok == ((-6 : stdgo.GoInt32))) {
            _tag = _p._parseString()?.__copy__();
        };
        return { _0 : _field, _1 : _tag };
    }
    @:keep
    static public function _parseName( _p:stdgo.Ref<T_parser>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (_p._tok == ((63 : stdgo.GoInt32))) {
            _p._next();
            return stdgo.Go.str()?.__copy__();
        };
        var __tmp__ = _p._parseUnquotedQualifiedName(), __0:stdgo.GoString = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        return _name?.__copy__();
    }
    @:keep
    static public function _parseExportedName( _p:stdgo.Ref<T_parser>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types.Package>; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _pkg:stdgo.Ref<stdgo._internal.go.types.Types.Package> = (null : stdgo.Ref<stdgo._internal.go.types.Types.Package>), _name:stdgo.GoString = ("" : stdgo.GoString);
        var __tmp__ = _p._parseQualifiedName(), _path:stdgo.GoString = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        var _pkgname:stdgo.GoString = ("" : stdgo.GoString);
        if (_p._tok == ((-6 : stdgo.GoInt32))) {
            _pkgname = _p._parseString()?.__copy__();
        };
        _pkg = _p._getPkg(_path?.__copy__(), _pkgname?.__copy__());
        if (_pkg == null || (_pkg : Dynamic).__nil__) {
            _p._errorf(("package %s (path = %q) not found" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_path));
        };
        return { _0 : _pkg, _1 : _name };
    }
    @:keep
    static public function _getPkg( _p:stdgo.Ref<T_parser>, _pkgpath:stdgo.GoString, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types.Package> {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (_pkgpath == (("unsafe" : stdgo.GoString))) {
            return stdgo._internal.go.types.Types.unsafe;
        };
        var _pkg = (_p._imports[_pkgpath] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types.Package>));
        if (((_pkg == null) || (_pkg : Dynamic).__nil__ && (_name != stdgo.Go.str()) : Bool)) {
            _pkg = stdgo._internal.go.types.Types.newPackage(_pkgpath?.__copy__(), _name?.__copy__());
            _p._imports[_pkgpath] = _pkg;
        };
        return _pkg;
    }
    @:keep
    static public function _parseQualifiedNameStr( _p:stdgo.Ref<T_parser>, _unquotedName:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _pkgpath:stdgo.GoString = ("" : stdgo.GoString), _name:stdgo.GoString = ("" : stdgo.GoString);
        var _parts = stdgo._internal.strings.Strings.split(_unquotedName?.__copy__(), ("." : stdgo.GoString));
        if (_parts[(0 : stdgo.GoInt)] == (stdgo.Go.str())) {
            _parts = (_parts.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        {
            final __value__ = (_parts.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                _p._errorf(("malformed qualified name: %q" : stdgo.GoString), stdgo.Go.toInterface(_unquotedName));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _pkgpath = _p._pkgpath?.__copy__();
                _name = _parts[(0 : stdgo.GoInt)]?.__copy__();
            } else {
                _pkgpath = stdgo._internal.strings.Strings.join((_parts.__slice__((0 : stdgo.GoInt), ((_parts.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), ("." : stdgo.GoString))?.__copy__();
                _name = _parts[((_parts.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
            };
        };
        return { _0 : _pkgpath, _1 : _name };
    }
    @:keep
    static public function _parseUnquotedQualifiedName( _p:stdgo.Ref<T_parser>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _path:stdgo.GoString = ("" : stdgo.GoString), _name:stdgo.GoString = ("" : stdgo.GoString);
        return _p._parseQualifiedNameStr(_p._parseUnquotedString()?.__copy__());
    }
    @:keep
    static public function _parseQualifiedName( _p:stdgo.Ref<T_parser>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _path:stdgo.GoString = ("" : stdgo.GoString), _name:stdgo.GoString = ("" : stdgo.GoString);
        return _p._parseQualifiedNameStr(_p._parseString()?.__copy__());
    }
    @:keep
    static public function _next( _p:stdgo.Ref<T_parser>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._tok = _p._scanner.scan();
        {
            final __value__ = _p._tok;
            if (__value__ == ((-2 : stdgo.GoInt32)) || __value__ == ((-3 : stdgo.GoInt32)) || __value__ == ((-4 : stdgo.GoInt32)) || __value__ == ((-6 : stdgo.GoInt32)) || __value__ == ((183 : stdgo.GoInt32))) {
                _p._lit = _p._scanner.tokenText()?.__copy__();
            } else {
                _p._lit = stdgo.Go.str()?.__copy__();
            };
        };
    }
    @:keep
    static public function _parseUnquotedString( _p:stdgo.Ref<T_parser>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (_p._tok == ((-1 : stdgo.GoInt32))) {
            _p._error(stdgo.Go.toInterface(("unexpected EOF" : stdgo.GoString)));
        };
        var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _b.writeString(_p._scanner.tokenText()?.__copy__());
        {
            var _ch:stdgo.GoInt32 = _p._scanner.peek();
            stdgo.Go.cfor((((_ch != ((10 : stdgo.GoInt32)) && _ch != ((59 : stdgo.GoInt32)) : Bool) && _ch != ((-1 : stdgo.GoInt32)) : Bool) && ((_p._scanner.whitespace & (((1i64 : stdgo.GoUInt64) << (_ch : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool), _ch = _p._scanner.peek(), {
                _b.writeRune(_ch);
                _p._scanner.next();
            });
        };
        _p._next();
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _parseString( _p:stdgo.Ref<T_parser>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var __tmp__ = stdgo._internal.strconv.Strconv.unquote(_p._expect((-6 : stdgo.GoInt32))?.__copy__()), _str:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _p._error(stdgo.Go.toInterface(_err));
        };
        return _str?.__copy__();
    }
    @:keep
    static public function _expectKeyword( _p:stdgo.Ref<T_parser>, _keyword:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _lit:stdgo.GoString = _p._expect((-2 : stdgo.GoInt32))?.__copy__();
        if (_lit != (_keyword)) {
            _p._errorf(("expected keyword %s, got %q" : stdgo.GoString), stdgo.Go.toInterface(_keyword), stdgo.Go.toInterface(_lit));
        };
    }
    @:keep
    static public function _expectEOL( _p:stdgo.Ref<T_parser>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        if (((_p._version == ("v1" : stdgo.GoString)) || (_p._version == ("v2" : stdgo.GoString)) : Bool)) {
            _p._expect((59 : stdgo.GoInt32));
        };
        _p._expect((10 : stdgo.GoInt32));
    }
    @:keep
    static public function _expect( _p:stdgo.Ref<T_parser>, _tok:stdgo.GoRune):stdgo.GoString {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        var _lit:stdgo.GoString = _p._lit?.__copy__();
        if (_p._tok != (_tok)) {
            _p._errorf(("expected %s, got %s (%s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner.tokenString(_tok)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner.tokenString(_p._tok)), stdgo.Go.toInterface(_lit));
        };
        _p._next();
        return _lit?.__copy__();
    }
    @:keep
    static public function _errorf( _p:stdgo.Ref<T_parser>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._error(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.errorf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))));
    }
    @:keep
    static public function _error( _p:stdgo.Ref<T_parser>, _err:stdgo.AnyInterface):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = stdgo.Go.toInterface(stdgo._internal.errors.Errors.new_(_s?.__copy__()));
            };
        };
        throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_importError(_p._scanner.pos()?.__copy__(), (stdgo.Go.typeAssert((_err : stdgo.Error)) : stdgo.Error)) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_importError)));
    }
    @:keep
    static public function _initScanner( _p:stdgo.Ref<T_parser>, _filename:stdgo.GoString, _src:stdgo._internal.io.Io.Reader):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._scanner.init(_src);
        _p._scanner.error = function(__0:stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>, _msg:stdgo.GoString):Void {
            _p._error(stdgo.Go.toInterface(_msg));
        };
        _p._scanner.mode = (92u32 : stdgo.GoUInt);
        _p._scanner.whitespace = (4294967808i64 : stdgo.GoUInt64);
        _p._scanner.position.filename = _filename?.__copy__();
        _p._next();
    }
    @:keep
    static public function _init( _p:stdgo.Ref<T_parser>, _filename:stdgo.GoString, _src:stdgo._internal.io.Io.Reader, _imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types.Package>>):Void {
        @:recv var _p:stdgo.Ref<T_parser> = _p;
        _p._scanner = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner.Scanner>);
        _p._initScanner(_filename?.__copy__(), _src);
        _p._imports = _imports;
        _p._aliases = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
        _p._typeList = (new stdgo.Slice<stdgo._internal.go.types.Types.Type_>((1 : stdgo.GoInt).toBasic(), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.types.Types.Type_>);
    }
}
@:structInit class T__parseTypes___localname___typeOffset_26108 {
    public var _offset : stdgo.GoInt = 0;
    public var _length : stdgo.GoInt = 0;
    public function new(?_offset:stdgo.GoInt, ?_length:stdgo.GoInt) {
        if (_offset != null) this._offset = _offset;
        if (_length != null) this._length = _length;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__parseTypes___localname___typeOffset_26108(_offset, _length);
    }
}
class T_importError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_importError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_importError_asInterface) class T_importError_static_extension {
    @:keep
    static public function error( _e:T_importError):stdgo.GoString {
        @:recv var _e:T_importError = _e?.__copy__();
        return stdgo._internal.fmt.Fmt.sprintf(("import error %s (byte offset = %d): %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_e._pos)), stdgo.Go.toInterface(_e._pos.offset), stdgo.Go.toInterface(_e._err))?.__copy__();
    }
}
