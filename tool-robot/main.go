/**
 * @Author: hujian
 * @Description:
 * @File: main.go
 * @Date: 2024/2/14 22:55
 */
package main

import (
	"fmt"
	"github.com/bench/tools/model"
	"github.com/bench/tools/util"
	zap "github.com/openownworld/go-utils/log/zaplog"
	"path"
	"runtime"
	"sync"
)

//var PlayerManager *model.PlayerManager

func main() {
	_, fileName, _, _ := runtime.Caller(0)
	dataPath := path.Join(path.Dir(fileName), "config/log.ini")
	//初始化日志
	err := zap.InitLoggerFile(dataPath)
	if err != nil {
		fmt.Printf("InitLoggerFile error:%v", err)
		return
	}

	dataPath = path.Join(path.Dir(fileName), "config/robots.json")
	rootCfg := util.ParseRootConfigFromJson(dataPath)
	if len(rootCfg.Users) == 0 {
		return
	}

	//PlayerManager = new(model.PlayerManager)
	//PlayerManager.Init(len(rootCfg.Users))

	wg := sync.WaitGroup{}
	wg.Add(len(rootCfg.Users))
	for index := 0; index < len(rootCfg.Users); index++ {
		go func(user *util.UserInfo) {
			player := new(model.Player)
			player.Init(rootCfg.ServerURL, user)
			//PlayerManager.AddWatchPlayer(player)

		}(&rootCfg.Users[index])

	}

	wg.Wait()
}
