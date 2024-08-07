package stdgo._internal.go.constant;
private var __go2hxdoc__package : Bool;
final __Kind_name : stdgo.GoString = ("UnknownBoolStringIntFloatComplex" : stdgo.GoString);
final unknown : stdgo._internal.go.constant.Constant.Kind = (5 : stdgo._internal.go.constant.Constant.Kind);
final bool_ = (5 : stdgo._internal.go.constant.Constant.Kind);
final string = (5 : stdgo._internal.go.constant.Constant.Kind);
final int_ = (5 : stdgo._internal.go.constant.Constant.Kind);
final float_ = (5 : stdgo._internal.go.constant.Constant.Kind);
final complex = (5 : stdgo._internal.go.constant.Constant.Kind);
final _prec : stdgo.GoUInt64 = (512i64 : stdgo.GoUInt64);
final _maxExp : stdgo.GoUInt64 = (4096i64 : stdgo.GoUInt64);
var _emptyString : T_stringVal = ({} : stdgo._internal.go.constant.Constant.T_stringVal);
final __m : stdgo._internal.math.big.Big.Word = (-1u32 : stdgo._internal.math.big.Big.Word);
final __log : stdgo._internal.math.big.Big.Word = (2u32 : stdgo._internal.math.big.Big.Word);
final _wordSize : stdgo.GoUInt64 = (4i64 : stdgo.GoUInt64);
var __Kind_index : stdgo.GoArray<stdgo.GoUInt8> = (new stdgo.GoArray<stdgo.GoUInt8>(7, 7, ...[(0 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (17 : stdgo.GoUInt8), (20 : stdgo.GoUInt8), (25 : stdgo.GoUInt8), (32 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>);
var _floatVal0 : stdgo._internal.go.constant.Constant.T_floatVal = (new stdgo._internal.go.constant.Constant.T_floatVal(_newFloat()) : stdgo._internal.go.constant.Constant.T_floatVal);
var _intTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(28, 28, ...[
("0_123 = 0123" : stdgo.GoString),
("0123_456 = 0123456" : stdgo.GoString),
("1_234 = 1234" : stdgo.GoString),
("1_234_567 = 1234567" : stdgo.GoString),
("0X_0 = 0" : stdgo.GoString),
("0X_1234 = 0x1234" : stdgo.GoString),
("0X_CAFE_f00d = 0xcafef00d" : stdgo.GoString),
("0o0 = 0" : stdgo.GoString),
("0o1234 = 01234" : stdgo.GoString),
("0o01234567 = 01234567" : stdgo.GoString),
("0O0 = 0" : stdgo.GoString),
("0O1234 = 01234" : stdgo.GoString),
("0O01234567 = 01234567" : stdgo.GoString),
("0o_0 = 0" : stdgo.GoString),
("0o_1234 = 01234" : stdgo.GoString),
("0o0123_4567 = 01234567" : stdgo.GoString),
("0O_0 = 0" : stdgo.GoString),
("0O_1234 = 01234" : stdgo.GoString),
("0O0123_4567 = 01234567" : stdgo.GoString),
("0b0 = 0" : stdgo.GoString),
("0b1011 = 0xb" : stdgo.GoString),
("0b00101101 = 0x2d" : stdgo.GoString),
("0B0 = 0" : stdgo.GoString),
("0B1011 = 0xb" : stdgo.GoString),
("0B00101101 = 0x2d" : stdgo.GoString),
("0b_0 = 0" : stdgo.GoString),
("0b10_11 = 0xb" : stdgo.GoString),
("0b_0010_1101 = 0x2d" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _floatTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(36, 36, ...[
("1_2_3. = 123." : stdgo.GoString),
("0_123. = 123." : stdgo.GoString),
("0_0e0 = 0." : stdgo.GoString),
("1_2_3e0 = 123." : stdgo.GoString),
("0_123e0 = 123." : stdgo.GoString),
("0e-0_0 = 0." : stdgo.GoString),
("1_2_3E+0 = 123." : stdgo.GoString),
("0123E1_2_3 = 123e123" : stdgo.GoString),
("0.e+1 = 0." : stdgo.GoString),
("123.E-1_0 = 123e-10" : stdgo.GoString),
("01_23.e123 = 123e123" : stdgo.GoString),
(".0e-1 = .0" : stdgo.GoString),
(".123E+10 = .123e10" : stdgo.GoString),
(".0123E123 = .0123e123" : stdgo.GoString),
("1_2_3.123 = 123.123" : stdgo.GoString),
("0123.01_23 = 123.0123" : stdgo.GoString),
("1e-1000000000 = 0" : stdgo.GoString),
("1e+1000000000 = ?" : stdgo.GoString),
("6e5518446744 = ?" : stdgo.GoString),
("-6e5518446744 = ?" : stdgo.GoString),
("0x0.p+0 = 0." : stdgo.GoString),
("0Xdeadcafe.p-10 = 0xdeadcafe/1024" : stdgo.GoString),
("0x1234.P84 = 0x1234000000000000000000000" : stdgo.GoString),
("0x.1p-0 = 1/16" : stdgo.GoString),
("0X.deadcafep4 = 0xdeadcafe/0x10000000" : stdgo.GoString),
("0x.1234P+12 = 0x1234/0x10" : stdgo.GoString),
("0x0p0 = 0." : stdgo.GoString),
("0Xdeadcafep+1 = 0x1bd5b95fc" : stdgo.GoString),
("0x1234P-10 = 0x1234/1024" : stdgo.GoString),
("0x0.0p0 = 0." : stdgo.GoString),
("0Xdead.cafep+1 = 0x1bd5b95fc/0x10000" : stdgo.GoString),
("0x12.34P-10 = 0x1234/0x40000" : stdgo.GoString),
("0Xdead_cafep+1 = 0xdeadcafep+1" : stdgo.GoString),
("0x_1234P-10 = 0x1234p-10" : stdgo.GoString),
("0X_dead_cafe.p-10 = 0xdeadcafe.p-10" : stdgo.GoString),
("0x12_34.P1_2_3 = 0x1234.p123" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _imagTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(12, 12, ...[
("1_234i = 1234i" : stdgo.GoString),
("1_234_567i = 1234567i" : stdgo.GoString),
("0.i = 0i" : stdgo.GoString),
("123.i = 123i" : stdgo.GoString),
("0123.i = 123i" : stdgo.GoString),
("0.e+1i = 0i" : stdgo.GoString),
("123.E-1_0i = 123e-10i" : stdgo.GoString),
("01_23.e123i = 123e123i" : stdgo.GoString),
("1e-1000000000i = 0i" : stdgo.GoString),
("1e+1000000000i = ?" : stdgo.GoString),
("6e5518446744i = ?" : stdgo.GoString),
("-6e5518446744i = ?" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _opTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(105, 105, ...[
("+ 0 = 0" : stdgo.GoString),
("+ ? = ?" : stdgo.GoString),
("- 1 = -1" : stdgo.GoString),
("- ? = ?" : stdgo.GoString),
("^ 0 = -1" : stdgo.GoString),
("^ ? = ?" : stdgo.GoString),
("! true = false" : stdgo.GoString),
("! false = true" : stdgo.GoString),
("! ? = ?" : stdgo.GoString),
("\"\" + \"\" = \"\"" : stdgo.GoString),
("\"foo\" + \"\" = \"foo\"" : stdgo.GoString),
("\"\" + \"bar\" = \"bar\"" : stdgo.GoString),
("\"foo\" + \"bar\" = \"foobar\"" : stdgo.GoString),
("0 + 0 = 0" : stdgo.GoString),
("0 + 0.1 = 0.1" : stdgo.GoString),
("0 + 0.1i = 0.1i" : stdgo.GoString),
("0.1 + 0.9 = 1" : stdgo.GoString),
("1e100 + 1e100 = 2e100" : stdgo.GoString),
("? + 0 = ?" : stdgo.GoString),
("0 + ? = ?" : stdgo.GoString),
("0 - 0 = 0" : stdgo.GoString),
("0 - 0.1 = -0.1" : stdgo.GoString),
("0 - 0.1i = -0.1i" : stdgo.GoString),
("1e100 - 1e100 = 0" : stdgo.GoString),
("? - 0 = ?" : stdgo.GoString),
("0 - ? = ?" : stdgo.GoString),
("0 * 0 = 0" : stdgo.GoString),
("1 * 0.1 = 0.1" : stdgo.GoString),
("1 * 0.1i = 0.1i" : stdgo.GoString),
("1i * 1i = -1" : stdgo.GoString),
("? * 0 = ?" : stdgo.GoString),
("0 * ? = ?" : stdgo.GoString),
("0 * 1e+1000000000 = ?" : stdgo.GoString),
("0 / 0 = \"division_by_zero\"" : stdgo.GoString),
("10 / 2 = 5" : stdgo.GoString),
("5 / 3 = 5/3" : stdgo.GoString),
("5i / 3i = 5/3" : stdgo.GoString),
("? / 0 = ?" : stdgo.GoString),
("0 / ? = ?" : stdgo.GoString),
("0 * 1e+1000000000i = ?" : stdgo.GoString),
("0 % 0 = \"runtime_error:_integer_divide_by_zero\"" : stdgo.GoString),
("10 % 3 = 1" : stdgo.GoString),
("? % 0 = ?" : stdgo.GoString),
("0 % ? = ?" : stdgo.GoString),
("0 & 0 = 0" : stdgo.GoString),
("12345 & 0 = 0" : stdgo.GoString),
("0xff & 0xf = 0xf" : stdgo.GoString),
("? & 0 = ?" : stdgo.GoString),
("0 & ? = ?" : stdgo.GoString),
("0 | 0 = 0" : stdgo.GoString),
("12345 | 0 = 12345" : stdgo.GoString),
("0xb | 0xa0 = 0xab" : stdgo.GoString),
("? | 0 = ?" : stdgo.GoString),
("0 | ? = ?" : stdgo.GoString),
("0 ^ 0 = 0" : stdgo.GoString),
("1 ^ -1 = -2" : stdgo.GoString),
("? ^ 0 = ?" : stdgo.GoString),
("0 ^ ? = ?" : stdgo.GoString),
("0 &^ 0 = 0" : stdgo.GoString),
("0xf &^ 1 = 0xe" : stdgo.GoString),
("1 &^ 0xf = 0" : stdgo.GoString),
("0 << 0 = 0" : stdgo.GoString),
("1 << 10 = 1024" : stdgo.GoString),
("0 >> 0 = 0" : stdgo.GoString),
("1024 >> 10 == 1" : stdgo.GoString),
("? << 0 == ?" : stdgo.GoString),
("? >> 10 == ?" : stdgo.GoString),
("false == false = true" : stdgo.GoString),
("false == true = false" : stdgo.GoString),
("true == false = false" : stdgo.GoString),
("true == true = true" : stdgo.GoString),
("false != false = false" : stdgo.GoString),
("false != true = true" : stdgo.GoString),
("true != false = true" : stdgo.GoString),
("true != true = false" : stdgo.GoString),
("\"foo\" == \"bar\" = false" : stdgo.GoString),
("\"foo\" != \"bar\" = true" : stdgo.GoString),
("\"foo\" < \"bar\" = false" : stdgo.GoString),
("\"foo\" <= \"bar\" = false" : stdgo.GoString),
("\"foo\" > \"bar\" = true" : stdgo.GoString),
("\"foo\" >= \"bar\" = true" : stdgo.GoString),
("0 == 0 = true" : stdgo.GoString),
("0 != 0 = false" : stdgo.GoString),
("0 < 10 = true" : stdgo.GoString),
("10 <= 10 = true" : stdgo.GoString),
("0 > 10 = false" : stdgo.GoString),
("10 >= 10 = true" : stdgo.GoString),
("1/123456789 == 1/123456789 == true" : stdgo.GoString),
("1/123456789 != 1/123456789 == false" : stdgo.GoString),
("1/123456789 < 1/123456788 == true" : stdgo.GoString),
("1/123456788 <= 1/123456789 == false" : stdgo.GoString),
("0.11 > 0.11 = false" : stdgo.GoString),
("0.11 >= 0.11 = true" : stdgo.GoString),
("? == 0 = false" : stdgo.GoString),
("? != 0 = false" : stdgo.GoString),
("? < 10 = false" : stdgo.GoString),
("? <= 10 = false" : stdgo.GoString),
("? > 10 = false" : stdgo.GoString),
("? >= 10 = false" : stdgo.GoString),
("0 == ? = false" : stdgo.GoString),
("0 != ? = false" : stdgo.GoString),
("0 < ? = false" : stdgo.GoString),
("10 <= ? = false" : stdgo.GoString),
("0 > ? = false" : stdgo.GoString),
("10 >= ? = false" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _xxx : stdgo.GoString = stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (68 : stdgo.GoInt));
var _issue14262 : stdgo.GoString = ("\"بموجب الشروط التالية نسب المصنف — يجب عليك أن تنسب العمل بالطريقة التي تحددها المؤلف أو المرخص (ولكن ليس بأي حال من الأحوال أن توحي وتقترح بتحول أو استخدامك للعمل).  المشاركة على قدم المساواة — إذا كنت يعدل ، والتغيير ، أو الاستفادة من هذا العمل ، قد ينتج عن توزيع العمل إلا في ظل تشابه او تطابق فى واحد لهذا الترخيص.\"" : stdgo.GoString);
var _stringTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(33, 33, ...[
({ _input : stdgo.Go.str()?.__copy__(), _short : ("unknown" : stdgo.GoString), _exact : ("unknown" : stdgo.GoString) } : T__struct_1),
({ _input : ("0x" : stdgo.GoString), _short : ("unknown" : stdgo.GoString), _exact : ("unknown" : stdgo.GoString) } : T__struct_1),
({ _input : ("\'" : stdgo.GoString), _short : ("unknown" : stdgo.GoString), _exact : ("unknown" : stdgo.GoString) } : T__struct_1),
({ _input : ("1f0" : stdgo.GoString), _short : ("unknown" : stdgo.GoString), _exact : ("unknown" : stdgo.GoString) } : T__struct_1),
({ _input : ("unknown" : stdgo.GoString), _short : ("unknown" : stdgo.GoString), _exact : ("unknown" : stdgo.GoString) } : T__struct_1),
({ _input : ("true" : stdgo.GoString), _short : ("true" : stdgo.GoString), _exact : ("true" : stdgo.GoString) } : T__struct_1),
({ _input : ("false" : stdgo.GoString), _short : ("false" : stdgo.GoString), _exact : ("false" : stdgo.GoString) } : T__struct_1),
({ _input : ("\"\"" : stdgo.GoString), _short : ("\"\"" : stdgo.GoString), _exact : ("\"\"" : stdgo.GoString) } : T__struct_1),
({ _input : ("\"foo\"" : stdgo.GoString), _short : ("\"foo\"" : stdgo.GoString), _exact : ("\"foo\"" : stdgo.GoString) } : T__struct_1),
({ _input : ((("\"" : stdgo.GoString) + _xxx?.__copy__() : stdgo.GoString) + ("xx\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _short : ((("\"" : stdgo.GoString) + _xxx?.__copy__() : stdgo.GoString) + ("xx\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _exact : ((("\"" : stdgo.GoString) + _xxx?.__copy__() : stdgo.GoString) + ("xx\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : T__struct_1),
({ _input : ((("\"" : stdgo.GoString) + _xxx?.__copy__() : stdgo.GoString) + ("xxx\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _short : ((("\"" : stdgo.GoString) + _xxx?.__copy__() : stdgo.GoString) + ("..." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _exact : ((("\"" : stdgo.GoString) + _xxx?.__copy__() : stdgo.GoString) + ("xxx\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : T__struct_1),
({ _input : (((("\"" : stdgo.GoString) + _xxx?.__copy__() : stdgo.GoString) + _xxx?.__copy__() : stdgo.GoString) + ("xxx\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _short : ((("\"" : stdgo.GoString) + _xxx?.__copy__() : stdgo.GoString) + ("..." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _exact : (((("\"" : stdgo.GoString) + _xxx?.__copy__() : stdgo.GoString) + _xxx?.__copy__() : stdgo.GoString) + ("xxx\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : T__struct_1),
({ _input : _issue14262?.__copy__(), _short : ("\"بموجب الشروط التالية نسب المصنف — يجب عليك أن تنسب العمل بالطريقة ال..." : stdgo.GoString), _exact : _issue14262?.__copy__() } : T__struct_1),
({ _input : ("0" : stdgo.GoString), _short : ("0" : stdgo.GoString), _exact : ("0" : stdgo.GoString) } : T__struct_1),
({ _input : ("-1" : stdgo.GoString), _short : ("-1" : stdgo.GoString), _exact : ("-1" : stdgo.GoString) } : T__struct_1),
({ _input : ("12345" : stdgo.GoString), _short : ("12345" : stdgo.GoString), _exact : ("12345" : stdgo.GoString) } : T__struct_1),
({ _input : ("-12345678901234567890" : stdgo.GoString), _short : ("-12345678901234567890" : stdgo.GoString), _exact : ("-12345678901234567890" : stdgo.GoString) } : T__struct_1),
({ _input : ("12345678901234567890" : stdgo.GoString), _short : ("12345678901234567890" : stdgo.GoString), _exact : ("12345678901234567890" : stdgo.GoString) } : T__struct_1),
({ _input : ("0." : stdgo.GoString), _short : ("0" : stdgo.GoString), _exact : ("0" : stdgo.GoString) } : T__struct_1),
({ _input : ("-0.0" : stdgo.GoString), _short : ("0" : stdgo.GoString), _exact : ("0" : stdgo.GoString) } : T__struct_1),
({ _input : ("10.0" : stdgo.GoString), _short : ("10" : stdgo.GoString), _exact : ("10" : stdgo.GoString) } : T__struct_1),
({ _input : ("2.1" : stdgo.GoString), _short : ("2.1" : stdgo.GoString), _exact : ("21/10" : stdgo.GoString) } : T__struct_1),
({ _input : ("-2.1" : stdgo.GoString), _short : ("-2.1" : stdgo.GoString), _exact : ("-21/10" : stdgo.GoString) } : T__struct_1),
({ _input : ("1e9999" : stdgo.GoString), _short : ("1e+9999" : stdgo.GoString), _exact : ("0x.f8d4a9da224650a8cb2959e10d985ad92adbd44c62917e608b1f24c0e1b76b6f61edffeb15c135a4b601637315f7662f325f82325422b244286a07663c9415d2p+33216" : stdgo.GoString) } : T__struct_1),
({ _input : ("1e-9999" : stdgo.GoString), _short : ("1e-9999" : stdgo.GoString), _exact : ("0x.83b01ba6d8c0425eec1b21e96f7742d63c2653ed0a024cf8a2f9686df578d7b07d7a83d84df6a2ec70a921d1f6cd5574893a7eda4d28ee719e13a5dce2700759p-33215" : stdgo.GoString) } : T__struct_1),
({ _input : ("2.71828182845904523536028747135266249775724709369995957496696763" : stdgo.GoString), _short : ("2.71828" : stdgo.GoString), _exact : ("271828182845904523536028747135266249775724709369995957496696763/100000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString) } : T__struct_1),
({ _input : ("0e9999999999" : stdgo.GoString), _short : ("0" : stdgo.GoString), _exact : ("0" : stdgo.GoString) } : T__struct_1),
({ _input : ("-6e-1886451601" : stdgo.GoString), _short : ("0" : stdgo.GoString), _exact : ("0" : stdgo.GoString) } : T__struct_1),
({ _input : ("0i" : stdgo.GoString), _short : ("(0 + 0i)" : stdgo.GoString), _exact : ("(0 + 0i)" : stdgo.GoString) } : T__struct_1),
({ _input : ("-0i" : stdgo.GoString), _short : ("(0 + 0i)" : stdgo.GoString), _exact : ("(0 + 0i)" : stdgo.GoString) } : T__struct_1),
({ _input : ("10i" : stdgo.GoString), _short : ("(0 + 10i)" : stdgo.GoString), _exact : ("(0 + 10i)" : stdgo.GoString) } : T__struct_1),
({ _input : ("-10i" : stdgo.GoString), _short : ("(0 + -10i)" : stdgo.GoString), _exact : ("(0 + -10i)" : stdgo.GoString) } : T__struct_1),
({ _input : ("1e9999i" : stdgo.GoString), _short : ("(0 + 1e+9999i)" : stdgo.GoString), _exact : ("(0 + 0x.f8d4a9da224650a8cb2959e10d985ad92adbd44c62917e608b1f24c0e1b76b6f61edffeb15c135a4b601637315f7662f325f82325422b244286a07663c9415d2p+33216i)" : stdgo.GoString) } : T__struct_1)].concat([for (i in 33 ... (33 > 33 ? 33 : 33 : stdgo.GoInt).toBasic()) ({ _input : ("" : stdgo.GoString), _short : ("" : stdgo.GoString), _exact : ("" : stdgo.GoString) } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
var _optab : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.token.Token.Token> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo._internal.go.token.Token.Token>();
        x.__defaultValue__ = () -> ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token);
        @:mergeBlock {
            x.set(("!" : stdgo.GoString), (43 : stdgo._internal.go.token.Token.Token));
            x.set(("+" : stdgo.GoString), (12 : stdgo._internal.go.token.Token.Token));
            x.set(("-" : stdgo.GoString), (13 : stdgo._internal.go.token.Token.Token));
            x.set(("*" : stdgo.GoString), (14 : stdgo._internal.go.token.Token.Token));
            x.set(("/" : stdgo.GoString), (15 : stdgo._internal.go.token.Token.Token));
            x.set(("%" : stdgo.GoString), (16 : stdgo._internal.go.token.Token.Token));
            x.set(("<<" : stdgo.GoString), (20 : stdgo._internal.go.token.Token.Token));
            x.set((">>" : stdgo.GoString), (21 : stdgo._internal.go.token.Token.Token));
            x.set(("&" : stdgo.GoString), (17 : stdgo._internal.go.token.Token.Token));
            x.set(("|" : stdgo.GoString), (18 : stdgo._internal.go.token.Token.Token));
            x.set(("^" : stdgo.GoString), (19 : stdgo._internal.go.token.Token.Token));
            x.set(("&^" : stdgo.GoString), (22 : stdgo._internal.go.token.Token.Token));
            x.set(("==" : stdgo.GoString), (39 : stdgo._internal.go.token.Token.Token));
            x.set(("!=" : stdgo.GoString), (44 : stdgo._internal.go.token.Token.Token));
            x.set(("<" : stdgo.GoString), (40 : stdgo._internal.go.token.Token.Token));
            x.set(("<=" : stdgo.GoString), (45 : stdgo._internal.go.token.Token.Token));
            x.set((">" : stdgo.GoString), (41 : stdgo._internal.go.token.Token.Token));
            x.set((">=" : stdgo.GoString), (46 : stdgo._internal.go.token.Token.Token));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.token.Token.Token>);
var _fracTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("-1" : stdgo.GoString), ("1.2" : stdgo.GoString), ("-0.991" : stdgo.GoString), ("2.718281828" : stdgo.GoString), ("3.14159265358979323e-10" : stdgo.GoString), ("1e100" : stdgo.GoString), ("1e1000" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _bytesTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("123456789" : stdgo.GoString), ("123456789012345678901234567890123456789012345678901234567890" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _bitLenTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(7, 7, ...[({ _val : (0i64 : stdgo.GoInt64), _want : (0 : stdgo.GoInt) } : T__struct_2), ({ _val : (1i64 : stdgo.GoInt64), _want : (1 : stdgo.GoInt) } : T__struct_2), ({ _val : (-16i64 : stdgo.GoInt64), _want : (5 : stdgo.GoInt) } : T__struct_2), ({ _val : (2305843009213693952i64 : stdgo.GoInt64), _want : (62 : stdgo.GoInt) } : T__struct_2), ({ _val : (4611686018427387904i64 : stdgo.GoInt64), _want : (63 : stdgo.GoInt) } : T__struct_2), ({ _val : (-4611686018427387904i64 : stdgo.GoInt64), _want : (63 : stdgo.GoInt) } : T__struct_2), ({ _val : (-9223372036854775808i64 : stdgo.GoInt64), _want : (64 : stdgo.GoInt) } : T__struct_2)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _val : (0 : stdgo.GoInt64), _want : (0 : stdgo.GoInt) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
@:keep class Value_static_extension {
    static public function _implementsValue(t:Value):Void t._implementsValue();
    static public function exactString(t:Value):stdgo.GoString return t.exactString();
    static public function string(t:Value):stdgo.GoString return t.string();
    static public function kind(t:Value):Kind return t.kind();
}
typedef Value = stdgo.StructType & {
    /**
        Kind returns the value kind.
        
        
    **/
    public dynamic function kind():Kind;
    /**
        String returns a short, quoted (human-readable) form of the value.
        For numeric values, the result may be an approximation;
        for String values the result may be a shortened string.
        Use ExactString for a string representing a value exactly.
        
        
    **/
    public dynamic function string():stdgo.GoString;
    /**
        ExactString returns an exact, quoted (human-readable) form of the value.
        If the Value is of Kind String, use StringVal to obtain the unquoted string.
        
        
    **/
    public dynamic function exactString():stdgo.GoString;
    /**
        Prevent external implementations.
        
        
    **/
    public dynamic function _implementsValue():Void;
};
@:structInit @:private @:using(stdgo._internal.go.constant.Constant.T_unknownVal_static_extension) class T_unknownVal {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unknownVal();
    }
}
@:structInit @:private @:using(stdgo._internal.go.constant.Constant.T_stringVal_static_extension) class T_stringVal {
    public var _mu : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
    public var _s : stdgo.GoString = "";
    public var _l : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal> = (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>);
    public var _r : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal> = (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>);
    public function new(?_mu:stdgo._internal.sync.Sync.Mutex, ?_s:stdgo.GoString, ?_l:stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>, ?_r:stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) {
        if (_mu != null) this._mu = _mu;
        if (_s != null) this._s = _s;
        if (_l != null) this._l = _l;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stringVal(_mu, _s, _l, _r);
    }
}
@:structInit @:private @:using(stdgo._internal.go.constant.Constant.T_intVal_static_extension) class T_intVal {
    public var _val : stdgo.Ref<stdgo._internal.math.big.Big.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
    public function new(?_val:stdgo.Ref<stdgo._internal.math.big.Big.Int_>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_intVal(_val);
    }
}
@:structInit @:private @:using(stdgo._internal.go.constant.Constant.T_ratVal_static_extension) class T_ratVal {
    public var _val : stdgo.Ref<stdgo._internal.math.big.Big.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big.Rat>);
    public function new(?_val:stdgo.Ref<stdgo._internal.math.big.Big.Rat>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ratVal(_val);
    }
}
@:structInit @:private @:using(stdgo._internal.go.constant.Constant.T_floatVal_static_extension) class T_floatVal {
    public var _val : stdgo.Ref<stdgo._internal.math.big.Big.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big.Float_>);
    public function new(?_val:stdgo.Ref<stdgo._internal.math.big.Big.Float_>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_floatVal(_val);
    }
}
@:structInit @:private @:using(stdgo._internal.go.constant.Constant.T_complexVal_static_extension) class T_complexVal {
    public var _re : stdgo._internal.go.constant.Constant.Value = (null : stdgo._internal.go.constant.Constant.Value);
    public var _im : stdgo._internal.go.constant.Constant.Value = (null : stdgo._internal.go.constant.Constant.Value);
    public function new(?_re:stdgo._internal.go.constant.Constant.Value, ?_im:stdgo._internal.go.constant.Constant.Value) {
        if (_re != null) this._re = _re;
        if (_im != null) this._im = _im;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_complexVal(_re, _im);
    }
}
@:structInit @:private class T_makeTestCase {
    public var _kind : stdgo._internal.go.constant.Constant.Kind = ((0 : stdgo.GoInt) : stdgo._internal.go.constant.Constant.Kind);
    public var _arg : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _want : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_kind:stdgo._internal.go.constant.Constant.Kind, ?_arg:stdgo.AnyInterface, ?_want:stdgo.AnyInterface) {
        if (_kind != null) this._kind = _kind;
        if (_arg != null) this._arg = _arg;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_makeTestCase(_kind, _arg, _want);
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
@:keep @:allow(stdgo._internal.go.constant.Constant.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.go.constant.Constant.T__struct_0_static_extension) typedef T__struct_0 = {};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.constant.Constant.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.go.constant.Constant.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _input : stdgo.GoString;
    public var _short : stdgo.GoString;
    public var _exact : stdgo.GoString;
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
@:keep @:allow(stdgo._internal.go.constant.Constant.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.go.constant.Constant.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _val : stdgo.GoInt64;
    public var _want : stdgo.GoInt;
};
@:named @:using(stdgo._internal.go.constant.Constant.Kind_static_extension) typedef Kind = stdgo.GoInt;
@:named @:using(stdgo._internal.go.constant.Constant.T_boolVal_static_extension) typedef T_boolVal = Bool;
@:named @:using(stdgo._internal.go.constant.Constant.T_int64Val_static_extension) typedef T_int64Val = stdgo.GoInt64;
function _reverse(_x:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        var _n:stdgo.GoInt = (_x.length);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i + _i : stdgo.GoInt) < _n : Bool), _i++, {
                {
                    final __tmp__0 = _x[((_n - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)]?.__copy__();
                    final __tmp__1 = _x[(_i : stdgo.GoInt)]?.__copy__();
                    final __tmp__2 = _x;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _x;
                    final __tmp__5 = ((_n - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = __tmp__0;
                    __tmp__4[__tmp__5] = __tmp__1;
                };
            });
        };
        return _x;
    }
function _newInt():stdgo.Ref<stdgo._internal.math.big.Big.Int_> {
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
    }
function _newRat():stdgo.Ref<stdgo._internal.math.big.Big.Rat> {
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big.Rat>);
    }
function _newFloat():stdgo.Ref<stdgo._internal.math.big.Big.Float_> {
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>).setPrec((512u32 : stdgo.GoUInt));
    }
function _i64toi(_x:T_int64Val):T_intVal {
        return (new stdgo._internal.go.constant.Constant.T_intVal(_newInt().setInt64((_x : stdgo.GoInt64))) : stdgo._internal.go.constant.Constant.T_intVal);
    }
function _i64tor(_x:T_int64Val):T_ratVal {
        return (new stdgo._internal.go.constant.Constant.T_ratVal(_newRat().setInt64((_x : stdgo.GoInt64))) : stdgo._internal.go.constant.Constant.T_ratVal);
    }
function _i64tof(_x:T_int64Val):T_floatVal {
        return (new stdgo._internal.go.constant.Constant.T_floatVal(_newFloat().setInt64((_x : stdgo.GoInt64))) : stdgo._internal.go.constant.Constant.T_floatVal);
    }
function _itor(_x:T_intVal):T_ratVal {
        return (new stdgo._internal.go.constant.Constant.T_ratVal(_newRat().setInt(_x._val)) : stdgo._internal.go.constant.Constant.T_ratVal);
    }
function _itof(_x:T_intVal):T_floatVal {
        return (new stdgo._internal.go.constant.Constant.T_floatVal(_newFloat().setInt(_x._val)) : stdgo._internal.go.constant.Constant.T_floatVal);
    }
function _rtof(_x:T_ratVal):T_floatVal {
        return (new stdgo._internal.go.constant.Constant.T_floatVal(_newFloat().setRat(_x._val)) : stdgo._internal.go.constant.Constant.T_floatVal);
    }
function _vtoc(_x:Value):T_complexVal {
        return (new stdgo._internal.go.constant.Constant.T_complexVal(_x, stdgo.Go.asInterface(((0i64 : stdgo._internal.go.constant.Constant.T_int64Val) : T_int64Val))) : stdgo._internal.go.constant.Constant.T_complexVal);
    }
function _makeInt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):Value {
        if (_x.isInt64()) {
            return stdgo.Go.asInterface((_x.int64() : T_int64Val));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_intVal(_x) : stdgo._internal.go.constant.Constant.T_intVal));
    }
function _makeRat(_x:stdgo.Ref<stdgo._internal.math.big.Big.Rat>):Value {
        var _a = _x.num();
        var _b = _x.denom();
        if ((_smallInt(_a) && _smallInt(_b) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_ratVal(_x) : stdgo._internal.go.constant.Constant.T_ratVal));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_floatVal(_newFloat().setRat(_x)) : stdgo._internal.go.constant.Constant.T_floatVal));
    }
function _makeFloat(_x:stdgo.Ref<stdgo._internal.math.big.Big.Float_>):Value {
        if (_x.sign() == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface(_floatVal0);
        };
        if (_x.isInf()) {
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_unknownVal() : stdgo._internal.go.constant.Constant.T_unknownVal));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_floatVal(_x) : stdgo._internal.go.constant.Constant.T_floatVal));
    }
function _makeComplex(_re:Value, _im:Value):Value {
        if (((_re.kind() == (0 : stdgo._internal.go.constant.Constant.Kind)) || (_im.kind() == (0 : stdgo._internal.go.constant.Constant.Kind)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_unknownVal() : stdgo._internal.go.constant.Constant.T_unknownVal));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_complexVal(_re, _im) : stdgo._internal.go.constant.Constant.T_complexVal));
    }
function _makeFloatFromLiteral(_lit:stdgo.GoString):Value {
        {
            var __tmp__ = _newFloat().setString(_lit?.__copy__()), _f:stdgo.Ref<stdgo._internal.math.big.Big.Float_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (_smallFloat(_f)) {
                    if (_f.sign() == ((0 : stdgo.GoInt))) {
                        _lit = ("0" : stdgo.GoString);
                    };
                    {
                        var __tmp__ = _newRat().setString(_lit?.__copy__()), _r:stdgo.Ref<stdgo._internal.math.big.Big.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_ratVal(_r) : stdgo._internal.go.constant.Constant.T_ratVal));
                        };
                    };
                };
                return _makeFloat(_f);
            };
        };
        return (null : stdgo._internal.go.constant.Constant.Value);
    }
function _smallInt(_x:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):Bool {
        return (_x.bitLen() < (4096 : stdgo.GoInt) : Bool);
    }
function _smallFloat64(_x:stdgo.GoFloat64):Bool {
        if (stdgo._internal.math.Math.isInf(_x, (0 : stdgo.GoInt))) {
            return false;
        };
        var __tmp__ = stdgo._internal.math.Math.frexp(_x), __1:stdgo.GoFloat64 = __tmp__._0, _e:stdgo.GoInt = __tmp__._1;
        return (((-4096 : stdgo.GoInt) < _e : Bool) && (_e < (4096 : stdgo.GoInt) : Bool) : Bool);
    }
function _smallFloat(_x:stdgo.Ref<stdgo._internal.math.big.Big.Float_>):Bool {
        if (_x.isInf()) {
            return false;
        };
        var _e:stdgo.GoInt = _x.mantExp(null);
        return (((-4096 : stdgo.GoInt) < _e : Bool) && (_e < (4096 : stdgo.GoInt) : Bool) : Bool);
    }
function makeUnknown():Value {
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_unknownVal() : stdgo._internal.go.constant.Constant.T_unknownVal));
    }
function makeBool(_b:Bool):Value {
        return stdgo.Go.asInterface((_b : T_boolVal));
    }
function makeString(_s:stdgo.GoString):Value {
        if (_s == (stdgo.Go.str())) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(_emptyString) : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>));
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _s : _s?.__copy__() } : stdgo._internal.go.constant.Constant.T_stringVal)) : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>));
    }
function makeInt64(_x:stdgo.GoInt64):Value {
        return stdgo.Go.asInterface((_x : T_int64Val));
    }
function makeUint64(_x:stdgo.GoUInt64):Value {
        if ((_x < (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
            return stdgo.Go.asInterface(((_x : stdgo.GoInt64) : T_int64Val));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_intVal(_newInt().setUint64(_x)) : stdgo._internal.go.constant.Constant.T_intVal));
    }
function makeFloat64(_x:stdgo.GoFloat64):Value {
        if ((stdgo._internal.math.Math.isInf(_x, (0 : stdgo.GoInt)) || stdgo._internal.math.Math.isNaN(_x) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_unknownVal() : stdgo._internal.go.constant.Constant.T_unknownVal));
        };
        if (_smallFloat64(_x)) {
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_ratVal(_newRat().setFloat64((_x + (0 : stdgo.GoFloat64) : stdgo.GoFloat64))) : stdgo._internal.go.constant.Constant.T_ratVal));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_floatVal(_newFloat().setFloat64((_x + (0 : stdgo.GoFloat64) : stdgo.GoFloat64))) : stdgo._internal.go.constant.Constant.T_floatVal));
    }
function makeFromLiteral(_lit:stdgo.GoString, _tok:stdgo._internal.go.token.Token.Token, _zero:stdgo.GoUInt):Value {
        if (_zero != ((0u32 : stdgo.GoUInt))) {
            throw stdgo.Go.toInterface(("MakeFromLiteral called with non-zero last argument" : stdgo.GoString));
        };
        {
            final __value__ = _tok;
            if (__value__ == ((5 : stdgo._internal.go.token.Token.Token))) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv.parseInt(_lit?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _x:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return stdgo.Go.asInterface((_x : T_int64Val));
                    };
                };
                {
                    var __tmp__ = _newInt().setString(_lit?.__copy__(), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_intVal(_x) : stdgo._internal.go.constant.Constant.T_intVal));
                    };
                };
            } else if (__value__ == ((6 : stdgo._internal.go.token.Token.Token))) {
                {
                    var _x:stdgo._internal.go.constant.Constant.Value = _makeFloatFromLiteral(_lit?.__copy__());
                    if (_x != null) {
                        return _x;
                    };
                };
            } else if (__value__ == ((7 : stdgo._internal.go.token.Token.Token))) {
                {
                    var _n:stdgo.GoInt = (_lit.length);
                    if (((_n > (0 : stdgo.GoInt) : Bool) && (_lit[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (105 : stdgo.GoUInt8)) : Bool)) {
                        {
                            var _im:stdgo._internal.go.constant.Constant.Value = _makeFloatFromLiteral((_lit.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                            if (_im != null) {
                                return _makeComplex(stdgo.Go.asInterface(((0i64 : stdgo._internal.go.constant.Constant.T_int64Val) : T_int64Val)), _im);
                            };
                        };
                    };
                };
            } else if (__value__ == ((8 : stdgo._internal.go.token.Token.Token))) {
                {
                    var _n:stdgo.GoInt = (_lit.length);
                    if ((_n >= (2 : stdgo.GoInt) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv.unquoteChar((_lit.__slice__((1 : stdgo.GoInt), (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (39 : stdgo.GoUInt8)), _code:stdgo.GoInt32 = __tmp__._0, __1:Bool = __tmp__._1, __2:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                            if (_err == null) {
                                return makeInt64((_code : stdgo.GoInt64));
                            };
                        };
                    };
                };
            } else if (__value__ == ((9 : stdgo._internal.go.token.Token.Token))) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv.unquote(_lit?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return makeString(_s?.__copy__());
                    };
                };
            } else {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v is not a valid token" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok))));
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_unknownVal() : stdgo._internal.go.constant.Constant.T_unknownVal));
    }
function boolVal(_x:Value):Bool {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_boolVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__ == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__.__underlying__().value;
                return (_x : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return false;
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not a Bool" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
function stringVal(_x:Value):stdgo.GoString {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<T_stringVal>))) {
                var _x:stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__.__underlying__().value;
                return _x._string()?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return stdgo.Go.str()?.__copy__();
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not a String" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
function int64Val(_x:Value):{ var _0 : stdgo.GoInt64; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                return { _0 : (_x : stdgo.GoInt64), _1 : true };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return { _0 : _x._val.int64(), _1 : false };
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return { _0 : (0i64 : stdgo.GoInt64), _1 : false };
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not an Int" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
function uint64Val(_x:Value):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                return { _0 : (_x : stdgo.GoUInt64), _1 : (_x >= (0i64 : stdgo._internal.go.constant.Constant.T_int64Val) : Bool) };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return { _0 : _x._val.uint64(), _1 : _x._val.isUint64() };
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : false };
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not an Int" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
function float32Val(_x:Value):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                var _f:stdgo.GoFloat32 = (_x : stdgo.GoFloat32);
                return { _0 : _f, _1 : (_f : T_int64Val) == (_x) };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                var __tmp__ = _newFloat().setInt(_x._val).float32(), _f:stdgo.GoFloat32 = __tmp__._0, _acc:stdgo._internal.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo._internal.math.big.Big.Accuracy)) };
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                return _x._val.float32();
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                var __tmp__ = _x._val.float32(), _f:stdgo.GoFloat32 = __tmp__._0, _acc:stdgo._internal.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo._internal.math.big.Big.Accuracy)) };
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return { _0 : (0 : stdgo.GoFloat64), _1 : false };
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not a Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
function float64Val(_x:Value):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                var _f:stdgo.GoFloat64 = ((_x : stdgo.GoInt64) : stdgo.GoFloat64);
                return { _0 : _f, _1 : (_f : T_int64Val) == (_x) };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                var __tmp__ = _newFloat().setInt(_x._val).float64(), _f:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo._internal.math.big.Big.Accuracy)) };
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                return _x._val.float64();
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                var __tmp__ = _x._val.float64(), _f:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo._internal.math.big.Big.Accuracy)) };
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return { _0 : (0 : stdgo.GoFloat64), _1 : false };
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not a Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
function val(_x:Value):stdgo.AnyInterface {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_boolVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__ == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__.__underlying__().value;
                return stdgo.Go.toInterface((_x : Bool));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<T_stringVal>))) {
                var _x:stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(_x._string());
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                return stdgo.Go.toInterface((_x : stdgo.GoInt64));
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_x._val));
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_x._val));
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_x._val));
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                return (null : stdgo.AnyInterface);
            };
        };
    }
function make(_x:stdgo.AnyInterface):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _x:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                return stdgo.Go.asInterface((_x : T_boolVal));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _x:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ _s : _x?.__copy__() } : stdgo._internal.go.constant.Constant.T_stringVal)) : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                var _x:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo.Go.asInterface((_x : T_int64Val));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big.Int_>))) {
                var _x:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big.Int_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big.Int_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big.Int_>) : __type__.__underlying__().value;
                return _makeInt(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big.Rat>))) {
                var _x:stdgo.Ref<stdgo._internal.math.big.Big.Rat> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big.Rat>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big.Rat>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big.Rat>) : __type__.__underlying__().value;
                return _makeRat(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.math.big.Big.Float_>))) {
                var _x:stdgo.Ref<stdgo._internal.math.big.Big.Float_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big.Float_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big.Float_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big.Float_>) : __type__.__underlying__().value;
                return _makeFloat(_x);
            } else {
                var _x:stdgo.AnyInterface = __type__?.__underlying__();
                return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_unknownVal() : stdgo._internal.go.constant.Constant.T_unknownVal));
            };
        };
    }
function bitLen(_x:Value):stdgo.GoInt {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                var _u:stdgo.GoUInt64 = (_x : stdgo.GoUInt64);
                if ((_x < (0i64 : stdgo._internal.go.constant.Constant.T_int64Val) : Bool)) {
                    _u = (-_x : stdgo.GoUInt64);
                };
                return ((64 : stdgo.GoInt) - stdgo._internal.math.bits.Bits.leadingZeros64(_u) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return _x._val.bitLen();
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return (0 : stdgo.GoInt);
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not an Int" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
function sign(_x:Value):stdgo.GoInt {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                if ((_x < (0i64 : stdgo._internal.go.constant.Constant.T_int64Val) : Bool)) {
                    return (-1 : stdgo.GoInt);
                } else if ((_x > (0i64 : stdgo._internal.go.constant.Constant.T_int64Val) : Bool)) {
                    return (1 : stdgo.GoInt);
                };
                return (0 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return _x._val.sign();
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                return _x._val.sign();
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                return _x._val.sign();
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                return (sign(_x._re) | sign(_x._im) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return (1 : stdgo.GoInt);
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not numeric" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
function bytes(_x:Value):stdgo.Slice<stdgo.GoByte> {
        var _t:T_intVal = ({} : stdgo._internal.go.constant.Constant.T_intVal);
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                _t = _i64toi(_x)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                _t = _x?.__copy__();
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not an Int" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
        var _words = _t._val.bits();
        var _bytes = (new stdgo.Slice<stdgo.GoUInt8>(((_words.length) * (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__1 => _w in _words) {
            {
                var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_j < (4 : stdgo.GoInt) : Bool), _j++, {
                    _bytes[(_i : stdgo.GoInt)] = (_w : stdgo.GoByte);
                    _w = (_w >> ((8i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big.Word);
                    _i++;
                });
            };
        };
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_bytes[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            _i--;
        };
        return (_bytes.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
    }
function makeFromBytes(_bytes:stdgo.Slice<stdgo.GoByte>):Value {
        var _words = (new stdgo.Slice<stdgo._internal.math.big.Big.Word>(((((_bytes.length) + (3 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big.Word>);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _w:stdgo._internal.math.big.Big.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big.Word);
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        for (__1 => _b in _bytes) {
            _w = (_w | (((_b : stdgo._internal.math.big.Big.Word) << _s : stdgo._internal.math.big.Big.Word)) : stdgo._internal.math.big.Big.Word);
            {
                _s = (_s + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                if (_s == ((32u32 : stdgo.GoUInt))) {
                    _words[(_i : stdgo.GoInt)] = _w;
                    _i++;
                    _w = (0u32 : stdgo._internal.math.big.Big.Word);
                    _s = (0u32 : stdgo.GoUInt);
                };
            };
        };
        if ((_i < (_words.length) : Bool)) {
            _words[(_i : stdgo.GoInt)] = _w;
            _i++;
        };
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_words[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big.Word)) : Bool)) {
            _i--;
        };
        return _makeInt(_newInt().setBits((_words.__slice__(0, _i) : stdgo.Slice<stdgo._internal.math.big.Big.Word>)));
    }
function num(_x:Value):Value {
        {
            final __type__ = _x;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal))) {
                        var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                        return _x;
                    } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                        var _x:stdgo._internal.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                        return _makeInt(_x._val.num());
                    } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                        var _x:stdgo._internal.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                        if (_smallFloat(_x._val)) {
                            var __tmp__ = _x._val.rat(null), _r:stdgo.Ref<stdgo._internal.math.big.Big.Rat> = __tmp__._0, __1:stdgo._internal.math.big.Big.Accuracy = __tmp__._1;
                            return _makeInt(_r.num());
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                        var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                        break;
                    } else {
                        var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not Int or Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
                    };
                    break;
                };
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_unknownVal() : stdgo._internal.go.constant.Constant.T_unknownVal));
    }
function denom(_x:Value):Value {
        {
            final __type__ = _x;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal))) {
                        var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                        return stdgo.Go.asInterface(((1i64 : stdgo._internal.go.constant.Constant.T_int64Val) : T_int64Val));
                    } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                        var _x:stdgo._internal.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                        return _makeInt(_x._val.denom());
                    } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                        var _x:stdgo._internal.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                        if (_smallFloat(_x._val)) {
                            var __tmp__ = _x._val.rat(null), _r:stdgo.Ref<stdgo._internal.math.big.Big.Rat> = __tmp__._0, __1:stdgo._internal.math.big.Big.Accuracy = __tmp__._1;
                            return _makeInt(_r.denom());
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                        var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                        break;
                    } else {
                        var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not Int or Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
                    };
                    break;
                };
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_unknownVal() : stdgo._internal.go.constant.Constant.T_unknownVal));
    }
function makeImag(_x:Value):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal)) || stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                return _makeComplex(stdgo.Go.asInterface(((0i64 : stdgo._internal.go.constant.Constant.T_int64Val) : T_int64Val)), _x);
            } else {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not Int or Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
function real(_x:Value):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal)) || stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal)) || stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                return _x._re;
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not numeric" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
function imag(_x:Value):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_x);
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal)) || stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                return stdgo.Go.asInterface(((0i64 : stdgo._internal.go.constant.Constant.T_int64Val) : T_int64Val));
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                return _x._im;
            } else {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("%v not numeric" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
function toInt(_x:Value):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                if (_x._val.isInt()) {
                    return _makeInt(_x._val.num());
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                if (_smallFloat(_x._val)) {
                    var _i = _newInt();
                    {
                        var __tmp__ = _x._val.int_(_i), __1:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _acc:stdgo._internal.math.big.Big.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo._internal.math.big.Big.Accuracy))) {
                            return _makeInt(_i);
                        };
                    };
                    {};
                    var _t:stdgo._internal.math.big.Big.Float_ = ({} : stdgo._internal.math.big.Big.Float_);
                    _t.setPrec((508u32 : stdgo.GoUInt));
                    _t.setMode((2 : stdgo._internal.math.big.Big.RoundingMode));
                    _t.set(_x._val);
                    {
                        var __tmp__ = _t.int_(_i), __2:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _acc:stdgo._internal.math.big.Big.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo._internal.math.big.Big.Accuracy))) {
                            return _makeInt(_i);
                        };
                    };
                    _t.setMode((3 : stdgo._internal.math.big.Big.RoundingMode));
                    _t.set(_x._val);
                    {
                        var __tmp__ = _t.int_(_i), __3:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _acc:stdgo._internal.math.big.Big.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo._internal.math.big.Big.Accuracy))) {
                            return _makeInt(_i);
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                {
                    var _re:stdgo._internal.go.constant.Constant.Value = toFloat(stdgo.Go.asInterface(_x));
                    if (_re.kind() == ((4 : stdgo._internal.go.constant.Constant.Kind))) {
                        return toInt(_re);
                    };
                };
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_unknownVal() : stdgo._internal.go.constant.Constant.T_unknownVal));
    }
function toFloat(_x:Value):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_i64tor(_x));
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                if (_smallInt(_x._val)) {
                    return stdgo.Go.asInterface(_itor(_x?.__copy__()));
                };
                return stdgo.Go.asInterface(_itof(_x?.__copy__()));
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                if (sign(_x._im) == ((0 : stdgo.GoInt))) {
                    return toFloat(_x._re);
                };
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_unknownVal() : stdgo._internal.go.constant.Constant.T_unknownVal));
    }
function toComplex(_x:Value):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal)) || stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                return stdgo.Go.asInterface(_vtoc(_x));
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_x);
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant.T_unknownVal() : stdgo._internal.go.constant.Constant.T_unknownVal));
    }
function _is32bit(_x:stdgo.GoInt64):Bool {
        {};
        return (((-2147483648i64 : stdgo.GoInt64) <= _x : Bool) && (_x <= (2147483647i64 : stdgo.GoInt64) : Bool) : Bool);
    }
function _is63bit(_x:stdgo.GoInt64):Bool {
        {};
        return (((-4611686018427387904i64 : stdgo.GoInt64) <= _x : Bool) && (_x <= (4611686018427387903i64 : stdgo.GoInt64) : Bool) : Bool);
    }
function unaryOp(_op:stdgo._internal.go.token.Token.Token, _y:Value, _prec:stdgo.GoUInt):Value {
        stdgo._internal.internal.Macro.controlFlow({
            {
                final __value__ = _op;
                if (__value__ == ((12 : stdgo._internal.go.token.Token.Token))) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : T_unknownVal)) || stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal)) || stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal)) || stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                            return _y;
                        };
                    };
                } else if (__value__ == ((13 : stdgo._internal.go.token.Token.Token))) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                            return stdgo.Go.asInterface(_y);
                        } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                            var _y:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                            {
                                var _z:stdgo._internal.go.constant.Constant.T_int64Val = -_y;
                                if (_z != (_y)) {
                                    return stdgo.Go.asInterface(_z);
                                };
                            };
                            return _makeInt(_newInt().neg(stdgo._internal.math.big.Big.newInt((_y : stdgo.GoInt64))));
                        } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                            var _y:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                            return _makeInt(_newInt().neg(_y._val));
                        } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                            var _y:stdgo._internal.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                            return _makeRat(_newRat().neg(_y._val));
                        } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                            var _y:stdgo._internal.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                            return _makeFloat(_newFloat().neg(_y._val));
                        } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                            var _y:stdgo._internal.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                            var _re:stdgo._internal.go.constant.Constant.Value = unaryOp((13 : stdgo._internal.go.token.Token.Token), _y._re, (0u32 : stdgo.GoUInt));
                            var _im:stdgo._internal.go.constant.Constant.Value = unaryOp((13 : stdgo._internal.go.token.Token.Token), _y._im, (0u32 : stdgo.GoUInt));
                            return _makeComplex(_re, _im);
                        };
                    };
                } else if (__value__ == ((19 : stdgo._internal.go.token.Token.Token))) {
                    var _z = _newInt();
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                            return stdgo.Go.asInterface(_y);
                        } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                            var _y:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                            _z.not(stdgo._internal.math.big.Big.newInt((_y : stdgo.GoInt64)));
                        } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                            var _y:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                            _z.not(_y._val);
                        } else {
                            var _y:stdgo._internal.go.constant.Constant.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant.Value) : cast __type__;
                            @:goto "Error";
                        };
                    };
                    if ((_prec > (0u32 : stdgo.GoUInt) : Bool)) {
                        _z.andNot(_z, _newInt().lsh(stdgo._internal.math.big.Big.newInt((-1i64 : stdgo.GoInt64)), _prec));
                    };
                    return _makeInt(_z);
                } else if (__value__ == ((43 : stdgo._internal.go.token.Token.Token))) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                            return stdgo.Go.asInterface(_y);
                        } else if (stdgo.Go.typeEquals((__type__ : T_boolVal))) {
                            var _y:stdgo._internal.go.constant.Constant.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__ == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__.__underlying__().value;
                            return stdgo.Go.asInterface(!_y);
                        };
                    };
                };
            };
            @:label("Error") throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("invalid unary operation %s%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y)));
        });
        throw "controlFlow did not return";
    }
function _ord(_x:Value):stdgo.GoInt {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                return (0 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_boolVal)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<T_stringVal>))) {
                return (1 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                return (2 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                return (3 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                return (4 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                return (5 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                return (6 : stdgo.GoInt);
            } else {
                return (-1 : stdgo.GoInt);
            };
        };
    }
function _match(_x:Value, _y:Value):{ var _0 : Value; var _1 : Value; } {
        var _0:Value = (null : stdgo._internal.go.constant.Constant.Value), _1:Value = (null : stdgo._internal.go.constant.Constant.Value);
        {
            var __0:stdgo.GoInt = _ord(_x), __1:stdgo.GoInt = _ord(_y), _oy:stdgo.GoInt = __1, _ox:stdgo.GoInt = __0;
            if ((_ox < _oy : Bool)) {
                {
                    var __tmp__ = _match0(_x, _y);
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            } else if ((_ox > _oy : Bool)) {
                {
                    var __tmp__ = _match0(_y, _x);
                    _y = __tmp__._0;
                    _x = __tmp__._1;
                };
            };
        };
        return { _0 : _x, _1 : _y };
    }
function _match0(_x:Value, _y:Value):{ var _0 : Value; var _1 : Value; } {
        var _0:Value = (null : stdgo._internal.go.constant.Constant.Value), _1:Value = (null : stdgo._internal.go.constant.Constant.Value);
        {
            final __type__ = _y;
            if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                {
                    final __type__ = _x;
                    if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                        var _x1:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_i64toi(_x1)), _1 : _y };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                {
                    final __type__ = _x;
                    if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                        var _x1:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_i64tor(_x1)), _1 : _y };
                    } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                        var _x1:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_itor(_x1?.__copy__())), _1 : _y };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                {
                    final __type__ = _x;
                    if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                        var _x1:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_i64tof(_x1)), _1 : _y };
                    } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                        var _x1:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_itof(_x1?.__copy__())), _1 : _y };
                    } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                        var _x1:stdgo._internal.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_rtof(_x1?.__copy__())), _1 : _y };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                return { _0 : stdgo.Go.asInterface(_vtoc(_x)), _1 : _y };
            };
        };
        return { _0 : _x, _1 : _x };
    }
function binaryOp(_x_:Value, _op:stdgo._internal.go.token.Token.Token, _y_:Value):Value {
        stdgo._internal.internal.Macro.controlFlow({
            var __tmp__ = _match(_x_, _y_), _x:stdgo._internal.go.constant.Constant.Value = __tmp__._0, _y:stdgo._internal.go.constant.Constant.Value = __tmp__._1;
            {
                final __type__ = _x;
                if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                    var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                    return stdgo.Go.asInterface(_x);
                } else if (stdgo.Go.typeEquals((__type__ : T_boolVal))) {
                    var _x:stdgo._internal.go.constant.Constant.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__ == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__.__underlying__().value;
                    var _y:stdgo._internal.go.constant.Constant.T_boolVal = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_boolVal)) : T_boolVal);
                    {
                        final __value__ = _op;
                        if (__value__ == ((34 : stdgo._internal.go.token.Token.Token))) {
                            return stdgo.Go.asInterface((_x && _y : stdgo._internal.go.constant.Constant.T_boolVal));
                        } else if (__value__ == ((35 : stdgo._internal.go.token.Token.Token))) {
                            return stdgo.Go.asInterface((_x || _y : stdgo._internal.go.constant.Constant.T_boolVal));
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                    var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                    var _a:stdgo.GoInt64 = (_x : stdgo.GoInt64);
                    var _b:stdgo.GoInt64 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_int64Val)) : T_int64Val) : stdgo.GoInt64);
                    var _c:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token.Token))) {
                            if ((!_is63bit(_a) || !_is63bit(_b) : Bool)) {
                                return _makeInt(_newInt().add(stdgo._internal.math.big.Big.newInt(_a), stdgo._internal.math.big.Big.newInt(_b)));
                            };
                            _c = (_a + _b : stdgo.GoInt64);
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token.Token))) {
                            if ((!_is63bit(_a) || !_is63bit(_b) : Bool)) {
                                return _makeInt(_newInt().sub(stdgo._internal.math.big.Big.newInt(_a), stdgo._internal.math.big.Big.newInt(_b)));
                            };
                            _c = (_a - _b : stdgo.GoInt64);
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token.Token))) {
                            if ((!_is32bit(_a) || !_is32bit(_b) : Bool)) {
                                return _makeInt(_newInt().mul(stdgo._internal.math.big.Big.newInt(_a), stdgo._internal.math.big.Big.newInt(_b)));
                            };
                            _c = (_a * _b : stdgo.GoInt64);
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token.Token))) {
                            return _makeRat(stdgo._internal.math.big.Big.newRat(_a, _b));
                        } else if (__value__ == ((26 : stdgo._internal.go.token.Token.Token))) {
                            _c = (_a / _b : stdgo.GoInt64);
                        } else if (__value__ == ((16 : stdgo._internal.go.token.Token.Token))) {
                            _c = (_a % _b : stdgo.GoInt64);
                        } else if (__value__ == ((17 : stdgo._internal.go.token.Token.Token))) {
                            _c = (_a & _b : stdgo.GoInt64);
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token.Token))) {
                            _c = (_a | _b : stdgo.GoInt64);
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token.Token))) {
                            _c = (_a ^ _b : stdgo.GoInt64);
                        } else if (__value__ == ((22 : stdgo._internal.go.token.Token.Token))) {
                            _c = (_a & ((_b ^ (-1i32 : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt64);
                        } else {
                            @:goto "Error";
                        };
                    };
                    return stdgo.Go.asInterface((_c : T_int64Val));
                } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                    var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                    var _a = _x._val;
                    var _b = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_intVal)) : T_intVal)._val;
                    var _c = _newInt();
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token.Token))) {
                            _c.add(_a, _b);
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token.Token))) {
                            _c.sub(_a, _b);
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token.Token))) {
                            _c.mul(_a, _b);
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token.Token))) {
                            return _makeRat(_newRat().setFrac(_a, _b));
                        } else if (__value__ == ((26 : stdgo._internal.go.token.Token.Token))) {
                            _c.quo(_a, _b);
                        } else if (__value__ == ((16 : stdgo._internal.go.token.Token.Token))) {
                            _c.rem(_a, _b);
                        } else if (__value__ == ((17 : stdgo._internal.go.token.Token.Token))) {
                            _c.and(_a, _b);
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token.Token))) {
                            _c.or(_a, _b);
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token.Token))) {
                            _c.xor(_a, _b);
                        } else if (__value__ == ((22 : stdgo._internal.go.token.Token.Token))) {
                            _c.andNot(_a, _b);
                        } else {
                            @:goto "Error";
                        };
                    };
                    return _makeInt(_c);
                } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                    var _x:stdgo._internal.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                    var _a = _x._val;
                    var _b = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_ratVal)) : T_ratVal)._val;
                    var _c = _newRat();
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token.Token))) {
                            _c.add(_a, _b);
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token.Token))) {
                            _c.sub(_a, _b);
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token.Token))) {
                            _c.mul(_a, _b);
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token.Token))) {
                            _c.quo(_a, _b);
                        } else {
                            @:goto "Error";
                        };
                    };
                    return _makeRat(_c);
                } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                    var _x:stdgo._internal.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                    var _a = _x._val;
                    var _b = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_floatVal)) : T_floatVal)._val;
                    var _c = _newFloat();
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token.Token))) {
                            _c.add(_a, _b);
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token.Token))) {
                            _c.sub(_a, _b);
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token.Token))) {
                            _c.mul(_a, _b);
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token.Token))) {
                            _c.quo(_a, _b);
                        } else {
                            @:goto "Error";
                        };
                    };
                    return _makeFloat(_c);
                } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                    var _x:stdgo._internal.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                    var _y:stdgo._internal.go.constant.Constant.T_complexVal = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_complexVal)) : T_complexVal)?.__copy__();
                    var __0:stdgo._internal.go.constant.Constant.Value = _x._re, __1:stdgo._internal.go.constant.Constant.Value = _x._im, _b:stdgo._internal.go.constant.Constant.Value = __1, _a:stdgo._internal.go.constant.Constant.Value = __0;
                    var __0:stdgo._internal.go.constant.Constant.Value = _y._re, __1:stdgo._internal.go.constant.Constant.Value = _y._im, _d:stdgo._internal.go.constant.Constant.Value = __1, _c:stdgo._internal.go.constant.Constant.Value = __0;
                    var __0:Value = (null : stdgo._internal.go.constant.Constant.Value), __1:Value = (null : stdgo._internal.go.constant.Constant.Value), _im:Value = __1, _re:Value = __0;
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token.Token))) {
                            _re = _add(_a, _c);
                            _im = _add(_b, _d);
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token.Token))) {
                            _re = _sub(_a, _c);
                            _im = _sub(_b, _d);
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token.Token))) {
                            var _ac:stdgo._internal.go.constant.Constant.Value = _mul(_a, _c);
                            var _bd:stdgo._internal.go.constant.Constant.Value = _mul(_b, _d);
                            var _bc:stdgo._internal.go.constant.Constant.Value = _mul(_b, _c);
                            var _ad:stdgo._internal.go.constant.Constant.Value = _mul(_a, _d);
                            _re = _sub(_ac, _bd);
                            _im = _add(_bc, _ad);
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token.Token))) {
                            var _ac:stdgo._internal.go.constant.Constant.Value = _mul(_a, _c);
                            var _bd:stdgo._internal.go.constant.Constant.Value = _mul(_b, _d);
                            var _bc:stdgo._internal.go.constant.Constant.Value = _mul(_b, _c);
                            var _ad:stdgo._internal.go.constant.Constant.Value = _mul(_a, _d);
                            var _cc:stdgo._internal.go.constant.Constant.Value = _mul(_c, _c);
                            var _dd:stdgo._internal.go.constant.Constant.Value = _mul(_d, _d);
                            var _s:stdgo._internal.go.constant.Constant.Value = _add(_cc, _dd);
                            _re = _add(_ac, _bd);
                            _re = _quo(_re, _s);
                            _im = _sub(_bc, _ad);
                            _im = _quo(_im, _s);
                        } else {
                            @:goto "Error";
                        };
                    };
                    return _makeComplex(_re, _im);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<T_stringVal>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__.__underlying__().value;
                    if (_op == ((12 : stdgo._internal.go.token.Token.Token))) {
                        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _l : _x, _r : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<T_stringVal>)) : stdgo.Ref<T_stringVal>) } : stdgo._internal.go.constant.Constant.T_stringVal)) : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>));
                    };
                };
            };
            @:label("Error") throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("invalid binary operation %v %s %v" : stdgo.GoString), stdgo.Go.toInterface(_x_), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y_)));
        });
        throw "controlFlow did not return";
    }
function _add(_x:Value, _y:Value):Value {
        return binaryOp(_x, (12 : stdgo._internal.go.token.Token.Token), _y);
    }
function _sub(_x:Value, _y:Value):Value {
        return binaryOp(_x, (13 : stdgo._internal.go.token.Token.Token), _y);
    }
function _mul(_x:Value, _y:Value):Value {
        return binaryOp(_x, (14 : stdgo._internal.go.token.Token.Token), _y);
    }
function _quo(_x:Value, _y:Value):Value {
        return binaryOp(_x, (15 : stdgo._internal.go.token.Token.Token), _y);
    }
function shift(_x:Value, _op:stdgo._internal.go.token.Token.Token, _s:stdgo.GoUInt):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_x);
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                if (_s == ((0u32 : stdgo.GoUInt))) {
                    return stdgo.Go.asInterface(_x);
                };
                {
                    final __value__ = _op;
                    if (__value__ == ((20 : stdgo._internal.go.token.Token.Token))) {
                        var _z = _i64toi(_x)._val;
                        return _makeInt(_z.lsh(_z, _s));
                    } else if (__value__ == ((21 : stdgo._internal.go.token.Token.Token))) {
                        return stdgo.Go.asInterface((_x >> _s : stdgo._internal.go.constant.Constant.T_int64Val));
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                if (_s == ((0u32 : stdgo.GoUInt))) {
                    return stdgo.Go.asInterface(_x);
                };
                var _z = _newInt();
                {
                    final __value__ = _op;
                    if (__value__ == ((20 : stdgo._internal.go.token.Token.Token))) {
                        return _makeInt(_z.lsh(_x._val, _s));
                    } else if (__value__ == ((21 : stdgo._internal.go.token.Token.Token))) {
                        return _makeInt(_z.rsh(_x._val, _s));
                    };
                };
            };
        };
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("invalid shift %v %s %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_s)));
    }
function _cmpZero(_x:stdgo.GoInt, _op:stdgo._internal.go.token.Token.Token):Bool {
        {
            final __value__ = _op;
            if (__value__ == ((39 : stdgo._internal.go.token.Token.Token))) {
                return _x == ((0 : stdgo.GoInt));
            } else if (__value__ == ((44 : stdgo._internal.go.token.Token.Token))) {
                return _x != ((0 : stdgo.GoInt));
            } else if (__value__ == ((40 : stdgo._internal.go.token.Token.Token))) {
                return (_x < (0 : stdgo.GoInt) : Bool);
            } else if (__value__ == ((45 : stdgo._internal.go.token.Token.Token))) {
                return (_x <= (0 : stdgo.GoInt) : Bool);
            } else if (__value__ == ((41 : stdgo._internal.go.token.Token.Token))) {
                return (_x > (0 : stdgo.GoInt) : Bool);
            } else if (__value__ == ((46 : stdgo._internal.go.token.Token.Token))) {
                return (_x >= (0 : stdgo.GoInt) : Bool);
            };
        };
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("invalid comparison %v %s 0" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_op))));
    }
function compare(_x_:Value, _op:stdgo._internal.go.token.Token.Token, _y_:Value):Bool {
        var __tmp__ = _match(_x_, _y_), _x:stdgo._internal.go.constant.Constant.Value = __tmp__._0, _y:stdgo._internal.go.constant.Constant.Value = __tmp__._1;
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return false;
            } else if (stdgo.Go.typeEquals((__type__ : T_boolVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__ == null ? (false : stdgo._internal.go.constant.Constant.T_boolVal) : __type__.__underlying__().value;
                var _y:stdgo._internal.go.constant.Constant.T_boolVal = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_boolVal)) : T_boolVal);
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo._internal.go.token.Token.Token))) {
                        return _x == (_y);
                    } else if (__value__ == ((44 : stdgo._internal.go.token.Token.Token))) {
                        return _x != (_y);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                var _y:stdgo._internal.go.constant.Constant.T_int64Val = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_int64Val)) : T_int64Val);
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo._internal.go.token.Token.Token))) {
                        return _x == (_y);
                    } else if (__value__ == ((44 : stdgo._internal.go.token.Token.Token))) {
                        return _x != (_y);
                    } else if (__value__ == ((40 : stdgo._internal.go.token.Token.Token))) {
                        return (_x < _y : Bool);
                    } else if (__value__ == ((45 : stdgo._internal.go.token.Token.Token))) {
                        return (_x <= _y : Bool);
                    } else if (__value__ == ((41 : stdgo._internal.go.token.Token.Token))) {
                        return (_x > _y : Bool);
                    } else if (__value__ == ((46 : stdgo._internal.go.token.Token.Token))) {
                        return (_x >= _y : Bool);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return _cmpZero(_x._val.cmp((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_intVal)) : T_intVal)._val), _op);
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                return _cmpZero(_x._val.cmp((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_ratVal)) : T_ratVal)._val), _op);
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                return _cmpZero(_x._val.cmp((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_floatVal)) : T_floatVal)._val), _op);
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo._internal.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                var _y:stdgo._internal.go.constant.Constant.T_complexVal = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_complexVal)) : T_complexVal)?.__copy__();
                var _re:Bool = compare(_x._re, (39 : stdgo._internal.go.token.Token.Token), _y._re);
                var _im:Bool = compare(_x._im, (39 : stdgo._internal.go.token.Token.Token), _y._im);
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo._internal.go.token.Token.Token))) {
                        return (_re && _im : Bool);
                    } else if (__value__ == ((44 : stdgo._internal.go.token.Token.Token))) {
                        return (!_re || !_im : Bool);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<T_stringVal>))) {
                var _x:stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant.T_stringVal>) : __type__.__underlying__().value;
                var _xs:stdgo.GoString = _x._string()?.__copy__();
                var _ys:stdgo.GoString = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<T_stringVal>)) : stdgo.Ref<T_stringVal>)._string()?.__copy__();
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo._internal.go.token.Token.Token))) {
                        return _xs == (_ys);
                    } else if (__value__ == ((44 : stdgo._internal.go.token.Token.Token))) {
                        return _xs != (_ys);
                    } else if (__value__ == ((40 : stdgo._internal.go.token.Token.Token))) {
                        return (_xs < _ys : Bool);
                    } else if (__value__ == ((45 : stdgo._internal.go.token.Token.Token))) {
                        return (_xs <= _ys : Bool);
                    } else if (__value__ == ((41 : stdgo._internal.go.token.Token.Token))) {
                        return (_xs > _ys : Bool);
                    } else if (__value__ == ((46 : stdgo._internal.go.token.Token.Token))) {
                        return (_xs >= _ys : Bool);
                    };
                };
            };
        };
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("invalid comparison %v %s %v" : stdgo.GoString), stdgo.Go.toInterface(_x_), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y_)));
    }
function _testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _kind:stdgo._internal.go.token.Token.Token, _tests:stdgo.Slice<stdgo.GoString>):Void {
        for (__1 => _test in _tests) {
            var _a = stdgo._internal.strings.Strings.split(_test?.__copy__(), (" = " : stdgo.GoString));
            if ((_a.length) != ((2 : stdgo.GoInt))) {
                _t.errorf(("invalid test case: %s" : stdgo.GoString), stdgo.Go.toInterface(_test));
                continue;
            };
            var _x:stdgo._internal.go.constant.Constant.Value = makeFromLiteral(_a[(0 : stdgo.GoInt)]?.__copy__(), _kind, (0u32 : stdgo.GoUInt));
            var _y:Value = (null : stdgo._internal.go.constant.Constant.Value);
            if (_a[(1 : stdgo.GoInt)] == (("?" : stdgo.GoString))) {
                _y = makeUnknown();
            } else {
                {
                    var __tmp__ = stdgo._internal.strings.Strings.cut(_a[(1 : stdgo.GoInt)]?.__copy__(), ("/" : stdgo.GoString)), _ns:stdgo.GoString = __tmp__._0, _ds:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if ((_ok && (_kind == (6 : stdgo._internal.go.token.Token.Token)) : Bool)) {
                        var _n:stdgo._internal.go.constant.Constant.Value = makeFromLiteral(_ns?.__copy__(), (5 : stdgo._internal.go.token.Token.Token), (0u32 : stdgo.GoUInt));
                        var _d:stdgo._internal.go.constant.Constant.Value = makeFromLiteral(_ds?.__copy__(), (5 : stdgo._internal.go.token.Token.Token), (0u32 : stdgo.GoUInt));
                        _y = binaryOp(_n, (15 : stdgo._internal.go.token.Token.Token), _d);
                    } else {
                        _y = makeFromLiteral(_a[(1 : stdgo.GoInt)]?.__copy__(), _kind, (0u32 : stdgo.GoUInt));
                    };
                };
                if (_y.kind() == ((0 : stdgo._internal.go.constant.Constant.Kind))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("invalid test case: %s %d" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(stdgo.Go.asInterface(_y.kind()))));
                };
            };
            var _xk:stdgo._internal.go.constant.Constant.Kind = _x.kind();
            var _yk:stdgo._internal.go.constant.Constant.Kind = _y.kind();
            if (_xk != (_yk)) {
                _t.errorf(("%s: got kind %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(stdgo.Go.asInterface(_xk)), stdgo.Go.toInterface(stdgo.Go.asInterface(_yk)));
                continue;
            };
            if (_yk == ((0 : stdgo._internal.go.constant.Constant.Kind))) {
                continue;
            };
            if (!compare(_x, (39 : stdgo._internal.go.token.Token.Token), _y)) {
                _t.errorf(("%s: %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
        };
    }
function testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testNumbers(_t, (5 : stdgo._internal.go.token.Token.Token), _intTests);
        _testNumbers(_t, (6 : stdgo._internal.go.token.Token.Token), _floatTests);
        _testNumbers(_t, (7 : stdgo._internal.go.token.Token.Token), _imagTests);
    }
function testOps(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__1 => _test in _opTests) {
            var _a = stdgo._internal.strings.Strings.split(_test?.__copy__(), (" " : stdgo.GoString));
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            var __0:Value = (null : stdgo._internal.go.constant.Constant.Value), __1:Value = (null : stdgo._internal.go.constant.Constant.Value), _x0:Value = __1, _x:Value = __0;
            {
                final __value__ = (_a.length);
                if (__value__ == ((4 : stdgo.GoInt))) {} else if (__value__ == ((5 : stdgo.GoInt))) {
                    {
                        final __tmp__0 = _val(_a[(0 : stdgo.GoInt)]?.__copy__());
                        final __tmp__1 = _val(_a[(0 : stdgo.GoInt)]?.__copy__());
                        _x = __tmp__0;
                        _x0 = __tmp__1;
                    };
                    _i = (1 : stdgo.GoInt);
                } else {
                    _t.errorf(("invalid test case: %s" : stdgo.GoString), stdgo.Go.toInterface(_test));
                    continue;
                };
            };
            var __tmp__ = (_optab != null && _optab.exists(_a[(_i : stdgo.GoInt)]?.__copy__()) ? { _0 : _optab[_a[(_i : stdgo.GoInt)]?.__copy__()], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token.Token), _1 : false }), _op:stdgo._internal.go.token.Token.Token = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                throw stdgo.Go.toInterface((("missing optab entry for " : stdgo.GoString) + _a[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString));
            };
            var __0:stdgo._internal.go.constant.Constant.Value = _val(_a[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()), __1:stdgo._internal.go.constant.Constant.Value = _val(_a[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()), _y0:stdgo._internal.go.constant.Constant.Value = __1, _y:stdgo._internal.go.constant.Constant.Value = __0;
            var _got:stdgo._internal.go.constant.Constant.Value = _doOp(_x, _op, _y);
            var _want:stdgo._internal.go.constant.Constant.Value = _val(_a[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__());
            if (!_eql(_got, _want)) {
                _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                continue;
            };
            if (((_x0 != null) && !_eql(_x, _x0) : Bool)) {
                _t.errorf(("%s: x changed to %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_x));
                continue;
            };
            if (!_eql(_y, _y0)) {
                _t.errorf(("%s: y changed to %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_y));
                continue;
            };
        };
    }
function _eql(_x:Value, _y:Value):Bool {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : T_unknownVal)) : T_unknownVal), _1 : true };
        } catch(_) {
            { _0 : ({} : stdgo._internal.go.constant.Constant.T_unknownVal), _1 : false };
        }, __1 = __tmp__._0, _ux = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_unknownVal)) : T_unknownVal), _1 : true };
        } catch(_) {
            { _0 : ({} : stdgo._internal.go.constant.Constant.T_unknownVal), _1 : false };
        }, __2 = __tmp__._0, _uy = __tmp__._1;
        if ((_ux || _uy : Bool)) {
            return _ux == (_uy);
        };
        return compare(_x, (39 : stdgo._internal.go.token.Token.Token), _y);
    }
function testString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__1 => _test in _stringTests) {
            var _x:stdgo._internal.go.constant.Constant.Value = _val(_test._input?.__copy__());
            {
                var _got:stdgo.GoString = (_x.string() : stdgo.GoString)?.__copy__();
                if (_got != (_test._short)) {
                    _t.errorf(("%s: got %q; want %q as short string" : stdgo.GoString), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._short));
                };
            };
            {
                var _got:stdgo.GoString = _x.exactString()?.__copy__();
                if (_got != (_test._exact)) {
                    _t.errorf(("%s: got %q; want %q as exact string" : stdgo.GoString), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._exact));
                };
            };
        };
    }
function _val(_lit:stdgo.GoString):Value {
        if ((_lit.length) == ((0 : stdgo.GoInt))) {
            return makeUnknown();
        };
        {
            final __value__ = _lit;
            if (__value__ == (("?" : stdgo.GoString))) {
                return makeUnknown();
            } else if (__value__ == (("true" : stdgo.GoString))) {
                return makeBool(true);
            } else if (__value__ == (("false" : stdgo.GoString))) {
                return makeBool(false);
            };
        };
        {
            var __tmp__ = stdgo._internal.strings.Strings.cut(_lit?.__copy__(), ("/" : stdgo.GoString)), _as:stdgo.GoString = __tmp__._0, _bs:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                var _a:stdgo._internal.go.constant.Constant.Value = makeFromLiteral(_as?.__copy__(), (5 : stdgo._internal.go.token.Token.Token), (0u32 : stdgo.GoUInt));
                var _b:stdgo._internal.go.constant.Constant.Value = makeFromLiteral(_bs?.__copy__(), (5 : stdgo._internal.go.token.Token.Token), (0u32 : stdgo.GoUInt));
                return binaryOp(_a, (15 : stdgo._internal.go.token.Token.Token), _b);
            };
        };
        var _tok:stdgo._internal.go.token.Token.Token = (5 : stdgo._internal.go.token.Token.Token);
        {
            var __0:stdgo.GoUInt8 = _lit[(0 : stdgo.GoInt)], __1:stdgo.GoUInt8 = _lit[((_lit.length) - (1 : stdgo.GoInt) : stdgo.GoInt)], _last:stdgo.GoUInt8 = __1, _first:stdgo.GoUInt8 = __0;
            if (((_first == (34 : stdgo.GoUInt8)) || (_first == (96 : stdgo.GoUInt8)) : Bool)) {
                _tok = (9 : stdgo._internal.go.token.Token.Token);
                _lit = stdgo._internal.strings.Strings.replaceAll(_lit?.__copy__(), ("_" : stdgo.GoString), (" " : stdgo.GoString))?.__copy__();
            } else if (_first == ((39 : stdgo.GoUInt8))) {
                _tok = (8 : stdgo._internal.go.token.Token.Token);
            } else if (_last == ((105 : stdgo.GoUInt8))) {
                _tok = (7 : stdgo._internal.go.token.Token.Token);
            } else {
                if ((!stdgo._internal.strings.Strings.hasPrefix(_lit?.__copy__(), ("0x" : stdgo.GoString)) && stdgo._internal.strings.Strings.containsAny(_lit?.__copy__(), ("./Ee" : stdgo.GoString)) : Bool)) {
                    _tok = (6 : stdgo._internal.go.token.Token.Token);
                };
            };
        };
        return makeFromLiteral(_lit?.__copy__(), _tok, (0u32 : stdgo.GoUInt));
    }
function _panicHandler(_v:stdgo.Ref<Value>):Void {
        {
            final __type__ = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            });
            if (__type__ == null) {
                var _p:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _p:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                {
                    var __tmp__ = makeString(_p?.__copy__());
                    _v.exactString = __tmp__.exactString;
                    _v.kind = __tmp__.kind;
                    _v.string = __tmp__.string;
                    _v._implementsValue = __tmp__._implementsValue;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                var _p:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                {
                    var __tmp__ = makeString(_p.error()?.__copy__());
                    _v.exactString = __tmp__.exactString;
                    _v.kind = __tmp__.kind;
                    _v.string = __tmp__.string;
                    _v._implementsValue = __tmp__._implementsValue;
                };
            } else {
                var _p:stdgo.AnyInterface = __type__?.__underlying__();
                throw stdgo.Go.toInterface(_p);
            };
        };
    }
function _doOp(_x:Value, _op:stdgo._internal.go.token.Token.Token, _y:Value):Value {
        var __deferstack__:Array<Void -> Void> = [];
        var _z:Value = (null : stdgo._internal.go.constant.Constant.Value);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.go.constant.Constant.Value>);
                __deferstack__.unshift(() -> _panicHandler(_a0));
            };
            if (_x == null) {
                {
                    final __ret__:Value = unaryOp(_op, _y, (0u32 : stdgo.GoUInt));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __value__ = _op;
                if (__value__ == ((39 : stdgo._internal.go.token.Token.Token)) || __value__ == ((44 : stdgo._internal.go.token.Token.Token)) || __value__ == ((40 : stdgo._internal.go.token.Token.Token)) || __value__ == ((45 : stdgo._internal.go.token.Token.Token)) || __value__ == ((41 : stdgo._internal.go.token.Token.Token)) || __value__ == ((46 : stdgo._internal.go.token.Token.Token))) {
                    {
                        final __ret__:Value = makeBool(compare(_x, _op, _y));
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((20 : stdgo._internal.go.token.Token.Token)) || __value__ == ((21 : stdgo._internal.go.token.Token.Token))) {
                    var __tmp__ = int64Val(_y), _s:stdgo.GoInt64 = __tmp__._0, __1:Bool = __tmp__._1;
                    {
                        final __ret__:Value = shift(_x, _op, (_s : stdgo.GoUInt));
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                } else {
                    {
                        final __ret__:Value = binaryOp(_x, _op, _y);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _z;
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
            return _z;
        };
    }
function testFractions(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__1 => _test in _fracTests) {
            var _x:stdgo._internal.go.constant.Constant.Value = _val(_test?.__copy__());
            var _q:stdgo._internal.go.constant.Constant.Value = binaryOp(num(_x), (15 : stdgo._internal.go.token.Token.Token), denom(_x));
            var _got:stdgo.GoString = (_q.string() : stdgo.GoString)?.__copy__();
            var _want:stdgo.GoString = (_x.string() : stdgo.GoString)?.__copy__();
            if (_got != (_want)) {
                _t.errorf(("%s: got quotient %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__1 => _test in _bytesTests) {
            var _x:stdgo._internal.go.constant.Constant.Value = _val(_test?.__copy__());
            var _bytes = bytes(_x);
            if (((sign(_x) == (0 : stdgo.GoInt)) && (_bytes.length != (0 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("%s: got %v; want empty byte slice" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_bytes));
            };
            {
                var _n:stdgo.GoInt = (_bytes.length);
                if (((_n > (0 : stdgo.GoInt) : Bool) && (_bytes[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
                    _t.errorf(("%s: got %v; want no leading 0 byte" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_bytes));
                };
            };
            {
                var _got:stdgo._internal.go.constant.Constant.Value = makeFromBytes(_bytes);
                if (!_eql(_got, _x)) {
                    _t.errorf(("%s: got %s; want %s (bytes = %v)" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_bytes));
                };
            };
        };
    }
function testUnknown(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _u:stdgo._internal.go.constant.Constant.Value = makeUnknown();
        var _values:stdgo.Slice<stdgo._internal.go.constant.Constant.Value> = (new stdgo.Slice<stdgo._internal.go.constant.Constant.Value>(8, 8, ...[_u, makeBool(false), makeString(stdgo.Go.str()?.__copy__()), makeInt64((1i64 : stdgo.GoInt64)), makeFromLiteral(("\'\'" : stdgo.GoString), (8 : stdgo._internal.go.token.Token.Token), (0u32 : stdgo.GoUInt)), makeFromLiteral(("-1234567890123456789012345678901234567890" : stdgo.GoString), (5 : stdgo._internal.go.token.Token.Token), (0u32 : stdgo.GoUInt)), makeFloat64((1.2 : stdgo.GoFloat64)), makeImag(makeFloat64((1.2 : stdgo.GoFloat64)))]) : stdgo.Slice<stdgo._internal.go.constant.Constant.Value>);
        for (__1 => _val in _values) {
            var __0:stdgo._internal.go.constant.Constant.Value = _val, __1:stdgo._internal.go.constant.Constant.Value = _u, _y:stdgo._internal.go.constant.Constant.Value = __1, _x:stdgo._internal.go.constant.Constant.Value = __0;
            for (_i => _ in (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) {
                if (_i == ((1 : stdgo.GoInt))) {
                    {
                        final __tmp__0 = _y;
                        final __tmp__1 = _x;
                        _x = __tmp__0;
                        _y = __tmp__1;
                    };
                };
                {
                    var _got:stdgo._internal.go.constant.Constant.Value = binaryOp(_x, (12 : stdgo._internal.go.token.Token.Token), _y);
                    if (_got.kind() != ((0 : stdgo._internal.go.constant.Constant.Kind))) {
                        _t.errorf(("%s + %s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_u));
                    };
                };
                {
                    var _got:Bool = compare(_x, (39 : stdgo._internal.go.token.Token.Token), _y);
                    if (_got) {
                        _t.errorf(("%s == %s: got true; want false" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
                    };
                };
            };
        };
    }
function testMakeFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _zero:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        for (__1 => _arg in (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-3.4028234663852886e+38 : stdgo.GoFloat64), (-10 : stdgo.GoFloat64), (-0.5 : stdgo.GoFloat64), -_zero, _zero, (1 : stdgo.GoFloat64), (10 : stdgo.GoFloat64), (1.2345678987654321e-15 : stdgo.GoFloat64), (1e+10 : stdgo.GoFloat64), (1.7976931348623157e+308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>)) {
            var _val:stdgo._internal.go.constant.Constant.Value = makeFloat64(_arg);
            if (_val.kind() != ((4 : stdgo._internal.go.constant.Constant.Kind))) {
                _t.errorf(("%v: got kind = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(stdgo.Go.asInterface(_val.kind())), stdgo.Go.toInterface(stdgo.Go.asInterface((4 : stdgo._internal.go.constant.Constant.Kind))));
            };
            var __tmp__ = float64Val(_val), _got:stdgo.GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
            if ((!_exact || (stdgo._internal.math.Math.float64bits(_got) != stdgo._internal.math.Math.float64bits((_arg + (0 : stdgo.GoFloat64) : stdgo.GoFloat64))) : Bool)) {
                _t.errorf(("%v: got %v (exact = %v)" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_exact));
            };
        };
        for (_sign => _ in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(-1 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _arg:stdgo.GoFloat64 = stdgo._internal.math.Math.inf(_sign);
            var _val:stdgo._internal.go.constant.Constant.Value = makeFloat64(_arg);
            if (_val.kind() != ((0 : stdgo._internal.go.constant.Constant.Kind))) {
                _t.errorf(("%v: got kind = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(stdgo.Go.asInterface(_val.kind())), stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.go.constant.Constant.Kind))));
            };
        };
    }
function _dup(_k:Kind, _x:stdgo.AnyInterface):T_makeTestCase {
        return (new stdgo._internal.go.constant.Constant.T_makeTestCase(_k, _x, _x) : stdgo._internal.go.constant.Constant.T_makeTestCase);
    }
function testMake(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__1 => _test in (new stdgo.Slice<stdgo._internal.go.constant.Constant.T_makeTestCase>(9, 9, ...[(new stdgo._internal.go.constant.Constant.T_makeTestCase((1 : stdgo._internal.go.constant.Constant.Kind), stdgo.Go.toInterface(false), stdgo.Go.toInterface(false)) : stdgo._internal.go.constant.Constant.T_makeTestCase), (new stdgo._internal.go.constant.Constant.T_makeTestCase((2 : stdgo._internal.go.constant.Constant.Kind), stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface(("hello" : stdgo.GoString))) : stdgo._internal.go.constant.Constant.T_makeTestCase), (new stdgo._internal.go.constant.Constant.T_makeTestCase((3 : stdgo._internal.go.constant.Constant.Kind), stdgo.Go.toInterface((1i64 : stdgo.GoInt64)), stdgo.Go.toInterface((1i64 : stdgo.GoInt64))) : stdgo._internal.go.constant.Constant.T_makeTestCase), (new stdgo._internal.go.constant.Constant.T_makeTestCase((3 : stdgo._internal.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.math.big.Big.newInt((10i64 : stdgo.GoInt64)))), stdgo.Go.toInterface((10i64 : stdgo.GoInt64))) : stdgo._internal.go.constant.Constant.T_makeTestCase), (new stdgo._internal.go.constant.Constant.T_makeTestCase((3 : stdgo._internal.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>).lsh(stdgo._internal.math.big.Big.newInt((1i64 : stdgo.GoInt64)), (62u32 : stdgo.GoUInt)))), stdgo.Go.toInterface((4611686018427387904i64 : stdgo.GoInt64))) : stdgo._internal.go.constant.Constant.T_makeTestCase), _dup((3 : stdgo._internal.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>).lsh(stdgo._internal.math.big.Big.newInt((1i64 : stdgo.GoInt64)), (63u32 : stdgo.GoUInt)))))?.__copy__(), (new stdgo._internal.go.constant.Constant.T_makeTestCase((4 : stdgo._internal.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.math.big.Big.newFloat((0 : stdgo.GoFloat64)))), stdgo.Go.toInterface(stdgo.Go.asInterface(_floatVal0._val))) : stdgo._internal.go.constant.Constant.T_makeTestCase), _dup((4 : stdgo._internal.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.math.big.Big.newFloat((2 : stdgo.GoFloat64)))))?.__copy__(), _dup((4 : stdgo._internal.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.math.big.Big.newRat((1i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64)))))?.__copy__()].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.constant.Constant.T_makeTestCase)])) : stdgo.Slice<stdgo._internal.go.constant.Constant.T_makeTestCase>)) {
            var _val:stdgo._internal.go.constant.Constant.Value = make(_test._arg);
            var _got:stdgo.AnyInterface = val(_val);
            if (((_val.kind() != _test._kind) || (_got != _test._want) : Bool)) {
                _t.errorf(("got %v (%T, kind = %d); want %v (%T, kind = %d)" : stdgo.GoString), _got, _got, stdgo.Go.toInterface(stdgo.Go.asInterface(_val.kind())), _test._want, _test._want, stdgo.Go.toInterface(stdgo.Go.asInterface(_test._kind)));
            };
        };
    }
function benchmarkStringAdd(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _size:stdgo.GoInt = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_size <= (65536 : stdgo.GoInt) : Bool), _size = (_size * ((4 : stdgo.GoInt)) : stdgo.GoInt), {
                _b.run(stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                    _b.reportAllocs();
                    var _n:stdgo.GoInt64 = (0i64 : stdgo.GoInt64);
                    {
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            var _x:stdgo._internal.go.constant.Constant.Value = makeString(stdgo._internal.strings.Strings.repeat(("x" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__());
                            var _y:stdgo._internal.go.constant.Constant.Value = _x;
                            {
                                var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_j < (_size - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _j++, {
                                    _y = binaryOp(_y, (12 : stdgo._internal.go.token.Token.Token), _x);
                                });
                            };
                            _n = (_n + ((stringVal(_y).length : stdgo.GoInt64)) : stdgo.GoInt64);
                        });
                    };
                    if (_n != ((((_b.n : stdgo.GoInt64) * (_size : stdgo.GoInt64) : stdgo.GoInt64) * (100i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                        _b.fatalf(("bad string %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((((_b.n : stdgo.GoInt64) * (_size : stdgo.GoInt64) : stdgo.GoInt64) * (100i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                    };
                });
            });
        };
    }
function testBitLen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__1 => _test in _bitLenTests) {
            {
                var _got:stdgo.GoInt = bitLen(makeInt64(_test._val));
                if (_got != (_test._want)) {
                    _t.errorf(("%v: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._val), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
class T_unknownVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_unknownVal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.constant.Constant.T_unknownVal_asInterface) class T_unknownVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_unknownVal):Void {
        @:recv var _:T_unknownVal = _?.__copy__();
    }
    @:keep
    static public function exactString( _x:T_unknownVal):stdgo.GoString {
        @:recv var _x:T_unknownVal = _x?.__copy__();
        return (_x.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _:T_unknownVal):stdgo.GoString {
        @:recv var _:T_unknownVal = _?.__copy__();
        return ("unknown" : stdgo.GoString);
    }
    @:keep
    static public function kind( _:T_unknownVal):Kind {
        @:recv var _:T_unknownVal = _?.__copy__();
        return (0 : stdgo._internal.go.constant.Constant.Kind);
    }
}
class T_stringVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function _appendReverse(_list:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> return __self__.value._appendReverse(_list);
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stringVal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.constant.Constant.T_stringVal_asInterface) class T_stringVal_static_extension {
    @:keep
    static public function _implementsValue( _:stdgo.Ref<T_stringVal>):Void {
        @:recv var _:stdgo.Ref<T_stringVal> = _;
    }
    @:keep
    static public function exactString( _x:stdgo.Ref<T_stringVal>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<T_stringVal> = _x;
        return stdgo._internal.strconv.Strconv.quote(_x._string()?.__copy__())?.__copy__();
    }
    @:keep
    static public function _appendReverse( _x:stdgo.Ref<T_stringVal>, _list:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        @:recv var _x:stdgo.Ref<T_stringVal> = _x;
        var _y = _x;
        while (_y._r != null && ((_y._r : Dynamic).__nil__ == null || !(_y._r : Dynamic).__nil__)) {
            _y._r._mu.lock();
            _list = _y._r._appendReverse(_list);
            _y._r._mu.unlock();
            var _l = _y._l;
            if (_y != (_x)) {
                _y._mu.unlock();
            };
            _l._mu.lock();
            _y = _l;
        };
        var _s:stdgo.GoString = _y._s?.__copy__();
        if (_y != (_x)) {
            _y._mu.unlock();
        };
        return (_list.__append__(_s?.__copy__()));
    }
    @:keep
    static public function _string( _x:stdgo.Ref<T_stringVal>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<T_stringVal> = _x;
        _x._mu.lock();
        if (_x._l != null && ((_x._l : Dynamic).__nil__ == null || !(_x._l : Dynamic).__nil__)) {
            _x._s = stdgo._internal.strings.Strings.join(_reverse(_x._appendReverse((null : stdgo.Slice<stdgo.GoString>))), stdgo.Go.str()?.__copy__())?.__copy__();
            _x._l = null;
            _x._r = null;
        };
        var _s:stdgo.GoString = _x._s?.__copy__();
        _x._mu.unlock();
        return _s?.__copy__();
    }
    @:keep
    static public function string( _x:stdgo.Ref<T_stringVal>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<T_stringVal> = _x;
        {};
        var _s:stdgo.GoString = stdgo._internal.strconv.Strconv.quote(_x._string()?.__copy__())?.__copy__();
        if ((stdgo._internal.unicode.utf8.Utf8.runeCountInString(_s?.__copy__()) > (72 : stdgo.GoInt) : Bool)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_n < (69 : stdgo.GoInt) : Bool), _n++, {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __1:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    _i = (_i + (_size) : stdgo.GoInt);
                });
            };
            _s = ((_s.__slice__(0, _i) : stdgo.GoString) + ("..." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
    @:keep
    static public function kind( _:stdgo.Ref<T_stringVal>):Kind {
        @:recv var _:stdgo.Ref<T_stringVal> = _;
        return (2 : stdgo._internal.go.constant.Constant.Kind);
    }
}
class T_intVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_intVal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.constant.Constant.T_intVal_asInterface) class T_intVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_intVal):Void {
        @:recv var _:T_intVal = _?.__copy__();
    }
    @:keep
    static public function exactString( _x:T_intVal):stdgo.GoString {
        @:recv var _x:T_intVal = _x?.__copy__();
        return (_x.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _x:T_intVal):stdgo.GoString {
        @:recv var _x:T_intVal = _x?.__copy__();
        return (_x._val.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function kind( _:T_intVal):Kind {
        @:recv var _:T_intVal = _?.__copy__();
        return (3 : stdgo._internal.go.constant.Constant.Kind);
    }
}
class T_ratVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_ratVal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.constant.Constant.T_ratVal_asInterface) class T_ratVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_ratVal):Void {
        @:recv var _:T_ratVal = _?.__copy__();
    }
    @:keep
    static public function exactString( _x:T_ratVal):stdgo.GoString {
        @:recv var _x:T_ratVal = _x?.__copy__();
        var _r = _x._val;
        if (_r.isInt()) {
            return (_r.num().string() : stdgo.GoString)?.__copy__();
        };
        return (_r.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _x:T_ratVal):stdgo.GoString {
        @:recv var _x:T_ratVal = _x?.__copy__();
        return (_rtof(_x?.__copy__()).string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function kind( _:T_ratVal):Kind {
        @:recv var _:T_ratVal = _?.__copy__();
        return (4 : stdgo._internal.go.constant.Constant.Kind);
    }
}
class T_floatVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_floatVal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.constant.Constant.T_floatVal_asInterface) class T_floatVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_floatVal):Void {
        @:recv var _:T_floatVal = _?.__copy__();
    }
    @:keep
    static public function exactString( _x:T_floatVal):stdgo.GoString {
        @:recv var _x:T_floatVal = _x?.__copy__();
        return _x._val.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    static public function string( _x:T_floatVal):stdgo.GoString {
        @:recv var _x:T_floatVal = _x?.__copy__();
        var _f = _x._val;
        if (_f.isInf()) {
            return (_f.string() : stdgo.GoString)?.__copy__();
        };
        {
            var __tmp__ = _f.float64(), _x:stdgo.GoFloat64 = __tmp__._0, __1:stdgo._internal.math.big.Big.Accuracy = __tmp__._1;
            if ((((_f.sign() == (0 : stdgo.GoInt)) == (_x == (0 : stdgo.GoFloat64))) && !stdgo._internal.math.Math.isInf(_x, (0 : stdgo.GoInt)) : Bool)) {
                var _s:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("%.6g" : stdgo.GoString), stdgo.Go.toInterface(_x))?.__copy__();
                if ((!_f.isInt() && (stdgo._internal.strings.Strings.indexByte(_s?.__copy__(), (46 : stdgo.GoUInt8)) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _s = stdgo._internal.fmt.Fmt.sprintf(("%g" : stdgo.GoString), stdgo.Go.toInterface(_x))?.__copy__();
                };
                return _s?.__copy__();
            };
        };
        var _mant:stdgo._internal.math.big.Big.Float_ = ({} : stdgo._internal.math.big.Big.Float_);
        var _exp:stdgo.GoInt = _f.mantExp((stdgo.Go.setRef(_mant) : stdgo.Ref<stdgo._internal.math.big.Big.Float_>));
        var __tmp__ = _mant.float64(), _m:stdgo.GoFloat64 = __tmp__._0, __2:stdgo._internal.math.big.Big.Accuracy = __tmp__._1;
        var _d:stdgo.GoFloat64 = ((_exp : stdgo.GoFloat64) * (0.3010299956639812 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _e:stdgo.GoInt64 = (_d : stdgo.GoInt64);
        _m = (_m * (stdgo._internal.math.Math.pow((10 : stdgo.GoFloat64), (_d - (_e : stdgo.GoFloat64) : stdgo.GoFloat64))) : stdgo.GoFloat64);
        {
            var _am:stdgo.GoFloat64 = stdgo._internal.math.Math.abs(_m);
            if ((_am < (0.9999995 : stdgo.GoFloat64) : Bool)) {
                _m = (_m * (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _e--;
            } else if ((_am >= (10 : stdgo.GoFloat64) : Bool)) {
                _m = (_m / (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _e++;
            };
        };
        return stdgo._internal.fmt.Fmt.sprintf(("%.6ge%+d" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_e))?.__copy__();
    }
    @:keep
    static public function kind( _:T_floatVal):Kind {
        @:recv var _:T_floatVal = _?.__copy__();
        return (4 : stdgo._internal.go.constant.Constant.Kind);
    }
}
class T_complexVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_complexVal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.constant.Constant.T_complexVal_asInterface) class T_complexVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_complexVal):Void {
        @:recv var _:T_complexVal = _?.__copy__();
    }
    @:keep
    static public function exactString( _x:T_complexVal):stdgo.GoString {
        @:recv var _x:T_complexVal = _x?.__copy__();
        return stdgo._internal.fmt.Fmt.sprintf(("(%s + %si)" : stdgo.GoString), stdgo.Go.toInterface(_x._re.exactString()), stdgo.Go.toInterface(_x._im.exactString()))?.__copy__();
    }
    @:keep
    static public function string( _x:T_complexVal):stdgo.GoString {
        @:recv var _x:T_complexVal = _x?.__copy__();
        return stdgo._internal.fmt.Fmt.sprintf(("(%s + %si)" : stdgo.GoString), stdgo.Go.toInterface(_x._re), stdgo.Go.toInterface(_x._im))?.__copy__();
    }
    @:keep
    static public function kind( _:T_complexVal):Kind {
        @:recv var _:T_complexVal = _?.__copy__();
        return (5 : stdgo._internal.go.constant.Constant.Kind);
    }
}
class Kind_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Kind>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.constant.Constant.Kind_asInterface) class Kind_static_extension {
    @:keep
    static public function string( _i:Kind):stdgo.GoString {
        @:recv var _i:Kind = _i;
        if (((_i < (0 : stdgo._internal.go.constant.Constant.Kind) : Bool) || (_i >= ((6 : stdgo.GoInt) : Kind) : Bool) : Bool)) {
            return ((("Kind(" : stdgo.GoString) + stdgo._internal.strconv.Strconv.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("UnknownBoolStringIntFloatComplex" : stdgo.GoString).__slice__(__Kind_index[(_i : stdgo.GoInt)], __Kind_index[((_i + (1 : stdgo._internal.go.constant.Constant.Kind) : stdgo._internal.go.constant.Constant.Kind) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
class T_boolVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_boolVal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.constant.Constant.T_boolVal_asInterface) class T_boolVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_boolVal):Void {
        @:recv var _:T_boolVal = _;
    }
    @:keep
    static public function exactString( _x:T_boolVal):stdgo.GoString {
        @:recv var _x:T_boolVal = _x;
        return (_x.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _x:T_boolVal):stdgo.GoString {
        @:recv var _x:T_boolVal = _x;
        return stdgo._internal.strconv.Strconv.formatBool((_x : Bool))?.__copy__();
    }
    @:keep
    static public function kind( _:T_boolVal):Kind {
        @:recv var _:T_boolVal = _;
        return (1 : stdgo._internal.go.constant.Constant.Kind);
    }
}
class T_int64Val_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_int64Val>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.go.constant.Constant.T_int64Val_asInterface) class T_int64Val_static_extension {
    @:keep
    static public function _implementsValue( _:T_int64Val):Void {
        @:recv var _:T_int64Val = _;
    }
    @:keep
    static public function exactString( _x:T_int64Val):stdgo.GoString {
        @:recv var _x:T_int64Val = _x;
        return (_x.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _x:T_int64Val):stdgo.GoString {
        @:recv var _x:T_int64Val = _x;
        return stdgo._internal.strconv.Strconv.formatInt((_x : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    static public function kind( _:T_int64Val):Kind {
        @:recv var _:T_int64Val = _;
        return (3 : stdgo._internal.go.constant.Constant.Kind);
    }
}
