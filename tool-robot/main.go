/**
 * @Author: hujian
 * @Description:
 * @File: main.go
 * @Date: 2024/2/14 22:55
 */
package main

import (
	"fmt"
	"github.com/bench/tools/model"
	"github.com/bench/tools/util"
	"path"
	"runtime"
)

func main() {
	const filepath = "config/robots.json"
	_, fileName, _, _ := runtime.Caller(0)
	dataPath := path.Join(path.Dir(fileName), filepath)
	rootCfg := util.ParseRootConfigFromJson(dataPath)
	if len(rootCfg.Users) == 0 {
		return
	}

	player := new(model.Player)
	player.Init(rootCfg.ServerURL, &rootCfg.Users[0])

	resp, _ := player.SendRequest("call", "manifest", nil)
	fmt.Println(resp)

	payload, ok := resp["payload"].(map[string]interface{})
	if !ok {

	}

	appver, ok := payload["app_ver"].(map[string]interface{})
	if !ok {

	}
	req := make(map[string]interface{})
	req["os"] = "editor_ios"
	req["cv"] = appver["config_version"]
	req["client_version"] = "2.0.0"
	req["fpid"] = player.Fpid
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

	resp1, error := player.SendRequest("call", "init", req)
	if error != nil {

	}
	fmt.Println(resp1)
}
