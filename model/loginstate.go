/**
 * @Author: hujian
 * @Description:
 * @File: loginstate.go
 * @Date: 2024/3/25 23:16
 */
package model

import "github.com/bench/tools/util"

// 登录状态
type LoginFSMState struct {
	util.FSMState
	player *Player
}

func (l *LoginFSMState) Enter() {
	util.DebugLog("fpid:%s LoginFSMState Enter", l.player.GetFpid())
}

func (l *LoginFSMState) Exit() {
	util.DebugLog("fpid:%s LoginFSMState Exit", l.player.GetFpid())
}
