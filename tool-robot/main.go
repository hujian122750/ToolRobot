/**
 * @Author: hujian
 * @Description:
 * @File: main.go
 * @Date: 2024/2/14 22:55
 */
package main

import (
	"github.com/bench/tools/model"
	"github.com/bench/tools/util"
	"path"
	"runtime"
	"sync"
)

var PlayerManager *model.PlayerManager

func main() {
	const filepath = "config/robots.json"
	_, fileName, _, _ := runtime.Caller(0)
	dataPath := path.Join(path.Dir(fileName), filepath)
	rootCfg := util.ParseRootConfigFromJson(dataPath)
	if len(rootCfg.Users) == 0 {
		return
	}

	PlayerManager = new(model.PlayerManager)
	PlayerManager.Init(len(rootCfg.Users))

	wg := sync.WaitGroup{}
	for index := 0; index < len(rootCfg.Users); index++ {
		go func(user *model.UserInfo) {
			player := new(model.Player)
			player.Init(rootCfg.ServerURL, user)
			PlayerManager.AddWatchPlayer(player)
			wg.Add(1)
		}(&rootCfg.Users[index])

	}

	wg.Wait()
}
