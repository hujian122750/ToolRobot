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
	const filepath = "config/loadsql.json"
	_, fileName, _, _ := runtime.Caller(0)
	dataPath := path.Join(path.Dir(fileName), filepath)
	codeCfg := util.ParseCodeConfigFromJson(dataPath)
	if len(codeCfg.Tables) == 0 {
		return
	}
}
