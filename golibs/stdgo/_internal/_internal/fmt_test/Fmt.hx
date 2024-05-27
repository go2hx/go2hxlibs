package stdgo._internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(51, 51, ...[
(new stdgo._internal.testing.Testing.InternalTest(("TestErrorf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testErrorf) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFmtInterface" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testFmtInterface) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSprintf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testSprintf) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestComplexFormatting" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testComplexFormatting) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReorder" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testReorder) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCountMallocs" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testCountMallocs) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFlagParser" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testFlagParser) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStructPrinter" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testStructPrinter) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSlicePrinter" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testSlicePrinter) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMapPrinter" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testMapPrinter) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEmptyMap" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testEmptyMap) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBlank" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testBlank) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBlankln" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testBlankln) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFormatterPrintln" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testFormatterPrintln) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWidthAndPrecision" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testWidthAndPrecision) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPanics" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testPanics) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBadVerbRecursion" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testBadVerbRecursion) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsSpace" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testIsSpace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNilDoesNotBecomeTyped" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testNilDoesNotBecomeTyped) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFormatterFlags" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testFormatterFlags) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestParsenum" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testParsenum) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAppendf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testAppendf) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAppend" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testAppend) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAppendln" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testAppendln) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScan" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScan) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanln" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanln) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanf) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanOverflow" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanOverflow) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNaN" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testNaN) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestInf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testInf) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanfMulti" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanfMulti) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanMultiple" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanMultiple) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanEmpty" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanEmpty) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanNotPointer" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanNotPointer) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanlnNoNewline" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanlnNoNewline) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanlnWithMiddleNewline" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanlnWithMiddleNewline) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEOF" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testEOF) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEOFAtEndOfInput" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testEOFAtEndOfInput) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEOFAllTypes" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testEOFAllTypes) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnreadRuneWithBufio" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testUnreadRuneWithBufio) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiLine" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testMultiLine) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLineByLineFscanf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testLineByLineFscanf) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanStateCount" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanStateCount) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanInts" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanInts) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestHexBytes" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testHexBytes) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanNewlinesAreSpaces" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanNewlinesAreSpaces) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanlnNewlinesTerminate" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanlnNewlinesTerminate) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestScanfNewlineMatchFormat" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testScanfNewlineMatchFormat) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestHexByte" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testHexByte) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFormatString" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testFormatString) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStringer" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.testStringer) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 51 ... (51 > 51 ? 51 : 51 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(25, 25, ...[
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfPadding" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfPadding) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfEmpty" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfEmpty) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfString" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfString) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfTruncateString" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfTruncateString) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfTruncateBytes" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfTruncateBytes) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfSlowParsingPath" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfSlowParsingPath) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfQuoteString" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfQuoteString) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfInt" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfInt) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfIntInt" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfIntInt) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfPrefixedInt" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfPrefixedInt) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfFloat" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfFloat) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfComplex" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfComplex) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfBoolean" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfBoolean) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfHexString" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfHexString) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfHexBytes" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfHexBytes) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfBytes" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfBytes) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfStringer" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfStringer) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSprintfStructure" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkSprintfStructure) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkManyArgs" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkManyArgs) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkFprintInt" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkFprintInt) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkFprintfBytes" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkFprintfBytes) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkFprintIntNoAlloc" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkFprintIntNoAlloc) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkScanInts" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkScanInts) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkScanRecursiveInt" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkScanRecursiveInt) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkScanRecursiveIntReaderWrapper" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.benchmarkScanRecursiveIntReaderWrapper) : stdgo._internal.testing.Testing.InternalBenchmark)].concat([for (i in 25 ... (25 > 25 ? 25 : 25 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(17, 17, ...[
(new stdgo._internal.testing.Testing.InternalExample(("ExampleErrorf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleErrorf, ("user \"bueller\" (id 17) not found\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleFscanf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleFscanf, ("5 true gophers\n3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleFscanln" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleFscanln, ("3: dmr, 1771, 1.618034\n3: ken, 271828, 3.141590\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSscanf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleSscanf, ("2: Kim, 22\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExamplePrint" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.examplePrint, ("Kim is 22 years old.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExamplePrintln" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.examplePrintln, ("Kim is 22 years old.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExamplePrintf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.examplePrintf, ("Kim is 22 years old.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSprint" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleSprint, ("Kim is 22 years old.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSprintln" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleSprintln, ("Kim is 22 years old.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSprintf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleSprintf, ("Kim is 22 years old.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleFprint" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleFprint, ("Kim is 22 years old.\n21 bytes written.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleFprintln" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleFprintln, ("Kim is 22 years old.\n21 bytes written.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleFprintf" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleFprintf, ("Kim is 22 years old.\n21 bytes written.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("Example_printers" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.example_printers, ("The vector (3 4) has length 5.\nThe vector ( 3 4 ) has length 5 .\nThe vector (3 4) has length 5.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("Example_formats" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.example_formats, ("23\n23\n23\nint *int\ntrue true\n42 42 2a 52 101010\n3.141592653589793 3.141592653589793 3.14 (  3.14) 3.141593e+00\n(110.7+22.5i) (110.7+22.5i) (110.70+22.50i) (1.11e+02+2.25e+01i)\n128512 128512 😀 \'😀\' U+1F600 U+1F600 \'😀\'\nfoo \"bar\" foo \"bar\" \"foo \\\"bar\\\"\" `foo \"bar\"`\nmap[dachshund:false peanut:true] map[string]bool{\"dachshund\":false, \"peanut\":true}\n{Kim 22} {Name:Kim Age:22} struct { Name string; Age int }{Name:\"Kim\", Age:22}\n&{Kim 22} 0x0\n[Kitano Kobayashi Kurosawa Miyazaki Ozu] [\"Kitano\" \"Kobayashi\" \"Kurosawa\" \"Miyazaki\" \"Ozu\"]\n[Kitano Kobayashi Kurosawa] [\"Kitano\" \"Kobayashi\" \"Kurosawa\"] []string{\"Kitano\", \"Kobayashi\", \"Kurosawa\"}\n[97 226 140 152] [97 226 140 152] a⌘ \"a⌘\" 61e28c98 61 e2 8c 98\n1973-11-29 21:33:09 +0000 UTC \"1973-11-29 21:33:09 +0000 UTC\"\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleGoStringer" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleGoStringer, ("Person{Name: \"Warren\", Age: 31, Addr: &Address{City: \"Denver\", State: \"CO\", Country: \"U.S.A.\"}}\nPerson{Name: \"Theia\", Age: 4}\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleStringer" : stdgo.GoString), stdgo._internal.fmt_test.Fmt_test.exampleStringer, ("Gopher (2)\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("fmt" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
