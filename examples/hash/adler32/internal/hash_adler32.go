package main

import "hash/adler32"

func main() {
	println(adler32.Checksum([]byte("hello world")))
}
