/**
 * @Author: hujian
 * @Description:
 * @File: emptystate.go
 * @Date: 2024/3/25 23:12
 */
package model

import "github.com/bench/tools/util"

// 空状态
type EmptyFSMState struct {
	util.FSMState
	player *Player
}

func (e *EmptyFSMState) Enter() {
	util.DebugLog("fpid:%s EmptyFSMState Enter", e.player.GetFpid())
	e.player.ChangeState(util.FSM_State_Login)
}

func (e *EmptyFSMState) Exit() {
	util.DebugLog("fpid:%s EmptyFSMState Exit", e.player.GetFpid())
}
