package main

import (
	"encoding/hex"
	"fmt"
)

func main() {
	const s = "48656c6c6f20476f7068657221"
	decoded, err := hex.DecodeString(s)
	if err != nil {
		panic(err)
	}

	fmt.Printf("%s\n", decoded)

}
