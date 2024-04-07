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
	_, fileName, _, _ := runtime.Caller(0)
	pathstr := path.Dir(fileName)
	dataPath := path.Join(pathstr, "config/loadsql.json")
	codeCfg := util.ParseCodeConfigFromJson(dataPath)
	if len(codeCfg.Tables) == 0 && len(codeCfg.Interfaces) == 0 {
		return
	}

	for i := 0; i < len(codeCfg.Tables); i++ {
		s, _ := util.ParseSql(pathstr, codeCfg.Tables[i][0], codeCfg.Tables[i][1], codeCfg.Tables[i][2])
		util.TransferStruct(pathstr, s)
	}

	// TODO 根据json配置解析成对应的go struct
	//for i := 0; i < len(codeCfg.Interfaces); i++ {
	//
	//}
}
