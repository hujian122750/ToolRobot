package data

/**
 * @Author: hujian
 * @Description: citymap
 * @File: CityMapmodel.go
 * @Date: 2024/2/25 22:39
 */
type CityMapModel struct {
	Slot_id string `json:"slot_id"`
	Y string `json:"y"`
	Own int8 `json:"own"`
	Status string `json:"status"`
	City_id int32 `json:"city_id"`
	Job_id int32 `json:"job_id"`
	Task_job_id int32 `json:"task_job_id"`
	Self_type string `json:"self_type"`
	Type_id string `json:"type_id"`
	Level int8 `json:"level"`
	Ctime int64 `json:"ctime"`
	Mtime int64 `json:"mtime"`
	Uid int32 `json:"uid"`
	Building_id int32 `json:"building_id"`
	X string `json:"x"`
	Glory_level string `json:"glory_level"`
	In_building map[string]interface{} `json:"in_building"`
}