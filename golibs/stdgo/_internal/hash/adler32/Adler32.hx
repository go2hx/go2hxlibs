package stdgo._internal.hash.adler32;
private var __go2hxdoc__package : Bool;
final _mod : stdgo.GoUInt64 = (65521i64 : stdgo.GoUInt64);
final _nmax : stdgo.GoUInt64 = (5552i64 : stdgo.GoUInt64);
final size : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
final _magic : stdgo.GoString = stdgo.Go.str("adl", 1);
final _marshaledSize : stdgo.GoInt = (8 : stdgo.GoInt);
@:named @:using(stdgo._internal.hash.adler32.Adler32.T_digest_static_extension) typedef T_digest = stdgo.GoUInt32;
function new_():stdgo._internal.hash.Hash.Hash32 {
        var _d = stdgo.Go.pointer(((0 : stdgo.GoUInt32) : stdgo._internal.hash.adler32.Adler32.T_digest));
        _d.value.reset(_d);
        return stdgo.Go.asInterface(_d);
    }
function _appendUint32(_b:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte> {
        var _a = (new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[((_x >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), (_x : stdgo.GoByte)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        return (_b.__append__(...((_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
    }
function _readUint32(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 {
        var __blank__ = _b[(3 : stdgo.GoInt)];
        return ((((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
function _update(_d:T_digest, _p:stdgo.Slice<stdgo.GoByte>):T_digest {
        var __0 = ((_d & (65535u32 : stdgo._internal.hash.adler32.Adler32.T_digest) : stdgo._internal.hash.adler32.Adler32.T_digest) : stdgo.GoUInt32), __1 = ((_d >> (16i64 : stdgo.GoUInt64) : stdgo._internal.hash.adler32.Adler32.T_digest) : stdgo.GoUInt32);
var _s2 = __1, _s1 = __0;
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            var _q:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (((_p.length) > (5552 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = (_p.__slice__(0, (5552 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    final __tmp__1 = (_p.__slice__((5552 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _p = __tmp__0;
                    _q = __tmp__1;
                };
            };
            while (((_p.length) >= (4 : stdgo.GoInt) : Bool)) {
                _s1 = (_s1 + ((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _s1 = (_s1 + ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _s1 = (_s1 + ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _s1 = (_s1 + ((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
                _p = (_p.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            for (__0 => _x in _p) {
                _s1 = (_s1 + ((_x : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _s2 = (_s2 + (_s1) : stdgo.GoUInt32);
            };
            _s1 = (_s1 % ((65521u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _s2 = (_s2 % ((65521u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _p = _q;
        };
        return (((_s2 << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | _s1 : stdgo.GoUInt32) : T_digest);
    }
function checksum(_data:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 {
        return (_update((1u32 : stdgo._internal.hash.adler32.Adler32.T_digest), _data) : stdgo.GoUInt32);
    }
class T_digest_asInterface {
    @:keep
    @:pointer
    public dynamic function sum(_in:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return __self__.value.sum(__self__, _in);
    @:keep
    @:pointer
    public dynamic function sum32():stdgo.GoUInt32 return __self__.value.sum32(__self__);
    @:keep
    @:pointer
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(__self__, _p);
    @:keep
    @:pointer
    public dynamic function unmarshalBinary(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.unmarshalBinary(__self__, _b);
    @:keep
    @:pointer
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalBinary(__self__);
    @:keep
    @:pointer
    public dynamic function blockSize():stdgo.GoInt return __self__.value.blockSize(__self__);
    @:keep
    @:pointer
    public dynamic function size():stdgo.GoInt return __self__.value.size(__self__);
    @:keep
    @:pointer
    public dynamic function reset():Void __self__.value.reset(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_digest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.hash.adler32.Adler32.T_digest_asInterface) class T_digest_static_extension {
    @:keep
    @:pointer
    static public function sum(____:T_digest,  _d:stdgo.Pointer<T_digest>, _in:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        var _s = (_d.value : stdgo.GoUInt32);
        return (_in.__append__(((_s >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_s >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_s >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), (_s : stdgo.GoByte)));
    }
    @:keep
    @:pointer
    static public function sum32(____:T_digest,  _d:stdgo.Pointer<T_digest>):stdgo.GoUInt32 {
        return (_d.value : stdgo.GoUInt32);
    }
    @:keep
    @:pointer
    static public function write(____:T_digest,  _d:stdgo.Pointer<T_digest>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _nn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _d.value = _update(_d.value, _p);
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function unmarshalBinary(____:T_digest,  _d:stdgo.Pointer<T_digest>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        if ((((_b.length) < (stdgo.Go.str("adl", 1).length) : Bool) || (((_b.__slice__(0, (stdgo.Go.str("adl", 1).length)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != stdgo.Go.str("adl", 1)) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("hash/adler32: invalid hash state identifier" : stdgo.GoString));
        };
        if ((_b.length) != ((8 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors.new_(("hash/adler32: invalid hash state size" : stdgo.GoString));
        };
        _d.value = (_readUint32((_b.__slice__((stdgo.Go.str("adl", 1).length)) : stdgo.Slice<stdgo.GoUInt8>)) : T_digest);
        return (null : stdgo.Error);
    }
    @:keep
    @:pointer
    static public function marshalBinary(____:T_digest,  _d:stdgo.Pointer<T_digest>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...(stdgo.Go.str("adl", 1) : Array<stdgo.GoUInt8>)));
        _b = _appendUint32(_b, (_d.value : stdgo.GoUInt32));
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:pointer
    static public function blockSize(____:T_digest,  _d:stdgo.Pointer<T_digest>):stdgo.GoInt {
        return (4 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    static public function size(____:T_digest,  _d:stdgo.Pointer<T_digest>):stdgo.GoInt {
        return (4 : stdgo.GoInt);
    }
    @:keep
    @:pointer
    static public function reset(____:T_digest,  _d:stdgo.Pointer<T_digest>):Void {
        _d.value = (1u32 : stdgo._internal.hash.adler32.Adler32.T_digest);
    }
}
