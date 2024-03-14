/**
 * @Author: hujian
 * @Description:
 * @File: main.go
 * @Date: 2024/2/14 22:55
 */
package main

import (
	"github.com/bench/tools/util"
	"path"
	"runtime"
)

func main() {
	const filepath = "config\\robots.json"
	_, fileName, _, _ := runtime.Caller(0)
	dataPath := path.Join(path.Dir(fileName), filepath)
	rootCfg := util.ParseRootConfigFromJson(dataPath)
	if len(rootCfg.Users) == 0 {
		return
	}
}
