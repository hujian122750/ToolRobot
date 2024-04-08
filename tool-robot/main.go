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
	"github.com/gin-gonic/gin"
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
	util.RobotCfg = util.ParseRootConfigFromJson(dataPath)
	if len(util.RobotCfg.Users) == 0 {
		return
	}

	dataPath = path.Join(path.Dir(fileName), "config/robot_rules.json")
	util.GmCfg = util.ParseGmConfigFromJson(dataPath)

	go func() {
		g := gin.Default()
		g.GET("/get_players", func(ctx *gin.Context) {
			ctx.JSON(200, map[string]any{"method": "get_players"})
		})

		g.Run(":8082")
	}()

	//PlayerManager = new(model.PlayerManager)
	//PlayerManager.Init(len(rootCfg.Users))

	wg := sync.WaitGroup{}
	wg.Add(len(util.RobotCfg.Users))
	for index := 0; index < len(util.RobotCfg.Users); index++ {
		go func(user *util.UserInfo) {
			player := new(model.Player)
			player.Init(util.RobotCfg.ServerURL, user)
			//PlayerManager.AddWatchPlayer(player)

		}(&util.RobotCfg.Users[index])

	}

	wg.Wait()
}
