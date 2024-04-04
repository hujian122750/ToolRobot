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
	pathstr := path.Dir(fileName)
	dataPath := path.Join(pathstr, filepath)
	codeCfg := util.ParseCodeConfigFromJson(dataPath)
	if len(codeCfg.Tables) == 0 {
		return
	}

	for i := 0; i < len(codeCfg.Tables); i++ {
		s, _ := util.ParseSql(pathstr, codeCfg.Tables[i][0], codeCfg.Tables[i][1], codeCfg.Tables[i][2])
		util.TransferStruct(pathstr, s)
	}
}
