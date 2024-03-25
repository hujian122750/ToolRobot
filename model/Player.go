package model

import (
	"encoding/json"
	"github.com/go-resty/resty/v2"
	"net/http"
	"time"
)

type Player struct {
	Charactor
	serverUrl string
	restyC    *resty.Client
}

func (p *Player) Init(serverUrl string, userInfo *UserInfo) {
	p.serverUrl = serverUrl
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
}

func (p *Player) SendRequest(class string, method string, params map[string]interface{}) (map[string]interface{}, error) {
	body := map[string]interface{}{
		"class":  class,
		"method": method,
		"params": params,
	}

	resp, error := p.restyC.R().
		SetBody(body).
		Post(p.serverUrl)

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
