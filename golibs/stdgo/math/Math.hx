package stdgo.math;
final e : StdTypes.Float = stdgo._internal.math.Math.e;
final pi : StdTypes.Float = stdgo._internal.math.Math.pi;
final phi : StdTypes.Float = stdgo._internal.math.Math.phi;
final sqrt2 : StdTypes.Float = stdgo._internal.math.Math.sqrt2;
final sqrtE : StdTypes.Float = stdgo._internal.math.Math.sqrtE;
final sqrtPi : StdTypes.Float = stdgo._internal.math.Math.sqrtPi;
final sqrtPhi : StdTypes.Float = stdgo._internal.math.Math.sqrtPhi;
final ln2 : StdTypes.Float = stdgo._internal.math.Math.ln2;
final log2E : StdTypes.Float = stdgo._internal.math.Math.log2E;
final ln10 : StdTypes.Float = stdgo._internal.math.Math.ln10;
final log10E : StdTypes.Float = stdgo._internal.math.Math.log10E;
final maxFloat32 : StdTypes.Float = stdgo._internal.math.Math.maxFloat32;
final smallestNonzeroFloat32 : StdTypes.Float = stdgo._internal.math.Math.smallestNonzeroFloat32;
final maxFloat64 : StdTypes.Float = stdgo._internal.math.Math.maxFloat64;
final smallestNonzeroFloat64 : StdTypes.Float = stdgo._internal.math.Math.smallestNonzeroFloat64;
final maxInt : haxe.UInt64 = stdgo._internal.math.Math.maxInt;
final minInt : haxe.UInt64 = stdgo._internal.math.Math.minInt;
final maxInt8 : haxe.UInt64 = stdgo._internal.math.Math.maxInt8;
final minInt8 : haxe.UInt64 = stdgo._internal.math.Math.minInt8;
final maxInt16 : haxe.UInt64 = stdgo._internal.math.Math.maxInt16;
final minInt16 : haxe.UInt64 = stdgo._internal.math.Math.minInt16;
final maxInt32 : haxe.UInt64 = stdgo._internal.math.Math.maxInt32;
final minInt32 : haxe.UInt64 = stdgo._internal.math.Math.minInt32;
final maxInt64 : haxe.UInt64 = stdgo._internal.math.Math.maxInt64;
final minInt64 : haxe.UInt64 = stdgo._internal.math.Math.minInt64;
final maxUint : haxe.UInt64 = stdgo._internal.math.Math.maxUint;
final maxUint8 : haxe.UInt64 = stdgo._internal.math.Math.maxUint8;
final maxUint16 : haxe.UInt64 = stdgo._internal.math.Math.maxUint16;
final maxUint32 : haxe.UInt64 = stdgo._internal.math.Math.maxUint32;
final maxUint64 : haxe.UInt64 = stdgo._internal.math.Math.maxUint64;
final reduceThreshold : haxe.UInt64 = stdgo._internal.math.Math.reduceThreshold;
var expGo(get, set) : stdgo.GoFloat64 -> stdgo.GoFloat64;
private function get_expGo():stdgo.GoFloat64 -> stdgo.GoFloat64 return _0 -> stdgo._internal.math.Math.expGo(_0);
private function set_expGo(v:stdgo.GoFloat64 -> stdgo.GoFloat64):stdgo.GoFloat64 -> stdgo.GoFloat64 {
    stdgo._internal.math.Math.expGo = v;
    return v;
}
var exp2Go(get, set) : stdgo.GoFloat64 -> stdgo.GoFloat64;
private function get_exp2Go():stdgo.GoFloat64 -> stdgo.GoFloat64 return _0 -> stdgo._internal.math.Math.exp2Go(_0);
private function set_exp2Go(v:stdgo.GoFloat64 -> stdgo.GoFloat64):stdgo.GoFloat64 -> stdgo.GoFloat64 {
    stdgo._internal.math.Math.exp2Go = v;
    return v;
}
var hypotGo(get, set) : (stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64;
private function get_hypotGo():(stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64 return (_0, _1) -> stdgo._internal.math.Math.hypotGo(_0, _1);
private function set_hypotGo(v:(stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64):(stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64 {
    stdgo._internal.math.Math.hypotGo = v;
    return v;
}
var sqrtGo(get, set) : stdgo.GoFloat64 -> stdgo.GoFloat64;
private function get_sqrtGo():stdgo.GoFloat64 -> stdgo.GoFloat64 return _0 -> stdgo._internal.math.Math.sqrtGo(_0);
private function set_sqrtGo(v:stdgo.GoFloat64 -> stdgo.GoFloat64):stdgo.GoFloat64 -> stdgo.GoFloat64 {
    stdgo._internal.math.Math.sqrtGo = v;
    return v;
}
var trigReduce(get, set) : stdgo.GoFloat64 -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; };
private function get_trigReduce():stdgo.GoFloat64 -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; } return _0 -> stdgo._internal.math.Math.trigReduce(_0);
private function set_trigReduce(v:stdgo.GoFloat64 -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; }):stdgo.GoFloat64 -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.GoFloat64; } {
    stdgo._internal.math.Math.trigReduce = v;
    return v;
}
/**
    Package math provides basic constants and mathematical functions.
    
    This package does not guarantee bit-identical results across architectures.
**/
class Math {
    /**
        Abs returns the absolute value of x.
        
        Special cases are:
        
        	Abs(±Inf) = +Inf
        	Abs(NaN) = NaN
    **/
    static public function abs(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.abs(_x);
    }
    /**
        Acosh returns the inverse hyperbolic cosine of x.
        
        Special cases are:
        
        	Acosh(+Inf) = +Inf
        	Acosh(x) = NaN if x < 1
        	Acosh(NaN) = NaN
    **/
    static public function acosh(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.acosh(_x);
    }
    /**
        Asin returns the arcsine, in radians, of x.
        
        Special cases are:
        
        	Asin(±0) = ±0
        	Asin(x) = NaN if x < -1 or x > 1
    **/
    static public function asin(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.asin(_x);
    }
    /**
        Acos returns the arccosine, in radians, of x.
        
        Special case is:
        
        	Acos(x) = NaN if x < -1 or x > 1
    **/
    static public function acos(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.acos(_x);
    }
    /**
        Asinh returns the inverse hyperbolic sine of x.
        
        Special cases are:
        
        	Asinh(±0) = ±0
        	Asinh(±Inf) = ±Inf
        	Asinh(NaN) = NaN
    **/
    static public function asinh(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.asinh(_x);
    }
    /**
        Atan returns the arctangent, in radians, of x.
        
        Special cases are:
        
        	Atan(±0) = ±0
        	Atan(±Inf) = ±Pi/2
    **/
    static public function atan(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.atan(_x);
    }
    /**
        Atan2 returns the arc tangent of y/x, using
        the signs of the two to determine the quadrant
        of the return value.
        
        Special cases are (in order):
        
        	Atan2(y, NaN) = NaN
        	Atan2(NaN, x) = NaN
        	Atan2(+0, x>=0) = +0
        	Atan2(-0, x>=0) = -0
        	Atan2(+0, x<=-0) = +Pi
        	Atan2(-0, x<=-0) = -Pi
        	Atan2(y>0, 0) = +Pi/2
        	Atan2(y<0, 0) = -Pi/2
        	Atan2(+Inf, +Inf) = +Pi/4
        	Atan2(-Inf, +Inf) = -Pi/4
        	Atan2(+Inf, -Inf) = 3Pi/4
        	Atan2(-Inf, -Inf) = -3Pi/4
        	Atan2(y, +Inf) = 0
        	Atan2(y>0, -Inf) = +Pi
        	Atan2(y<0, -Inf) = -Pi
        	Atan2(+Inf, x) = +Pi/2
        	Atan2(-Inf, x) = -Pi/2
    **/
    static public function atan2(_y:StdTypes.Float, _x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.atan2(_y, _x);
    }
    /**
        Atanh returns the inverse hyperbolic tangent of x.
        
        Special cases are:
        
        	Atanh(1) = +Inf
        	Atanh(±0) = ±0
        	Atanh(-1) = -Inf
        	Atanh(x) = NaN if x < -1 or x > 1
        	Atanh(NaN) = NaN
    **/
    static public function atanh(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.atanh(_x);
    }
    /**
        Inf returns positive infinity if sign >= 0, negative infinity if sign < 0.
    **/
    static public function inf(_sign:StdTypes.Int):StdTypes.Float {
        return stdgo._internal.math.Math.inf(_sign);
    }
    /**
        NaN returns an IEEE 754 “not-a-number” value.
    **/
    static public function naN():StdTypes.Float {
        return stdgo._internal.math.Math.naN();
    }
    /**
        IsNaN reports whether f is an IEEE 754 “not-a-number” value.
    **/
    static public function isNaN(_f:StdTypes.Float):Bool {
        return stdgo._internal.math.Math.isNaN(_f);
    }
    /**
        IsInf reports whether f is an infinity, according to sign.
        If sign > 0, IsInf reports whether f is positive infinity.
        If sign < 0, IsInf reports whether f is negative infinity.
        If sign == 0, IsInf reports whether f is either infinity.
    **/
    static public function isInf(_f:StdTypes.Float, _sign:StdTypes.Int):Bool {
        return stdgo._internal.math.Math.isInf(_f, _sign);
    }
    /**
        Cbrt returns the cube root of x.
        
        Special cases are:
        
        	Cbrt(±0) = ±0
        	Cbrt(±Inf) = ±Inf
        	Cbrt(NaN) = NaN
    **/
    static public function cbrt(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.cbrt(_x);
    }
    /**
        Copysign returns a value with the magnitude of f
        and the sign of sign.
    **/
    static public function copysign(_f:StdTypes.Float, _sign:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.copysign(_f, _sign);
    }
    /**
        Dim returns the maximum of x-y or 0.
        
        Special cases are:
        
        	Dim(+Inf, +Inf) = NaN
        	Dim(-Inf, -Inf) = NaN
        	Dim(x, NaN) = Dim(NaN, x) = NaN
    **/
    static public function dim(_x:StdTypes.Float, _y:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.dim(_x, _y);
    }
    /**
        Max returns the larger of x or y.
        
        Special cases are:
        
        	Max(x, +Inf) = Max(+Inf, x) = +Inf
        	Max(x, NaN) = Max(NaN, x) = NaN
        	Max(+0, ±0) = Max(±0, +0) = +0
        	Max(-0, -0) = -0
        
        Note that this differs from the built-in function max when called
        with NaN and +Inf.
    **/
    static public function max(_x:StdTypes.Float, _y:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.max(_x, _y);
    }
    /**
        Min returns the smaller of x or y.
        
        Special cases are:
        
        	Min(x, -Inf) = Min(-Inf, x) = -Inf
        	Min(x, NaN) = Min(NaN, x) = NaN
        	Min(-0, ±0) = Min(±0, -0) = -0
        
        Note that this differs from the built-in function min when called
        with NaN and -Inf.
    **/
    static public function min(_x:StdTypes.Float, _y:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.min(_x, _y);
    }
    /**
        Erf returns the error function of x.
        
        Special cases are:
        
        	Erf(+Inf) = 1
        	Erf(-Inf) = -1
        	Erf(NaN) = NaN
    **/
    static public function erf(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.erf(_x);
    }
    /**
        Erfc returns the complementary error function of x.
        
        Special cases are:
        
        	Erfc(+Inf) = 0
        	Erfc(-Inf) = 2
        	Erfc(NaN) = NaN
    **/
    static public function erfc(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.erfc(_x);
    }
    /**
        Erfinv returns the inverse error function of x.
        
        Special cases are:
        
        	Erfinv(1) = +Inf
        	Erfinv(-1) = -Inf
        	Erfinv(x) = NaN if x < -1 or x > 1
        	Erfinv(NaN) = NaN
    **/
    static public function erfinv(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.erfinv(_x);
    }
    /**
        Erfcinv returns the inverse of Erfc(x).
        
        Special cases are:
        
        	Erfcinv(0) = +Inf
        	Erfcinv(2) = -Inf
        	Erfcinv(x) = NaN if x < 0 or x > 2
        	Erfcinv(NaN) = NaN
    **/
    static public function erfcinv(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.erfcinv(_x);
    }
    /**
        Exp returns e**x, the base-e exponential of x.
        
        Special cases are:
        
        	Exp(+Inf) = +Inf
        	Exp(NaN) = NaN
        
        Very large values overflow to 0 or +Inf.
        Very small values underflow to 1.
    **/
    static public function exp(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.exp(_x);
    }
    /**
        Exp2 returns 2**x, the base-2 exponential of x.
        
        Special cases are the same as Exp.
    **/
    static public function exp2(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.exp2(_x);
    }
    /**
        Expm1 returns e**x - 1, the base-e exponential of x minus 1.
        It is more accurate than Exp(x) - 1 when x is near zero.
        
        Special cases are:
        
        	Expm1(+Inf) = +Inf
        	Expm1(-Inf) = -1
        	Expm1(NaN) = NaN
        
        Very large values overflow to -1 or +Inf.
    **/
    static public function expm1(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.expm1(_x);
    }
    /**
        Floor returns the greatest integer value less than or equal to x.
        
        Special cases are:
        
        	Floor(±0) = ±0
        	Floor(±Inf) = ±Inf
        	Floor(NaN) = NaN
    **/
    static public function floor(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.floor(_x);
    }
    /**
        Ceil returns the least integer value greater than or equal to x.
        
        Special cases are:
        
        	Ceil(±0) = ±0
        	Ceil(±Inf) = ±Inf
        	Ceil(NaN) = NaN
    **/
    static public function ceil(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.ceil(_x);
    }
    /**
        Trunc returns the integer value of x.
        
        Special cases are:
        
        	Trunc(±0) = ±0
        	Trunc(±Inf) = ±Inf
        	Trunc(NaN) = NaN
    **/
    static public function trunc(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.trunc(_x);
    }
    /**
        Round returns the nearest integer, rounding half away from zero.
        
        Special cases are:
        
        	Round(±0) = ±0
        	Round(±Inf) = ±Inf
        	Round(NaN) = NaN
    **/
    static public function round(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.round(_x);
    }
    /**
        RoundToEven returns the nearest integer, rounding ties to even.
        
        Special cases are:
        
        	RoundToEven(±0) = ±0
        	RoundToEven(±Inf) = ±Inf
        	RoundToEven(NaN) = NaN
    **/
    static public function roundToEven(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.roundToEven(_x);
    }
    /**
        FMA returns x * y + z, computed with only one rounding.
        (That is, FMA returns the fused multiply-add of x, y, and z.)
    **/
    static public function fma(_x:StdTypes.Float, _y:StdTypes.Float, _z:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.fma(_x, _y, _z);
    }
    /**
        Frexp breaks f into a normalized fraction
        and an integral power of two.
        It returns frac and exp satisfying f == frac × 2**exp,
        with the absolute value of frac in the interval [½, 1).
        
        Special cases are:
        
        	Frexp(±0) = ±0, 0
        	Frexp(±Inf) = ±Inf, 0
        	Frexp(NaN) = NaN, 0
    **/
    static public function frexp(_f:StdTypes.Float):stdgo.Tuple<StdTypes.Float, StdTypes.Int> {
        return {
            final obj = stdgo._internal.math.Math.frexp(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Gamma returns the Gamma function of x.
        
        Special cases are:
        
        	Gamma(+Inf) = +Inf
        	Gamma(+0) = +Inf
        	Gamma(-0) = -Inf
        	Gamma(x) = NaN for integer x < 0
        	Gamma(-Inf) = NaN
        	Gamma(NaN) = NaN
    **/
    static public function gamma(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.gamma(_x);
    }
    /**
        Hypot returns Sqrt(p*p + q*q), taking care to avoid
        unnecessary overflow and underflow.
        
        Special cases are:
        
        	Hypot(±Inf, q) = +Inf
        	Hypot(p, ±Inf) = +Inf
        	Hypot(NaN, q) = NaN
        	Hypot(p, NaN) = NaN
    **/
    static public function hypot(_p:StdTypes.Float, _q:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.hypot(_p, _q);
    }
    /**
        J0 returns the order-zero Bessel function of the first kind.
        
        Special cases are:
        
        	J0(±Inf) = 0
        	J0(0) = 1
        	J0(NaN) = NaN
    **/
    static public function j0(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.j0(_x);
    }
    /**
        Y0 returns the order-zero Bessel function of the second kind.
        
        Special cases are:
        
        	Y0(+Inf) = 0
        	Y0(0) = -Inf
        	Y0(x < 0) = NaN
        	Y0(NaN) = NaN
    **/
    static public function y0(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.y0(_x);
    }
    /**
        J1 returns the order-one Bessel function of the first kind.
        
        Special cases are:
        
        	J1(±Inf) = 0
        	J1(NaN) = NaN
    **/
    static public function j1(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.j1(_x);
    }
    /**
        Y1 returns the order-one Bessel function of the second kind.
        
        Special cases are:
        
        	Y1(+Inf) = 0
        	Y1(0) = -Inf
        	Y1(x < 0) = NaN
        	Y1(NaN) = NaN
    **/
    static public function y1(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.y1(_x);
    }
    /**
        Jn returns the order-n Bessel function of the first kind.
        
        Special cases are:
        
        	Jn(n, ±Inf) = 0
        	Jn(n, NaN) = NaN
    **/
    static public function jn(_n:StdTypes.Int, _x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.jn(_n, _x);
    }
    /**
        Yn returns the order-n Bessel function of the second kind.
        
        Special cases are:
        
        	Yn(n, +Inf) = 0
        	Yn(n ≥ 0, 0) = -Inf
        	Yn(n < 0, 0) = +Inf if n is odd, -Inf if n is even
        	Yn(n, x < 0) = NaN
        	Yn(n, NaN) = NaN
    **/
    static public function yn(_n:StdTypes.Int, _x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.yn(_n, _x);
    }
    /**
        Ldexp is the inverse of Frexp.
        It returns frac × 2**exp.
        
        Special cases are:
        
        	Ldexp(±0, exp) = ±0
        	Ldexp(±Inf, exp) = ±Inf
        	Ldexp(NaN, exp) = NaN
    **/
    static public function ldexp(_frac:StdTypes.Float, _exp:StdTypes.Int):StdTypes.Float {
        return stdgo._internal.math.Math.ldexp(_frac, _exp);
    }
    /**
        Lgamma returns the natural logarithm and sign (-1 or +1) of Gamma(x).
        
        Special cases are:
        
        	Lgamma(+Inf) = +Inf
        	Lgamma(0) = +Inf
        	Lgamma(-integer) = +Inf
        	Lgamma(-Inf) = -Inf
        	Lgamma(NaN) = NaN
    **/
    static public function lgamma(_x:StdTypes.Float):stdgo.Tuple<StdTypes.Float, StdTypes.Int> {
        return {
            final obj = stdgo._internal.math.Math.lgamma(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Log returns the natural logarithm of x.
        
        Special cases are:
        
        	Log(+Inf) = +Inf
        	Log(0) = -Inf
        	Log(x < 0) = NaN
        	Log(NaN) = NaN
    **/
    static public function log(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.log(_x);
    }
    /**
        Log10 returns the decimal logarithm of x.
        The special cases are the same as for Log.
    **/
    static public function log10(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.log10(_x);
    }
    /**
        Log2 returns the binary logarithm of x.
        The special cases are the same as for Log.
    **/
    static public function log2(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.log2(_x);
    }
    /**
        Log1p returns the natural logarithm of 1 plus its argument x.
        It is more accurate than Log(1 + x) when x is near zero.
        
        Special cases are:
        
        	Log1p(+Inf) = +Inf
        	Log1p(±0) = ±0
        	Log1p(-1) = -Inf
        	Log1p(x < -1) = NaN
        	Log1p(NaN) = NaN
    **/
    static public function log1p(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.log1p(_x);
    }
    /**
        Logb returns the binary exponent of x.
        
        Special cases are:
        
        	Logb(±Inf) = +Inf
        	Logb(0) = -Inf
        	Logb(NaN) = NaN
    **/
    static public function logb(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.logb(_x);
    }
    /**
        Ilogb returns the binary exponent of x as an integer.
        
        Special cases are:
        
        	Ilogb(±Inf) = MaxInt32
        	Ilogb(0) = MinInt32
        	Ilogb(NaN) = MaxInt32
    **/
    static public function ilogb(_x:StdTypes.Float):StdTypes.Int {
        return stdgo._internal.math.Math.ilogb(_x);
    }
    /**
        Mod returns the floating-point remainder of x/y.
        The magnitude of the result is less than y and its
        sign agrees with that of x.
        
        Special cases are:
        
        	Mod(±Inf, y) = NaN
        	Mod(NaN, y) = NaN
        	Mod(x, 0) = NaN
        	Mod(x, ±Inf) = x
        	Mod(x, NaN) = NaN
    **/
    static public function mod(_x:StdTypes.Float, _y:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.mod(_x, _y);
    }
    /**
        Modf returns integer and fractional floating-point numbers
        that sum to f. Both values have the same sign as f.
        
        Special cases are:
        
        	Modf(±Inf) = ±Inf, NaN
        	Modf(NaN) = NaN, NaN
    **/
    static public function modf(_f:StdTypes.Float):stdgo.Tuple<StdTypes.Float, StdTypes.Float> {
        return {
            final obj = stdgo._internal.math.Math.modf(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Nextafter32 returns the next representable float32 value after x towards y.
        
        Special cases are:
        
        	Nextafter32(x, x)   = x
        	Nextafter32(NaN, y) = NaN
        	Nextafter32(x, NaN) = NaN
    **/
    static public function nextafter32(_x:StdTypes.Float, _y:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.nextafter32(_x, _y);
    }
    /**
        Nextafter returns the next representable float64 value after x towards y.
        
        Special cases are:
        
        	Nextafter(x, x)   = x
        	Nextafter(NaN, y) = NaN
        	Nextafter(x, NaN) = NaN
    **/
    static public function nextafter(_x:StdTypes.Float, _y:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.nextafter(_x, _y);
    }
    /**
        Pow returns x**y, the base-x exponential of y.
        
        Special cases are (in order):
        
        	Pow(x, ±0) = 1 for any x
        	Pow(1, y) = 1 for any y
        	Pow(x, 1) = x for any x
        	Pow(NaN, y) = NaN
        	Pow(x, NaN) = NaN
        	Pow(±0, y) = ±Inf for y an odd integer < 0
        	Pow(±0, -Inf) = +Inf
        	Pow(±0, +Inf) = +0
        	Pow(±0, y) = +Inf for finite y < 0 and not an odd integer
        	Pow(±0, y) = ±0 for y an odd integer > 0
        	Pow(±0, y) = +0 for finite y > 0 and not an odd integer
        	Pow(-1, ±Inf) = 1
        	Pow(x, +Inf) = +Inf for |x| > 1
        	Pow(x, -Inf) = +0 for |x| > 1
        	Pow(x, +Inf) = +0 for |x| < 1
        	Pow(x, -Inf) = +Inf for |x| < 1
        	Pow(+Inf, y) = +Inf for y > 0
        	Pow(+Inf, y) = +0 for y < 0
        	Pow(-Inf, y) = Pow(-0, -y)
        	Pow(x, y) = NaN for finite x < 0 and finite non-integer y
    **/
    static public function pow(_x:StdTypes.Float, _y:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.pow(_x, _y);
    }
    /**
        Pow10 returns 10**n, the base-10 exponential of n.
        
        Special cases are:
        
        	Pow10(n) =    0 for n < -323
        	Pow10(n) = +Inf for n > 308
    **/
    static public function pow10(_n:StdTypes.Int):StdTypes.Float {
        return stdgo._internal.math.Math.pow10(_n);
    }
    /**
        Remainder returns the IEEE 754 floating-point remainder of x/y.
        
        Special cases are:
        
        	Remainder(±Inf, y) = NaN
        	Remainder(NaN, y) = NaN
        	Remainder(x, 0) = NaN
        	Remainder(x, ±Inf) = x
        	Remainder(x, NaN) = NaN
    **/
    static public function remainder(_x:StdTypes.Float, _y:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.remainder(_x, _y);
    }
    /**
        Signbit reports whether x is negative or negative zero.
    **/
    static public function signbit(_x:StdTypes.Float):Bool {
        return stdgo._internal.math.Math.signbit(_x);
    }
    /**
        Cos returns the cosine of the radian argument x.
        
        Special cases are:
        
        	Cos(±Inf) = NaN
        	Cos(NaN) = NaN
    **/
    static public function cos(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.cos(_x);
    }
    /**
        Sin returns the sine of the radian argument x.
        
        Special cases are:
        
        	Sin(±0) = ±0
        	Sin(±Inf) = NaN
        	Sin(NaN) = NaN
    **/
    static public function sin(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.sin(_x);
    }
    /**
        Sincos returns Sin(x), Cos(x).
        
        Special cases are:
        
        	Sincos(±0) = ±0, 1
        	Sincos(±Inf) = NaN, NaN
        	Sincos(NaN) = NaN, NaN
    **/
    static public function sincos(_x:StdTypes.Float):stdgo.Tuple<StdTypes.Float, StdTypes.Float> {
        return {
            final obj = stdgo._internal.math.Math.sincos(_x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sinh returns the hyperbolic sine of x.
        
        Special cases are:
        
        	Sinh(±0) = ±0
        	Sinh(±Inf) = ±Inf
        	Sinh(NaN) = NaN
    **/
    static public function sinh(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.sinh(_x);
    }
    /**
        Cosh returns the hyperbolic cosine of x.
        
        Special cases are:
        
        	Cosh(±0) = 1
        	Cosh(±Inf) = +Inf
        	Cosh(NaN) = NaN
    **/
    static public function cosh(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.cosh(_x);
    }
    /**
        Sqrt returns the square root of x.
        
        Special cases are:
        
        	Sqrt(+Inf) = +Inf
        	Sqrt(±0) = ±0
        	Sqrt(x < 0) = NaN
        	Sqrt(NaN) = NaN
    **/
    static public function sqrt(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.sqrt(_x);
    }
    /**
        Tan returns the tangent of the radian argument x.
        
        Special cases are:
        
        	Tan(±0) = ±0
        	Tan(±Inf) = NaN
        	Tan(NaN) = NaN
    **/
    static public function tan(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.tan(_x);
    }
    /**
        Tanh returns the hyperbolic tangent of x.
        
        Special cases are:
        
        	Tanh(±0) = ±0
        	Tanh(±Inf) = ±1
        	Tanh(NaN) = NaN
    **/
    static public function tanh(_x:StdTypes.Float):StdTypes.Float {
        return stdgo._internal.math.Math.tanh(_x);
    }
    /**
        Float32bits returns the IEEE 754 binary representation of f,
        with the sign bit of f and the result in the same bit position.
        Float32bits(Float32frombits(x)) == x.
    **/
    static public function float32bits(_f:StdTypes.Float):std.UInt {
        return stdgo._internal.math.Math.float32bits(_f);
    }
    /**
        Float32frombits returns the floating-point number corresponding
        to the IEEE 754 binary representation b, with the sign bit of b
        and the result in the same bit position.
        Float32frombits(Float32bits(x)) == x.
    **/
    static public function float32frombits(_b:std.UInt):StdTypes.Float {
        return stdgo._internal.math.Math.float32frombits(_b);
    }
    /**
        Float64bits returns the IEEE 754 binary representation of f,
        with the sign bit of f and the result in the same bit position,
        and Float64bits(Float64frombits(x)) == x.
    **/
    static public function float64bits(_f:StdTypes.Float):haxe.UInt64 {
        return stdgo._internal.math.Math.float64bits(_f);
    }
    /**
        Float64frombits returns the floating-point number corresponding
        to the IEEE 754 binary representation b, with the sign bit of b
        and the result in the same bit position.
        Float64frombits(Float64bits(x)) == x.
    **/
    static public function float64frombits(_b:haxe.UInt64):StdTypes.Float {
        return stdgo._internal.math.Math.float64frombits(_b);
    }
    static public function negZero() {
        stdgo._internal.math.Math.negZero();
    }
}
