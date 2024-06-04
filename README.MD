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

| api | example | internal example | go api |
| - | - | - | - |
| [unicode](https://go2hx.github.io/stdgo/unicode/) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/unicode/Unicode.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/unicode/internal/_internal/github_com/go2hx/libraries/examples/unicode/internal/Internal.hx) | [go api](https://pkg.go.dev/unicode) |
| [strings](https://go2hx.github.io/stdgo/strings/) | [example](https://github.com/go2hx/go2hxlibs/blob/master/examples/strings/Strings.hx) | [internal example](https://github.com/go2hx/go2hxlibs/blob/master/examples/strings/internal/_internal/github_com/go2hx/libraries/examples/strings/internal/Internal.hx) | [go api](https://pkg.go.dev/strings) |