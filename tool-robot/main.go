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
	"net/http"
	"path"
	"runtime"
	"sync"
)

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

	model.PlayerMgr = new(model.PlayerManager)
	model.PlayerMgr.Init(len(util.RobotCfg.Users))

	go func() {
		g := gin.Default()
		//g.SetFuncMap(template.FuncMap{
		//	"upper": strings.ToUpper,
		//})
		//g.LoadHTMLGlob("templates/*.html")
		g.GET("/get_players", func(ctx *gin.Context) {
			ctx.HTML(http.StatusOK, "get_players.html", nil)
		})

		g.Run(":8082")
	}()

	wg := sync.WaitGroup{}
	wg.Add(len(util.RobotCfg.Users))
	for index := 0; index < len(util.RobotCfg.Users); index++ {
		go func(user *util.UserInfo) {
			player := new(model.Player)
			player.Init(util.RobotCfg.ServerURL, user)

		}(&util.RobotCfg.Users[index])

	}

	wg.Wait()
}
