package data

/**
 * @Author: hujian
 * @Description: citymap
 * @File: CityMapmodel.go
 * @Date: 2024/2/25 22:39
 */
type CityMapModel struct {
	Level int8 `json:"Level"`
	Glory_level string `json:"Glory_level"`
	Ctime int64 `json:"Ctime"`
	Own int8 `json:"Own"`
	Self_type string `json:"Self_type"`
	Status string `json:"Status"`
	Slot_id string `json:"Slot_id"`
	Y string `json:"Y"`
	Mtime int64 `json:"Mtime"`
	X string `json:"X"`
	In_building map[string]interface{} `json:"In_building"`
	Building_id int32 `json:"Building_id"`
	Type_id string `json:"Type_id"`
	Job_id int32 `json:"Job_id"`
	Task_job_id int32 `json:"Task_job_id"`
	Uid int32 `json:"Uid"`
	City_id int32 `json:"City_id"`
}