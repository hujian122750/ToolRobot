package data

/**
 * @Author: hujian
 * @Description: userdata
 * @File: UserDatamodel.go
 * @Date: 2024/2/25 22:39
 */
type UserDataModel struct {
	Content map[string]interface{} `json:"Content"`
	Ctime int64 `json:"Ctime"`
	Mtime int64 `json:"Mtime"`
	Uid int64 `json:"Uid"`
	Id int64 `json:"Id"`
	Value int64 `json:"Value"`
}