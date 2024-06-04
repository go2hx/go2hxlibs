package _internal.github_com.go2hx.libraries.examples.unicode.internal;
function main():Void {
    {};
    for (__0 => _c in ("\x085Ὂg̀9! ℃ᾭG" : stdgo.GoString)) {
        stdgo._internal.fmt.Fmt.printf(("For %q:\n" : stdgo.GoString), stdgo.Go.toInterface(_c));
        if (stdgo._internal.unicode.Unicode.isControl(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis control rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isDigit(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis digit rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isGraphic(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis graphic rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isLetter(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis letter rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isLower(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis lower case rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isMark(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis mark rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isNumber(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis number rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isPrint(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis printable rune" : stdgo.GoString)));
        };
        if (!stdgo._internal.unicode.Unicode.isPrint(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis not printable rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isPunct(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis punct rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isSpace(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis space rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isSymbol(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis symbol rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isTitle(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis title case rune" : stdgo.GoString)));
        };
        if (stdgo._internal.unicode.Unicode.isUpper(_c)) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis upper case rune" : stdgo.GoString)));
        };
    };
}
