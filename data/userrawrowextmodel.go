/**
 * @Author: hujian
 * @Description: userrawrowext
 * @File: UserRawRowExtmodel.go
 * @Date: 2024/04/06 00:15:29
 */
package data

type UserRawRowExtModel struct {
	Ctime int64 `json:"ctime"`
	Uid int32 `json:"uid"`
	M_type int32 `json:"_type"`
	M_sub_type int32 `json:"_sub_type"`
	M_content map[string]interface{} `json:"_content"`
	Mtime int64 `json:"mtime"`
	Nextptr *UserRawRowExtModel
}

func (u *UserRawRowExtModel) ModelName() string {
	return "user_raw_row_ext"
}

func (u *UserRawRowExtModel) UpdateModel() {
	current := u
	for current.Nextptr != nil{
		if current.Nextptr.IsEquals(u){
			model := *u
			model.Nextptr = current.Nextptr.Nextptr
			current.Nextptr = &model
		}else{
			current = current.Nextptr
		}
	}
	if current.Nextptr == nil{
		model := *u
		model.Nextptr = nil
		current.Nextptr = &model
	}
}

func (u *UserRawRowExtModel) IsEquals(model IBaseModel) bool {
	obj,ok := model.(*UserRawRowExtModel)
	if !ok{
		return false
	}
	return u.Uid == obj.Uid && u.M_type == obj.M_type && u.M_sub_type == obj.M_sub_type
}

