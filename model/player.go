/**
 * @Author: Administrator
 * @Description:
 * @File: player.go
 * @Date: 2024/2/19 20:40
 */
package model

import (
	"encoding/json"
	"github.com/bench/tools/data"
	"github.com/bench/tools/util"
	"github.com/go-resty/resty/v2"
	"net/http"
	"time"
)

type Player struct {
	Charactor
	LoginInfo data.LoginInfo
	fsm       *util.FSM
	restyC    *resty.Client
}

func (p *Player) Init(serverUrl string, userInfo *UserInfo) {
	p.LoginInfo.ServerUrl = serverUrl
	p.Charactor.Fpid = userInfo.Fpid
	p.restyC = resty.New()
	//设置连接池
	p.restyC.SetTransport(&http.Transport{
		MaxIdleConnsPerHost: 10,
	})
	//设置超时时间
	p.restyC.SetTimeout(10 * time.Second)
	//设置重试
	p.restyC.SetRetryCount(3).SetRetryWaitTime(5 * time.Second)

	//初始化状态
	p.fsm = new(util.FSM)
	p.fsm.AddState(util.FSM_State_Empty, &EmptyFSMState{})
	p.fsm.AddState(util.FSM_State_Login, &LoginFSMState{})
	p.fsm.AddState(util.FSM_State_Gameing, &GameFSMState{})
	p.fsm.AddState(util.FSM_State_Broken, &BrokenFSMState{})
	p.fsm.ChangeState(util.FSM_State_Empty)
}

func (p *Player) SendRequest(class string, method string, params map[string]interface{}) (map[string]interface{}, error) {
	body := map[string]interface{}{
		"class":  class,
		"method": method,
		"params": params,
	}

	resp, error := p.restyC.R().
		SetBody(body).
		Post(p.LoginInfo.ServerUrl)

	if error != nil {
		return nil, error
	}

	var result map[string]interface{}
	error = json.Unmarshal(resp.Body(), &result)
	if error != nil {
		return nil, error
	}

	return result, nil
}
