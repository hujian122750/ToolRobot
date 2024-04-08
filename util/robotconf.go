package util

var RobotCfg *RobotConf
var GmCfg *GmConf

// 可以通过工具直接生成，json转为go struct
type RobotConf struct {
	ServerURL string     `json:"server_url"`
	Users     []UserInfo `json:"users"`
}

type UserInfo struct {
	Fpid      string `json:"fpid"`
	KingdomId int    `json:"kingdomid"`
}

type GmConf struct {
	GmCommand []GmCommand `json:"gm_command"`
}
type GmCommand struct {
	Cmd       string `json:"cmd"`
	CmdParams []any  `json:"cmd_params"`
}
