/**
 * @Author: hujian
 * @Description:
 * @File: brokenstate
 * @Date: 2024/3/25 23:18
 */
package model

import "github.com/bench/tools/util"

// 断开状态
type BrokenFSMState struct {
	util.FSMState
	player *Player
}

func (b *BrokenFSMState) Enter() {

}

func (b *BrokenFSMState) Exit() {

}
