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
}

func (e *EmptyFSMState) Enter() {

}

func (e *EmptyFSMState) Exit() {

}