package data

/**
 * @Author: hujian
 * @Description: userrawrow
 * @File: UserRawRowmodel.go
 * @Date: 2024/2/25 22:39
 */
type UserRawRowModel struct {
	Uid int32 `json:"uid"`
	_type string `json:"_type"`
	_content string `json:"_content"`
	Mtime int64 `json:"mtime"`
	Ctime int64 `json:"ctime"`
}