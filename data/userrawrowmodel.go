/**
 * @Author: hujian
 * @Description: userrawrow
 * @File: UserRawRowmodel.go
 * @Date: 2024/04/06 00:15:29
 */
package data

type UserRawRowModel struct {
	Uid int32 `json:"uid"`
	M_type int32 `json:"_type"`
	M_content map[string]interface{} `json:"_content"`
	Mtime int64 `json:"mtime"`
	Ctime int64 `json:"ctime"`
	Nextptr *UserRawRowModel
}

func (u *UserRawRowModel) ModelName() string {
	return "user_raw_row"
}

func (u *UserRawRowModel) UpdateModel() {
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

func (u *UserRawRowModel) IsEquals(model IBaseModel) bool {
	obj,ok := model.(*UserRawRowModel)
	if !ok{
		return false
	}
	return u.Uid == obj.Uid && u.M_type == obj.M_type
}

