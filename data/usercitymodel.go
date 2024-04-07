/**
 * @Author: hujian
 * @Description: usercity
 * @File: UserCitymodel.go
 * @Date: 2024/04/07 20:41:36
 */
package data

type UserCityModel struct {
	Map_x int32 `json:"map_x"`
	Total_troop map[string]interface{} `json:"total_troop"`
	Pay_queue_status int32 `json:"pay_queue_status"`
	Peace_shield_job_id int32 `json:"peace_shield_job_id"`
	Activity_shield_type int32 `json:"activity_shield_type"`
	Plots_info map[string]interface{} `json:"plots_info"`
	Chapel_troop map[string]interface{} `json:"chapel_troop"`
	Artifact_limit map[string]interface{} `json:"artifact_limit"`
	Activity_embassy_troop map[string]interface{} `json:"activity_embassy_troop"`
	City_id int32 `json:"city_id"`
	Level int16 `json:"level"`
	Uid int32 `json:"uid"`
	World_id int32 `json:"world_id"`
	Origin_y int32 `json:"origin_y"`
	Embassy_troop map[string]interface{} `json:"embassy_troop"`
	King_skill_end_time map[string]interface{} `json:"king_skill_end_time"`
	Suspect_check map[string]interface{} `json:"suspect_check"`
	Avalon_artifacts map[string]interface{} `json:"avalon_artifacts"`
	Free_queue_job_id int32 `json:"free_queue_job_id"`
	In_size int64 `json:"in_size"`
	Resource map[string]interface{} `json:"resource"`
	Blessing_utime float64 `json:"blessing_utime"`
	State string `json:"state"`
	Peace_shield_alert_job_id int32 `json:"peace_shield_alert_job_id"`
	Origin_x int32 `json:"origin_x"`
	Clear_away int8 `json:"clear_away"`
	Fake_army_job_id int32 `json:"fake_army_job_id"`
	Legends map[string]interface{} `json:"legends"`
	Mtime float64 `json:"mtime"`
	City_troop map[string]interface{} `json:"city_troop"`
	Kingdom_hospital_heal_all_job_id int64 `json:"kingdom_hospital_heal_all_job_id"`
	Block_info map[string]interface{} `json:"block_info"`
	Pay_queue_job_id int32 `json:"pay_queue_job_id"`
	Peace_shield_alert_cd_time float64 `json:"peace_shield_alert_cd_time"`
	Anti_scout_job_id int32 `json:"anti_scout_job_id"`
	Pets map[string]interface{} `json:"pets"`
	City_defense_value int32 `json:"city_defense_value"`
	Peace_shield_alert_affect_time float64 `json:"peace_shield_alert_affect_time"`
	Defend_legend_id int32 `json:"defend_legend_id"`
	In_fortress_alliance_id int32 `json:"in_fortress_alliance_id"`
	Troop_marshalling map[string]interface{} `json:"troop_marshalling"`
	Ava_hospital_job_id int32 `json:"ava_hospital_job_id"`
	Cross_kingdom_reason int32 `json:"cross_kingdom_reason"`
	Map_y int32 `json:"map_y"`
	Kingdom_hospital_troop map[string]interface{} `json:"kingdom_hospital_troop"`
	Artifact map[string]interface{} `json:"artifact"`
	Hero_tower_graveyard map[string]interface{} `json:"hero_tower_graveyard"`
	Dominates map[string]interface{} `json:"dominates"`
	Levels interface{} `json:"levels"`
	Blessing string `json:"blessing"`
	Peace_shield_cd_time float64 `json:"peace_shield_cd_time"`
	Activity_shield_job_id int32 `json:"activity_shield_job_id"`
	In_fortress_id int32 `json:"in_fortress_id"`
	Out_size int64 `json:"out_size"`
	Ctime float64 `json:"ctime"`
	Outfire_time float64 `json:"outfire_time"`
	Decoration interface{} `json:"decoration"`
	Activity_city_troop map[string]interface{} `json:"activity_city_troop"`
	Ava_hospital_troop map[string]interface{} `json:"ava_hospital_troop"`
	Activity_total_troop map[string]interface{} `json:"activity_total_troop"`
	Current_world_id int32 `json:"current_world_id"`
	Hospital_troop map[string]interface{} `json:"hospital_troop"`
	Ava_dead_total int32 `json:"ava_dead_total"`
	Last_add_defense_time float64 `json:"last_add_defense_time"`
	Kingdom_hospital_job_id int64 `json:"kingdom_hospital_job_id"`
	Statues map[string]interface{} `json:"statues"`
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

