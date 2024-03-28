package data

/**
 * @Author: hujian
 * @Description: userrawrowext
 * @File: UserRawRowExtmodel.go
 * @Date: 2024/2/25 22:39
 */
type UserRawRowExtModel struct {
	Uid int32 `json:"Uid"`
	_type string `json:"_type"`
	_sub_type string `json:"_sub_type"`
	_content string `json:"_content"`
	Mtime int64 `json:"Mtime"`
	Ctime int64 `json:"Ctime"`
}