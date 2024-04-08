/**
 * @Author: hujian
 * @Description: basemodel
 * @File: BaseModel.go
 * @Date: 2024/03/03 22:52:47
 */

package data

type IBaseModel interface {
	ModelName() string
	UpdateModel()
	IsEquals(model IBaseModel) bool
}
