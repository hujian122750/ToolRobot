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
	zap "github.com/openownworld/go-utils/log/zaplog"
	"net/http"
	"time"
)

type Player struct {
	Charactor
	LoginInfo data.LoginInfo
	DB        data.DBCache
	fsm       *util.FSM
	restyC    *resty.Client

	state chan int
}

func (p *Player) Init(serverUrl string, userInfo *util.UserInfo) {
	p.LoginInfo.ServerUrl = serverUrl
	p.Charactor.Fpid = userInfo.Fpid
	p.DB.Init()
	p.state = make(chan int)
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
	p.fsm.AddState(util.FSM_State_Empty, &EmptyFSMState{player: p})
	p.fsm.AddState(util.FSM_State_Login, &LoginFSMState{player: p})
	p.fsm.AddState(util.FSM_State_Gameing, &GameFSMState{player: p})
	p.fsm.AddState(util.FSM_State_Broken, &BrokenFSMState{player: p})
	p.ChangeState(util.FSM_State_Login)

	ticker := time.NewTicker(time.Second)
	for {
		select {
		case <-ticker.C:
			p.Tick()
		case s := <-p.state:
			p.fsm.ChangeState(s)
		}
	}
}

func (p *Player) Tick() {
}

func (p *Player) ChangeState(state int) {
	go func() {
		p.state <- state
	}()
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

func (p *Player) GetFpid() string {
	return p.Fpid
}

func (p *Player) GetUid() int32 {
	return p.DB.UserInfo.Uid
}

func (p *Player) GetToken() string {
	return p.LoginInfo.InitInfo.Token
}

// 更新玩家的DB数据
func (p *Player) UpdateDB(resp map[string]interface{}) {
	data, ok := resp["data"].(map[string]interface{})
	if !ok {
		return
	}

	p.updateModel(data, p.DB.UserInfo)
	p.updateModels(data, p.DB.UserRawRowList)
}

// 更新model数据
func (p *Player) updateModel(data map[string]interface{}, model data.IBaseModel) {
	modelInfo, ok := data[model.ModelName()].([]interface{})
	if !ok {
		return
	}

	mI, ok := modelInfo[0].(map[string]interface{})
	if !ok {
		return
	}

	jsonData, err := json.Marshal(mI)
	if err != nil {
		return
	}

	err = json.Unmarshal([]byte(jsonData), model)
	if err != nil {
		return
	}
}

// 更新model数据
func (p *Player) updateModels(data map[string]interface{}, header data.IBaseModel) {
	modelInfo, ok := data[header.ModelName()].([]interface{})
	if !ok {
		return
	}

	for n := 0; n < len(modelInfo); n++ {
		mI, ok := modelInfo[0].(map[string]interface{})
		if !ok {
			continue
		}

		jsonData, err := json.Marshal(mI)
		if err != nil {
			continue
		}

		zap.Info(jsonData)
		//model := new(*reflect.TypeOf(header).Elem())
		//err = json.Unmarshal([]byte(jsonData), model)
		//if err != nil {
		//	continue
		//}
	}

}
