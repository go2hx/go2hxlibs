package main

import "unicode/utf16"

func main() {
	println(utf16.EncodeRune('世'))
	println(utf16.IsSurrogate('世'))
}
