package data

/**
 * @Author: hujian
 * @Description: userdata
 * @File: UserDatamodel.go
 * @Date: 2024/2/25 22:39
 */
type UserDataModel struct {
	Content map[string]interface{} `json:"content"`
	Ctime int64 `json:"ctime"`
	Mtime int64 `json:"mtime"`
	Uid int64 `json:"uid"`
	Id int64 `json:"id"`
	Value int64 `json:"value"`
}