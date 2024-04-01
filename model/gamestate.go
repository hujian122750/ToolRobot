/**
 * @Author: hujian
 * @Description:
 * @File: gamestate
 * @Date: 2024/3/25 23:17
 */
package model

import (
	"fmt"
	"github.com/bench/tools/util"
)

// 游戏中状态
type GameFSMState struct {
	util.FSMState
	player *Player
}

func (g *GameFSMState) Enter() {
	fmt.Println(g.player.Fpid)
}

func (g *GameFSMState) Exit() {

}
