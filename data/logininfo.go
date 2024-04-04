/**
 * @Author: hujian
 * @Description:
 * @File: logininfo
 * @Date: 2024/2/25 22:39
 */
package data

type LoginInfo struct {
	ServerUrl     string
	ConfigVersion float64
	InitInfo      LoginInitInfo
}

type LoginInitInfo struct {
	Token string `json:"token"`
}
