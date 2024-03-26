package model

// 可以通过工具直接生成，json转为go struct
type RobotConf struct {
	ServerURL string     `json:"server_url"`
	Users     []UserInfo `json:"users"`
}

type UserInfo struct {
	Fpid      string `json:"fpid"`
	KingdomId int    `json:"kingdomid"`
}
