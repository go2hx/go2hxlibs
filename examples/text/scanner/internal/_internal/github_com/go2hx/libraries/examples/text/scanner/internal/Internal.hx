package _internal.github_com.go2hx.libraries.examples.text.scanner.internal;
function main():Void {
    {};
    var _s:stdgo._internal.text.scanner.Scanner.Scanner = ({} : stdgo._internal.text.scanner.Scanner.Scanner);
    _s.init(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("\n// This is scanned code.\nif a > 10 {\n\tsomeParsable = text\n}" : stdgo.GoString))));
    _s.position.filename = ("example" : stdgo.GoString);
    {
        var _tok:stdgo.GoInt32 = _s.scan();
        stdgo.Go.cfor(_tok != ((-1 : stdgo.GoInt32)), _tok = _s.scan(), {
            stdgo._internal.fmt.Fmt.printf(("%s: %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.position)), stdgo.Go.toInterface(_s.tokenText()));
        });
    };
}
