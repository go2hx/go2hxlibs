function main() {
    final src = '
    // This is scanned code.
    if a > 10 {
        someParsable = text
    }';
    var s = ({} : stdgo.text.scanner.Scanner.Scanner_);
    s.init(stdgo.Go.asInterface(stdgo.strings.Strings.newReader(src)));
    s.position.filename = "example";
    var tok = s.scan();
    while(tok != -1) {
      Sys.println(s.position.string() + " " + s.tokenText());
      tok = s.scan();
    }
    //stdgo.unicode.utf8.
    trace(stdgo.unicode.utf8.Utf8.appendRune(["a".code,"b".code], "c".code));
}