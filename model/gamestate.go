/**
 * @Author: hujian
 * @Description:
 * @File: gamestate
 * @Date: 2024/3/25 23:17
 */
package model

import "github.com/bench/tools/util"

// 游戏中状态
type GameFSMState struct {
	util.FSMState
}

func (g *GameFSMState) Enter() {

}

func (g *GameFSMState) Exit() {

}
