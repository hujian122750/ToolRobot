/**
 * @Author: hujian
 * @Description:
 * @File: playermanager.go
 * @Date: 2024/2/26 23:07
 */
package model

import "sync"

var PlayerMgr *PlayerManager

type PlayerManager struct {
	mutex sync.Mutex
	//登录进来的玩家列表
	players map[int32]*Player
	//监控的玩家
	watchplayers []*Player
}

func (p *PlayerManager) Init(cap int) {
	p.players = make(map[int32]*Player, cap)
	p.watchplayers = make([]*Player, cap)
}

func (p *PlayerManager) AddWatchPlayer(player *Player) {
	p.mutex.Lock()
	defer p.mutex.Unlock()
	p.watchplayers = append(p.watchplayers, player)
}

func (p *PlayerManager) AddPlayer(player *Player) bool {
	p.mutex.Lock()
	defer p.mutex.Unlock()
	_, ok := p.players[player.GetUid()]
	if ok {
		return false
	}

	p.players[player.GetUid()] = player
	return true
}
