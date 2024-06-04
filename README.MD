<img src="logo.svg" width="270" align="right"/>

go2hxlibs
===============

Use Golang libraries in Haxe

### Getting Started
Requires [Haxe 4.3.2+](https://build.haxe.org/builds/haxe/)

*Only tested on the hashlink target*

Install the library from github:
```sh
haxelib git go2hxlibs https://github.com/go2hx/go2hxlibs
```

Including the library in your hxml:
```hxml
-lib go2hxlibs
```

For OpenFL and Haxeflixel projects:
```xml
<haxelib name="go2hxlibs" />
```


### Libraries

| api | go api | example | internal example |
| - | - | - | - |
| [stdgo.bytes](https://go2hx.github.io/stdgo/bytes) | [go api](https://pkg.go.dev/bytes) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/bytes/Bytes.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/bytes/internal/_internal/github_com/go2hx/libraries/examples/bytes/internal/Internal.hx)|
| [stdgo.encoding.base64](https://go2hx.github.io/stdgo/encoding/base64) | [go api](https://pkg.go.dev/encoding/base64) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/encoding/base64/Base64.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/encoding/base64/internal/_internal/github_com/go2hx/libraries/examples/encoding/base64/internal/Internal.hx)|
| [stdgo.encoding.hex](https://go2hx.github.io/stdgo/encoding/hex) | [go api](https://pkg.go.dev/encoding/hex) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/encoding/hex/Hex.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/encoding/hex/internal/_internal/github_com/go2hx/libraries/examples/encoding/hex/internal/Internal.hx)|
| [stdgo.errors](https://go2hx.github.io/stdgo/errors) | [go api](https://pkg.go.dev/errors) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/errors/Errors.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/errors/internal/_internal/github_com/go2hx/libraries/examples/errors/internal/Internal.hx)|
| [stdgo.hash.adler32](https://go2hx.github.io/stdgo/hash/adler32) | [go api](https://pkg.go.dev/hash/adler32) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/hash/adler32/Adler32.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/hash/adler32/internal/_internal/github_com/go2hx/libraries/examples/hash/adler32/internal/Internal.hx)|
| [stdgo.math](https://go2hx.github.io/stdgo/math) | [go api](https://pkg.go.dev/math) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/math/Math.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/math/internal/_internal/github_com/go2hx/libraries/examples/math/internal/Internal.hx)|
| [stdgo.math.bits](https://go2hx.github.io/stdgo/math/bits) | [go api](https://pkg.go.dev/math/bits) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/math/bits/Bits.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/math/bits/internal/_internal/github_com/go2hx/libraries/examples/math/bits/internal/Internal.hx)|
| [stdgo.path](https://go2hx.github.io/stdgo/path) | [go api](https://pkg.go.dev/path) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/path/Path.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/path/internal/_internal/github_com/go2hx/libraries/examples/path/internal/Internal.hx)|
| [stdgo.sort](https://go2hx.github.io/stdgo/sort) | [go api](https://pkg.go.dev/sort) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/sort/Sort.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/sort/internal/_internal/github_com/go2hx/libraries/examples/sort/internal/Internal.hx)|
| [stdgo.strconv](https://go2hx.github.io/stdgo/strconv) | [go api](https://pkg.go.dev/strconv) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/strconv/Strconv.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/strconv/internal/_internal/github_com/go2hx/libraries/examples/strconv/internal/Internal.hx)|
| [stdgo.strings](https://go2hx.github.io/stdgo/strings) | [go api](https://pkg.go.dev/strings) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/strings/Strings.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/strings/internal/_internal/github_com/go2hx/libraries/examples/strings/internal/Internal.hx)|
| [stdgo.text.scanner](https://go2hx.github.io/stdgo/text/scanner) | [go api](https://pkg.go.dev/text/scanner) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/text/scanner/Scanner.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/text/scanner/internal/_internal/github_com/go2hx/libraries/examples/text/scanner/internal/Internal.hx)|
| [stdgo.unicode](https://go2hx.github.io/stdgo/unicode) | [go api](https://pkg.go.dev/unicode) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/unicode/Unicode.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/unicode/internal/_internal/github_com/go2hx/libraries/examples/unicode/internal/Internal.hx)|
| [stdgo.unicode.utf16](https://go2hx.github.io/stdgo/unicode/utf16) | [go api](https://pkg.go.dev/unicode/utf16) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/unicode/utf16/Utf16.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/unicode/utf16/internal/_internal/github_com/go2hx/libraries/examples/unicode/utf16/internal/Internal.hx)|
| [stdgo.unicode.utf8](https://go2hx.github.io/stdgo/unicode/utf8) | [go api](https://pkg.go.dev/unicode/utf8) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/unicode/utf8/Utf8.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/unicode/utf8/internal/_internal/github_com/go2hx/libraries/examples/unicode/utf8/internal/Internal.hx)|