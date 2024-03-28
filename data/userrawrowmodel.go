package data

/**
 * @Author: hujian
 * @Description: userrawrow
 * @File: UserRawRowmodel.go
 * @Date: 2024/2/25 22:39
 */
type UserRawRowModel struct {
	Mtime int64 `json:"Mtime"`
	Ctime int64 `json:"Ctime"`
	Uid int32 `json:"Uid"`
	_type string `json:"_type"`
	_content string `json:"_content"`
}