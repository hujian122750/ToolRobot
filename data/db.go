/**
 * @Author: hujian
 * @Description:
 * @File: DBCache
 * @Date: 2024/2/25 22:39
 */
package data

type DBCache struct {
	//UserInfo数据
	UserInfo *UserInfoModel
	//UserRawRow数据
	UserRawRowList *UserRawRowModel
}

func (d *DBCache) Init() {
	d.UserInfo = new(UserInfoModel)
	d.UserRawRowList = new(UserRawRowModel)
}
