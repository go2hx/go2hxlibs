package _internal.github_com.go2hx.libraries.examples.path.internal;
function main():Void {
    var _paths = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("a/c" : stdgo.GoString), ("a//c" : stdgo.GoString), ("a/c/." : stdgo.GoString), ("a/c/b/.." : stdgo.GoString), ("/../a/c" : stdgo.GoString), ("/../a/b/../././/c" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
    for (__0 => _p in _paths) {
        stdgo._internal.fmt.Fmt.printf(("Clean(%q) = %q\n" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(stdgo._internal.path.Path.clean(_p?.__copy__())));
    };
}
