package stdgo._internal.go.constant_test;
import stdgo._internal.go.constant.Constant;
function example_complexNumbers():Void {
        var _ar:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeFloat64((2.3 : stdgo.GoFloat64));
        var _ai:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeImag(stdgo._internal.go.constant.Constant.makeInt64((5i64 : stdgo.GoInt64)));
        var _a:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.binaryOp(_ar, (12 : stdgo._internal.go.token.Token.Token), _ai);
        var _b:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeUint64((11i64 : stdgo.GoUInt64));
        var _c:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.binaryOp(_a, (14 : stdgo._internal.go.token.Token.Token), _b);
        var __tmp__ = stdgo._internal.go.constant.Constant.float64Val(stdgo._internal.go.constant.Constant.real(_c)), ar:stdgo.GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
        if (!_exact) {
            stdgo._internal.fmt.Fmt.printf(("Could not represent real part %s exactly as float64\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.go.constant.Constant.real(_c)));
        };
        var __tmp__ = stdgo._internal.go.constant.Constant.float64Val(stdgo._internal.go.constant.Constant.imag(_c)), ai:stdgo.GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
        if (!_exact) {
            stdgo._internal.fmt.Fmt.printf(("Could not represent imaginary part %s as exactly as float64\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.go.constant.Constant.imag(_c)));
        };
        var c:stdgo.GoComplex128 = new stdgo.GoComplex128(ar, ai);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("literal" : stdgo.GoString)), stdgo.Go.toInterface(((25.3f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 55f64))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("go/constant" : stdgo.GoString)), stdgo.Go.toInterface(_c));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("complex128" : stdgo.GoString)), stdgo.Go.toInterface(c));
    }
function exampleBinaryOp():Void {
        var _a:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeUint64((11i64 : stdgo.GoUInt64));
        var _b:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeFloat64((0.5 : stdgo.GoFloat64));
        var _c:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.binaryOp(_a, (15 : stdgo._internal.go.token.Token.Token), _b);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_c));
    }
function exampleUnaryOp():Void {
        var _vs = (new stdgo.Slice<stdgo._internal.go.constant.Constant.Value>(3, 3, ...[stdgo._internal.go.constant.Constant.makeBool(true), stdgo._internal.go.constant.Constant.makeFloat64((2.7 : stdgo.GoFloat64)), stdgo._internal.go.constant.Constant.makeUint64((42i64 : stdgo.GoUInt64))]) : stdgo.Slice<stdgo._internal.go.constant.Constant.Value>);
        for (_i => _v in _vs) {
            {
                final __value__ = _v.kind();
                if (__value__ == ((1 : stdgo._internal.go.constant.Constant.Kind))) {
                    _vs[(_i : stdgo.GoInt)] = stdgo._internal.go.constant.Constant.unaryOp((43 : stdgo._internal.go.token.Token.Token), _v, (0u32 : stdgo.GoUInt));
                } else if (__value__ == ((4 : stdgo._internal.go.constant.Constant.Kind))) {
                    _vs[(_i : stdgo.GoInt)] = stdgo._internal.go.constant.Constant.unaryOp((13 : stdgo._internal.go.token.Token.Token), _v, (0u32 : stdgo.GoUInt));
                } else if (__value__ == ((3 : stdgo._internal.go.constant.Constant.Kind))) {
                    _vs[(_i : stdgo.GoInt)] = stdgo._internal.go.constant.Constant.unaryOp((19 : stdgo._internal.go.token.Token.Token), _v, (16u32 : stdgo.GoUInt));
                };
            };
        };
        for (__0 => _v in _vs) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_v));
        };
    }
function exampleCompare():Void {
        var _vs = (new stdgo.Slice<stdgo._internal.go.constant.Constant.Value>(6, 6, ...[stdgo._internal.go.constant.Constant.makeString(("Z" : stdgo.GoString)), stdgo._internal.go.constant.Constant.makeString(("bacon" : stdgo.GoString)), stdgo._internal.go.constant.Constant.makeString(("go" : stdgo.GoString)), stdgo._internal.go.constant.Constant.makeString(("Frame" : stdgo.GoString)), stdgo._internal.go.constant.Constant.makeString(("defer" : stdgo.GoString)), stdgo._internal.go.constant.Constant.makeFromLiteral(("\"a\"" : stdgo.GoString), (9 : stdgo._internal.go.token.Token.Token), (0u32 : stdgo.GoUInt))]) : stdgo.Slice<stdgo._internal.go.constant.Constant.Value>);
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_vs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return stdgo._internal.go.constant.Constant.compare(_vs[(_i : stdgo.GoInt)], (45 : stdgo._internal.go.token.Token.Token), _vs[(_j : stdgo.GoInt)]);
        });
        for (__0 => _v in _vs) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.go.constant.Constant.stringVal(_v)));
        };
    }
function exampleSign():Void {
        var _zero:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeInt64((0i64 : stdgo.GoInt64));
        var _one:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeInt64((1i64 : stdgo.GoInt64));
        var _negOne:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeInt64((-1i64 : stdgo.GoInt64));
        var _mkComplex:(stdgo._internal.go.constant.Constant.Value, stdgo._internal.go.constant.Constant.Value) -> stdgo._internal.go.constant.Constant.Value = function(_a:stdgo._internal.go.constant.Constant.Value, _b:stdgo._internal.go.constant.Constant.Value):stdgo._internal.go.constant.Constant.Value {
            _b = stdgo._internal.go.constant.Constant.makeImag(_b);
            return stdgo._internal.go.constant.Constant.binaryOp(_a, (12 : stdgo._internal.go.token.Token.Token), _b);
        };
        var _vs = (new stdgo.Slice<stdgo._internal.go.constant.Constant.Value>(10, 10, ...[_negOne, _mkComplex(_zero, _negOne), _mkComplex(_one, _negOne), _mkComplex(_negOne, _one), _mkComplex(_negOne, _negOne), _zero, _mkComplex(_zero, _zero), _one, _mkComplex(_zero, _one), _mkComplex(_one, _one)]) : stdgo.Slice<stdgo._internal.go.constant.Constant.Value>);
        for (__0 => _v in _vs) {
            stdgo._internal.fmt.Fmt.printf(("% d %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.go.constant.Constant.sign(_v)), stdgo.Go.toInterface(_v));
        };
    }
function exampleVal():Void {
        var _maxint:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeInt64((9223372036854775807i64 : stdgo.GoInt64));
        stdgo._internal.fmt.Fmt.printf(("%v\n" : stdgo.GoString), stdgo._internal.go.constant.Constant.val(_maxint));
        var _e:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeFloat64((2.718281828459045 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%v\n" : stdgo.GoString), stdgo._internal.go.constant.Constant.val(_e));
        var _b:stdgo._internal.go.constant.Constant.Value = stdgo._internal.go.constant.Constant.makeBool(true);
        stdgo._internal.fmt.Fmt.printf(("%v\n" : stdgo.GoString), stdgo._internal.go.constant.Constant.val(_b));
        _b = stdgo._internal.go.constant.Constant.make(stdgo.Go.toInterface(false));
        stdgo._internal.fmt.Fmt.printf(("%v\n" : stdgo.GoString), stdgo._internal.go.constant.Constant.val(_b));
    }
