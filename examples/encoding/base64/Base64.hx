
function main() {
    final msg = "Hello, 世界";
    // Converting string -> Array<Int> can be done quickly by using stdgo.GoString as it can handle the casting for you
    final encoded = stdgo.encoding.base64.Base64.stdEncoding.encodeToString((msg : stdgo.GoString));
    trace(encoded);
    final decodeObj = stdgo.encoding.base64.Base64.stdEncoding.decodeString(encoded);
    final decoded = decodeObj._0;
    final err = decodeObj._1;
    if (err != null) {
        throw err;
    }
    // You can cast a char array (Array<Int>) back into a string using stdgo.GoString casting
    trace((decoded : stdgo.GoString));
}

