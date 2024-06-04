package _internal.github_com.go2hx.libraries.examples.strconv.internal;
function main():Void {
    var _b = (("quote (ascii):" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
    _b = stdgo._internal.strconv.Strconv.appendQuoteToASCII(_b, ("\"Fran & Freddie\'s Diner\"" : stdgo.GoString));
    stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
}
