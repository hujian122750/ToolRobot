/**
 * @Author: hujian
 * @Description: userrawrow
 * @File: UserRawRowmodel.go
 * @Date: 2024/04/04 23:20:54
 */
package data

type UserRawRowModel struct {
	Uid int32 `json:"uid"`
	_type string `json:"_type"`
	_content map[string]interface{} `json:"_content"`
	Mtime int64 `json:"mtime"`
	Ctime int64 `json:"ctime"`
	Nextptr *UserRawRowModel
}

func (u *UserRawRowModel) ModelName() string {
	return "user_raw_row"
}

