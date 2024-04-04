/**
 * @Author: hujian
 * @Description: userrawrowext
 * @File: UserRawRowExtmodel.go
 * @Date: 2024/04/04 23:20:54
 */
package data

type UserRawRowExtModel struct {
	_sub_type string `json:"_sub_type"`
	_content map[string]interface{} `json:"_content"`
	Mtime int64 `json:"mtime"`
	Ctime int64 `json:"ctime"`
	Uid int32 `json:"uid"`
	_type string `json:"_type"`
	Nextptr *UserRawRowExtModel
}

func (u *UserRawRowExtModel) ModelName() string {
	return "user_raw_row_ext"
}

