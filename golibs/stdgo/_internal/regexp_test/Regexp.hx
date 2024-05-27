package stdgo._internal.regexp_test;
import stdgo._internal.regexp.Regexp;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(44, 44, ...[
(new stdgo._internal.testing.Testing.InternalTest(("TestGoodCompile" : stdgo.GoString), stdgo._internal.regexp.Regexp.testGoodCompile) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBadCompile" : stdgo.GoString), stdgo._internal.regexp.Regexp.testBadCompile) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.testMatch) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMatchFunction" : stdgo.GoString), stdgo._internal.regexp.Regexp.testMatchFunction) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyMatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.testCopyMatch) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReplaceAll" : stdgo.GoString), stdgo._internal.regexp.Regexp.testReplaceAll) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReplaceAllLiteral" : stdgo.GoString), stdgo._internal.regexp.Regexp.testReplaceAllLiteral) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReplaceAllFunc" : stdgo.GoString), stdgo._internal.regexp.Regexp.testReplaceAllFunc) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestQuoteMeta" : stdgo.GoString), stdgo._internal.regexp.Regexp.testQuoteMeta) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLiteralPrefix" : stdgo.GoString), stdgo._internal.regexp.Regexp.testLiteralPrefix) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSubexp" : stdgo.GoString), stdgo._internal.regexp.Regexp.testSubexp) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSplit" : stdgo.GoString), stdgo._internal.regexp.Regexp.testSplit) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestParseAndCompile" : stdgo.GoString), stdgo._internal.regexp.Regexp.testParseAndCompile) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOnePassCutoff" : stdgo.GoString), stdgo._internal.regexp.Regexp.testOnePassCutoff) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwitchBacktrack" : stdgo.GoString), stdgo._internal.regexp.Regexp.testSwitchBacktrack) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDeepEqual" : stdgo.GoString), stdgo._internal.regexp.Regexp.testDeepEqual) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMinInputLen" : stdgo.GoString), stdgo._internal.regexp.Regexp.testMinInputLen) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnmarshalText" : stdgo.GoString), stdgo._internal.regexp.Regexp.testUnmarshalText) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRE2Exhaustive" : stdgo.GoString), stdgo._internal.regexp.Regexp.testRE2Exhaustive) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRE2Search" : stdgo.GoString), stdgo._internal.regexp.Regexp.testRE2Search) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFowler" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFowler) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLongest" : stdgo.GoString), stdgo._internal.regexp.Regexp.testLongest) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestProgramTooLongForBacktrack" : stdgo.GoString), stdgo._internal.regexp.Regexp.testProgramTooLongForBacktrack) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFind" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFind) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindString" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindString) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindIndex" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindIndex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindStringIndex" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindStringIndex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindReaderIndex" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindReaderIndex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindAll" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindAll) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindAllString" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindAllString) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindAllIndex" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindAllIndex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindAllStringIndex" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindAllStringIndex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindSubmatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindSubmatch) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindStringSubmatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindStringSubmatch) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindSubmatchIndex" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindSubmatchIndex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindStringSubmatchIndex" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindStringSubmatchIndex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindReaderSubmatchIndex" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindReaderSubmatchIndex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindAllSubmatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindAllSubmatch) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindAllStringSubmatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindAllStringSubmatch) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindAllSubmatchIndex" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindAllSubmatchIndex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFindAllStringSubmatchIndex" : stdgo.GoString), stdgo._internal.regexp.Regexp.testFindAllStringSubmatchIndex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMergeRuneSet" : stdgo.GoString), stdgo._internal.regexp.Regexp.testMergeRuneSet) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompileOnePass" : stdgo.GoString), stdgo._internal.regexp.Regexp.testCompileOnePass) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRunOnePass" : stdgo.GoString), stdgo._internal.regexp.Regexp.testRunOnePass) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 44 ... (44 > 44 ? 44 : 44 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(27, 27, ...[
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkFind" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkFind) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkFindAllNoMatches" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkFindAllNoMatches) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkFindString" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkFindString) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkFindSubmatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkFindSubmatch) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkFindStringSubmatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkFindStringSubmatch) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLiteral" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkLiteral) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkNotLiteral" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkNotLiteral) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMatchClass" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkMatchClass) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMatchClass_InRange" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkMatchClass_InRange) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkReplaceAll" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkReplaceAll) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAnchoredLiteralShortNonMatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkAnchoredLiteralShortNonMatch) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAnchoredLiteralLongNonMatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkAnchoredLiteralLongNonMatch) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAnchoredShortMatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkAnchoredShortMatch) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAnchoredLongMatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkAnchoredLongMatch) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkOnePassShortA" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkOnePassShortA) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkNotOnePassShortA" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkNotOnePassShortA) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkOnePassShortB" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkOnePassShortB) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkNotOnePassShortB" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkNotOnePassShortB) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkOnePassLongPrefix" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkOnePassLongPrefix) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkOnePassLongNotPrefix" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkOnePassLongNotPrefix) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMatchParallelShared" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkMatchParallelShared) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMatchParallelCopied" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkMatchParallelCopied) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkQuoteMetaAll" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkQuoteMetaAll) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkQuoteMetaNone" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkQuoteMetaNone) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCompile" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkCompile) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMatch" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkMatch) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMatch_onepass_regex" : stdgo.GoString), stdgo._internal.regexp.Regexp.benchmarkMatch_onepass_regex) : stdgo._internal.testing.Testing.InternalBenchmark)].concat([for (i in 27 ... (27 > 27 ? 27 : 27 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(31, 31, ...[
(new stdgo._internal.testing.Testing.InternalExample(("Example" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.example, ("true\ntrue\nfalse\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleMatch" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleMatch, ("true <nil>\nfalse <nil>\nfalse error parsing regexp: missing closing ): `a(b`\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleMatchString" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleMatchString, ("true <nil>\nfalse <nil>\nfalse error parsing regexp: missing closing ): `a(b`\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleQuoteMeta" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleQuoteMeta, ("Escaping symbols like: \\.\\+\\*\\?\\(\\)\\|\\[\\]\\{\\}\\^\\$\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_Find" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_Find, ("\"food\"\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindAll" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindAll, ("[\"food\" \"fool\"]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindAllSubmatch" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindAllSubmatch, ("[[\"food\" \"d\"] [\"fool\" \"l\"]]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindSubmatch" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindSubmatch, ("[\"food\" \"d\"]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_Match" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_Match, ("true\nfalse\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindString" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindString, ("\"food\"\n\"\"\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindStringIndex" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindStringIndex, ("[1 3]\ntrue\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindStringSubmatch" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindStringSubmatch, ("[\"axxxbyc\" \"xxx\" \"y\"]\n[\"abzc\" \"\" \"z\"]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindAllString" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindAllString, ("[ar an al]\n[ar an]\n[aa]\n[]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindAllStringSubmatch" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindAllStringSubmatch, ("[[\"ab\" \"\"]]\n[[\"axxb\" \"xx\"]]\n[[\"ab\" \"\"] [\"axb\" \"x\"]]\n[[\"axxb\" \"xx\"] [\"ab\" \"\"]]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindAllStringSubmatchIndex" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindAllStringSubmatchIndex, ("[[1 3 2 2]]\n[[1 5 2 4]]\n[[1 3 2 2] [4 7 5 6]]\n[[1 5 2 4] [6 8 7 7]]\n[]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindSubmatchIndex" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindSubmatchIndex, ("[1 3 2 2]\n[1 5 2 4]\n[1 3 2 2]\n[1 5 2 4]\n[]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_Longest" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_Longest, ("a\nab\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_MatchString" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_MatchString, ("false\ntrue\ntrue\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_NumSubexp" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_NumSubexp, ("0\n4\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAll" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_ReplaceAll, ("-T-T-\n--xx-\n---\n-W-xxW-\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAllLiteralString" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_ReplaceAllLiteralString, ("-T-T-\n-$1-$1-\n-${1}-${1}-\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAllString" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_ReplaceAllString, ("-T-T-\n--xx-\n---\n-W-xxW-\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_ReplaceAllStringFunc" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_ReplaceAllStringFunc, ("SeaFooD FooL\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_SubexpNames" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_SubexpNames, ("true\n[\"\" \"first\" \"last\"]\n${last} ${first}\nTuring Alan\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_SubexpIndex" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_SubexpIndex, ("true\nlast => 2\nTuring\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_Split" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_Split, ("[b n n ]\n[]\n[banana]\n[b nana]\n[pi a]\n[]\n[pizza]\n[pi a]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_Expand" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_Expand, ("option1=value1\noption2=value2\noption3=value3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_ExpandString" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_ExpandString, ("option1=value1\noption2=value2\noption3=value3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindIndex" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindIndex, ("[18 33]\noption1: value1\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindAllSubmatchIndex" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindAllSubmatchIndex, ("[18 33 18 25 27 33]\noption1: value1\noption1\nvalue1\n[35 50 35 42 44 50]\noption2: value2\noption2\nvalue2\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleRegexp_FindAllIndex" : stdgo.GoString), stdgo._internal.regexp_test.Regexp_test.exampleRegexp_FindAllIndex, ("[[1 3]]\n[[1 3] [4 6]]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)].concat([for (i in 31 ... (31 > 31 ? 31 : 31 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("regexp" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
