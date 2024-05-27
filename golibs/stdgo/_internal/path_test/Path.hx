package stdgo._internal.path_test;
import stdgo._internal.path.Path;
import stdgo._internal.path.Path;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(9, 9, ...[(new stdgo._internal.testing.Testing.InternalTest(("TestMatch" : stdgo.GoString), stdgo._internal.path_test.Path_test.testMatch) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestClean" : stdgo.GoString), stdgo._internal.path_test.Path_test.testClean) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestCleanMallocs" : stdgo.GoString), stdgo._internal.path_test.Path_test.testCleanMallocs) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestSplit" : stdgo.GoString), stdgo._internal.path_test.Path_test.testSplit) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestJoin" : stdgo.GoString), stdgo._internal.path_test.Path_test.testJoin) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestExt" : stdgo.GoString), stdgo._internal.path_test.Path_test.testExt) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestBase" : stdgo.GoString), stdgo._internal.path_test.Path_test.testBase) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestDir" : stdgo.GoString), stdgo._internal.path_test.Path_test.testDir) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestIsAbs" : stdgo.GoString), stdgo._internal.path_test.Path_test.testIsAbs) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(8, 8, ...[(new stdgo._internal.testing.Testing.InternalExample(("ExampleBase" : stdgo.GoString), stdgo._internal.path_test.Path_test.exampleBase, ("b\n/\n.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleClean" : stdgo.GoString), stdgo._internal.path_test.Path_test.exampleClean, ("Clean(\"a/c\") = \"a/c\"\nClean(\"a//c\") = \"a/c\"\nClean(\"a/c/.\") = \"a/c\"\nClean(\"a/c/b/..\") = \"a/c\"\nClean(\"/../a/c\") = \"/a/c\"\nClean(\"/../a/b/../././/c\") = \"/a/c\"\nClean(\"\") = \".\"\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleDir" : stdgo.GoString), stdgo._internal.path_test.Path_test.exampleDir, ("/a/b\na/b\n/a\na\n/\n.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleExt" : stdgo.GoString), stdgo._internal.path_test.Path_test.exampleExt, (".css\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleIsAbs" : stdgo.GoString), stdgo._internal.path_test.Path_test.exampleIsAbs, ("true\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleJoin" : stdgo.GoString), stdgo._internal.path_test.Path_test.exampleJoin, ("a/b/c\na/b/c\na/b/c\n../xyz\n\na\na\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleMatch" : stdgo.GoString), stdgo._internal.path_test.Path_test.exampleMatch, ("true <nil>\ntrue <nil>\nfalse <nil>\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleSplit" : stdgo.GoString), stdgo._internal.path_test.Path_test.exampleSplit, ("path.Split(\"static/myfile.css\") = dir: \"static/\", file: \"myfile.css\"\npath.Split(\"myfile.css\") = dir: \"\", file: \"myfile.css\"\npath.Split(\"\") = dir: \"\", file: \"\"\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("path" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
