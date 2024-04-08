/**
 * @Author: hujian
 * @Description: usercity
 * @File: UserCitymodel.go
 * @Date: 2024/04/08 20:46:04
 */
package data

type UserCityModel struct {
	Level int16 `json:"level"`
	In_fortress_alliance_id int32 `json:"in_fortress_alliance_id"`
	Out_size int64 `json:"out_size"`
	Outfire_time float64 `json:"outfire_time"`
	Plots_info interface{} `json:"plots_info"`
	Pets interface{} `json:"pets"`
	Troop_marshalling interface{} `json:"troop_marshalling"`
	Activity_total_troop interface{} `json:"activity_total_troop"`
	Kingdom_hospital_troop interface{} `json:"kingdom_hospital_troop"`
	Kingdom_hospital_job_id int64 `json:"kingdom_hospital_job_id"`
	Artifact interface{} `json:"artifact"`
	Pay_queue_status int32 `json:"pay_queue_status"`
	Peace_shield_job_id int32 `json:"peace_shield_job_id"`
	Peace_shield_alert_cd_time float64 `json:"peace_shield_alert_cd_time"`
	Fake_army_job_id int32 `json:"fake_army_job_id"`
	City_id int32 `json:"city_id"`
	Chapel_troop interface{} `json:"chapel_troop"`
	Activity_shield_type int32 `json:"activity_shield_type"`
	Suspect_check interface{} `json:"suspect_check"`
	Current_world_id int32 `json:"current_world_id"`
	Origin_y int32 `json:"origin_y"`
	City_defense_value int32 `json:"city_defense_value"`
	Kingdom_hospital_heal_all_job_id int64 `json:"kingdom_hospital_heal_all_job_id"`
	Cross_kingdom_reason int32 `json:"cross_kingdom_reason"`
	Blessing float64 `json:"blessing"`
	Free_queue_job_id int32 `json:"free_queue_job_id"`
	State string `json:"state"`
	Artifact_limit interface{} `json:"artifact_limit"`
	Peace_shield_cd_time float64 `json:"peace_shield_cd_time"`
	Peace_shield_alert_affect_time float64 `json:"peace_shield_alert_affect_time"`
	In_fortress_id int32 `json:"in_fortress_id"`
	Activity_city_troop interface{} `json:"activity_city_troop"`
	Origin_x int32 `json:"origin_x"`
	Embassy_troop interface{} `json:"embassy_troop"`
	Statues interface{} `json:"statues"`
	Decoration interface{} `json:"decoration"`
	Peace_shield_alert_job_id int32 `json:"peace_shield_alert_job_id"`
	Defend_legend_id int32 `json:"defend_legend_id"`
	Ava_hospital_job_id int32 `json:"ava_hospital_job_id"`
	In_size int64 `json:"in_size"`
	World_id int32 `json:"world_id"`
	City_troop interface{} `json:"city_troop"`
	Block_info interface{} `json:"block_info"`
	Resource interface{} `json:"resource"`
	Hero_tower_graveyard interface{} `json:"hero_tower_graveyard"`
	Activity_shield_job_id int32 `json:"activity_shield_job_id"`
	Map_x int32 `json:"map_x"`
	Anti_scout_job_id int32 `json:"anti_scout_job_id"`
	King_skill_end_time interface{} `json:"king_skill_end_time"`
	Mtime float64 `json:"mtime"`
	Last_add_defense_time float64 `json:"last_add_defense_time"`
	Blessing_utime float64 `json:"blessing_utime"`
	Pay_queue_job_id int32 `json:"pay_queue_job_id"`
	Ava_dead_total int32 `json:"ava_dead_total"`
	Activity_embassy_troop interface{} `json:"activity_embassy_troop"`
	Dominates interface{} `json:"dominates"`
	Levels interface{} `json:"levels"`
	Ctime float64 `json:"ctime"`
	Hospital_troop interface{} `json:"hospital_troop"`
	Uid int32 `json:"uid"`
	Map_y int32 `json:"map_y"`
	Avalon_artifacts interface{} `json:"avalon_artifacts"`
	Clear_away int8 `json:"clear_away"`
	Ava_hospital_troop interface{} `json:"ava_hospital_troop"`
	Legends interface{} `json:"legends"`
	Total_troop interface{} `json:"total_troop"`
	Nextptr *UserCityModel
}

func (u *UserCityModel) ModelName() string {
	return "user_city"
}

func (u *UserCityModel) UpdateModel() {
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

func (u *UserCityModel) IsEquals(model IBaseModel) bool {
	obj,ok := model.(*UserCityModel)
	if !ok{
		return false
	}
	return u.Uid == obj.Uid && u.City_id == obj.City_id
}

