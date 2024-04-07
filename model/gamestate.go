/**
 * @Author: hujian
 * @Description:
 * @File: gamestate
 * @Date: 2024/3/25 23:17
 */
package model

import (
	"github.com/bench/tools/util"
	zap "github.com/openownworld/go-utils/log/zaplog"
)

// 游戏中状态
type GameFSMState struct {
	util.FSMState
	player *Player
}

func (g *GameFSMState) Enter() {
	zap.Info("GameFSMState Enter,fpid=", g.player.GetFpid(), ",uid=", g.player.GetUid())
	g.player.GmCommand()
}

func (g *GameFSMState) Exit() {

}
