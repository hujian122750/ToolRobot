package main

import (
	"fmt"
	"os"
)

func main() {
	args := os.Args
	if args == nil || len(args) == 0 {
		panic("input args len < 0")
	}

	filePath := args[0]
	fmt.Println("projects file path: ", filePath)

	_, err := os.Stat(filePath)
	if err != nil {
		if os.IsNotExist(err) {
			panic(fmt.Sprintf("%s is not exist", filePath))
		} else {
			panic(fmt.Sprintf("error: %v", err))
		}
	}
}
