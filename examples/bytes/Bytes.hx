

function main() {
    // Converting string -> Array<Int> can be done quickly by using stdgo.GoString as it can handle the casting for you
    trace(stdgo.bytes.Bytes.containsAny(("I like seafood." : stdgo.GoString), ("fÄo!" : stdgo.GoString)));
}

