/**
 * @Author: hujian
 * @Description:
 * @File: fsm.go
 * @Date: 2024/2/25 22:46
 */
package util

import "sync"

const (
	//空状态
	FSM_State_Empty = iota
	//登录状态
	FSM_State_Login
	//游戏中状态
	FSM_State_Gameing
	//断开状态
	FSM_State_Broken
)

type IFSMState interface {
	Enter()
	Exit()
}

/*
状态机的基类
*/
type FSMState struct {
}

func (f *FSMState) Enter() {

}

func (f *FSMState) Exit() {

}

type FSM struct {
	mutex sync.RWMutex
	//注册的状态机
	states map[int]IFSMState
	//当前状态
	current_state int
}

/*
注册状态机
*/
func (f *FSM) AddState(key int, state IFSMState) {
	f.mutex.Lock()
	defer f.mutex.Unlock()
	if f.states == nil {
		f.states = make(map[int]IFSMState)
	}

	f.states[key] = state
}

func (f *FSM) GetState(state int) IFSMState {
	f.mutex.RLock()
	defer f.mutex.RUnlock()
	fsm, ok := f.states[state]
	if !ok {
		return nil
	}

	return fsm
}

func (f *FSM) ChangeState(state int) bool {
	f.mutex.Lock()
	defer f.mutex.Unlock()
	if f.current_state == state {
		return false
	}

	oldstate, ok := f.states[f.current_state]
	if !ok {
		return false
	}

	newstate, ok := f.states[state]
	if !ok {
		return false
	}

	oldstate.Exit()
	f.current_state = state
	newstate.Enter()
	return true
}
