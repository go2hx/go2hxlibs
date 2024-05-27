package stdgo._internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.unicode.utf16.Utf16;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(8, 8, ...[(new stdgo._internal.testing.Testing.InternalTest(("TestConstants" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.testConstants) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestEncode" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.testEncode) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestAppendRune" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.testAppendRune) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestEncodeRune" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.testEncodeRune) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestAllocationsDecode" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.testAllocationsDecode) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestDecode" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.testDecode) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestDecodeRune" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.testDecodeRune) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestIsSurrogate" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.testIsSurrogate) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(8, 8, ...[(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkDecodeValidASCII" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.benchmarkDecodeValidASCII) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkDecodeValidJapaneseChars" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.benchmarkDecodeValidJapaneseChars) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkDecodeRune" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.benchmarkDecodeRune) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkEncodeValidASCII" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.benchmarkEncodeValidASCII) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkEncodeValidJapaneseChars" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.benchmarkEncodeValidJapaneseChars) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAppendRuneValidASCII" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.benchmarkAppendRuneValidASCII) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAppendRuneValidJapaneseChars" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.benchmarkAppendRuneValidJapaneseChars) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkEncodeRune" : stdgo.GoString), stdgo._internal.unicode.utf16_test.Utf16_test.benchmarkEncodeRune) : stdgo._internal.testing.Testing.InternalBenchmark)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("unicode/utf16" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
