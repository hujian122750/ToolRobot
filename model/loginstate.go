/**
 * @Author: hujian
 * @Description:
 * @File: loginstate.go
 * @Date: 2024/3/25 23:16
 */
package model

import (
	"encoding/json"
	"github.com/bench/tools/util"
	zap "github.com/openownworld/go-utils/log/zaplog"
)

// 登录状态
type LoginFSMState struct {
	util.FSMState
	player *Player
}

func (l *LoginFSMState) Enter() {
	zap.Info("LoginFSMState Enter,fpid=", l.player.GetFpid())

	//请求call:manifest
	resp, error := l.player.SendRequest("call", "manifest", nil)
	if error != nil {
		return
	}

	l.parseManifest(resp)

	//TODO 连rtm和stargate

	//请求call:init
	resp, error = l.startInit()
	if error != nil {
		return
	}

	l.parseInit(resp)

	//登录成功，切换到游戏中状态
	l.player.ChangeState(util.FSM_State_Gameing)
}

func (l *LoginFSMState) Exit() {
	zap.Info("LoginFSMState Exit,fpid=", l.player.GetFpid(), ",uid=", l.player.GetUid())
}

// 解析manifest的数据
func (l *LoginFSMState) parseManifest(resp map[string]interface{}) {
	payload, ok := resp["payload"].(map[string]interface{})
	if !ok {
		return
	}

	appver, ok := payload["app_ver"].(map[string]interface{})
	if !ok {
		return
	}

	l.player.LoginInfo.ConfigVersion, _ = appver["config_version"].(float64)
}

// 请求call:init
func (l *LoginFSMState) startInit() (map[string]interface{}, error) {
	req := make(map[string]interface{})
	req["os"] = "editor_ios"
	req["cv"] = l.player.LoginInfo.ConfigVersion
	req["client_version"] = "2.0.0"
	req["fpid"] = l.player.GetFpid()
	req["device_lang"] = "en"
	req["session_key"] = "editor"
	req["channel"] = "global"
	req["editor"] = "session_key"
	req["device_lang"] = "zh-CN"
	req["lang"] = "zh-CN"
	req["sys_lang"] = "zh-CN"
	req["kingdom_id"] = 1
	req["push_message"] = map[string]interface{}{
		"device_token":  "testDeviceToken",
		"channel_type":  "aws",
		"device_type":   "phone",
		"platform_type": "apns",
	}
	req["social_id"] = ""
	req["time_zone"] = "+08:00"
	req["os_version"] = "11.14.0"

	resp, error := l.player.SendRequest("call", "init", req)
	if error != nil {
		return nil, error
	}

	return resp, nil
}

func (l *LoginFSMState) parseInit(resp map[string]interface{}) {
	//解析init的payload数据
	payload, ok := resp["payload"].(map[string]interface{})
	if !ok {
		return
	}

	jsonData, err := json.Marshal(payload)
	if err != nil {
		return
	}

	err = json.Unmarshal([]byte(jsonData), &l.player.LoginInfo.InitInfo)
	if err != nil {
		return
	}

	//更新玩家的DB数据
	l.player.UpdateDB(resp)
}
