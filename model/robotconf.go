package model

// 可以通过工具直接生成，json转为go struct
type RobotConf struct {
	ServerURL string `json:"server_url"`
	Users     []struct {
		Fpid string `json:"fpid"`
	} `json:"users"`
}
