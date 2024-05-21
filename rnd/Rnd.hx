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

    //stdgo.math.bits.Bits.
}

/*
var data = "abc123!?$*&()'-=@~";
   var encoder = stdgo.encoding.base64.Base64.stdEncoding.encodeToString(data);
   trace(encoder.toString());
   trace(stdgo.sort.Sort.searchInts([1,2,3], 3));
   trace(stdgo.path.Path.split("helloworld/a/pizza")._1);
   // stdgo.text.Scanner
*/

/*
bytes",
encoding/base64",
encoding/hex",
errors",
hash/adler32",
math",
math/bits",
path",
sort",
strconv",
strings",
text/scanner",
unicode",
unicode/utf16",
unicode/utf8"
 */