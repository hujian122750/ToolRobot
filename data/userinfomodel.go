/**
 * @Author: hujian
 * @Description: userinfo
 * @File: UserInfomodel.go
 * @Date: 2024/04/07 20:41:36
 */
package data

type UserInfoModel struct {
	Gold int32 `json:"gold"`
	Daily_point map[string]interface{} `json:"daily_point"`
	Setting map[string]interface{} `json:"setting"`
	Current_world_id int32 `json:"current_world_id"`
	Last_world_id int32 `json:"last_world_id"`
	Team_id int32 `json:"team_id"`
	Gem_power int64 `json:"gem_power"`
	Max_equip_power int64 `json:"max_equip_power"`
	Tutorial_z map[string]interface{} `json:"tutorial_z"`
	Notification_config map[string]interface{} `json:"notification_config"`
	Dk_equip_power int32 `json:"dk_equip_power"`
	Dominate_power map[string]interface{} `json:"dominate_power"`
	Honor int32 `json:"honor"`
	Dragon_coin int32 `json:"dragon_coin"`
	Last_login float64 `json:"last_login"`
	Total_pay string `json:"total_pay"`
	Seed int64 `json:"seed"`
	Legend_attr_power int64 `json:"legend_attr_power"`
	Inventory_slots int16 `json:"inventory_slots"`
	Unlock_portrait map[string]interface{} `json:"unlock_portrait"`
	Fpid int32 `json:"fpid"`
	Lord_title int32 `json:"lord_title"`
	Diamond int32 `json:"diamond"`
	Normal_gold int32 `json:"normal_gold"`
	Hidden_gold int32 `json:"hidden_gold"`
	Merlin_coin int32 `json:"merlin_coin"`
	Change_world_time float64 `json:"change_world_time"`
	Ac_end_time float64 `json:"ac_end_time"`
	Policies map[string]interface{} `json:"policies"`
	Ctime float64 `json:"ctime"`
	World_id int32 `json:"world_id"`
	Alliance_id int32 `json:"alliance_id"`
	Daily_streak map[string]interface{} `json:"daily_streak"`
	Vip_points int32 `json:"vip_points"`
	Pkg_channel interface{} `json:"pkg_channel"`
	Max_power int32 `json:"max_power"`
	Trap_power int64 `json:"trap_power"`
	Pet_power int32 `json:"pet_power"`
	Hold_gold map[string]interface{} `json:"hold_gold"`
	Tutorial map[string]interface{} `json:"tutorial"`
	Emblem_essence int32 `json:"emblem_essence"`
	Icon_cd float64 `json:"icon_cd"`
	Name interface{} `json:"name"`
	Tactics_power int32 `json:"tactics_power"`
	Poseidon_power int64 `json:"poseidon_power"`
	Escape_tool_power int64 `json:"escape_tool_power"`
	Valor_coin int32 `json:"valor_coin"`
	Building_power int64 `json:"building_power"`
	Equip_power int32 `json:"equip_power"`
	Suspect int8 `json:"suspect"`
	Uid int32 `json:"uid"`
	Ac_group_id int32 `json:"ac_group_id"`
	Troops_power int64 `json:"troops_power"`
	Copper_coin int32 `json:"copper_coin"`
	Max_gem_power int64 `json:"max_gem_power"`
	Vip_job_id int32 `json:"vip_job_id"`
	Last_last_login float64 `json:"last_last_login"`
	Ac_alliance_id int32 `json:"ac_alliance_id"`
	Deleted int8 `json:"deleted"`
	Combat_research_power int64 `json:"combat_research_power"`
	Chat_channel int32 `json:"chat_channel"`
	Portrait interface{} `json:"portrait"`
	Signature interface{} `json:"signature"`
	Anti_disturb_config map[string]interface{} `json:"anti_disturb_config"`
	Push_service interface{} `json:"push_service"`
	Title int32 `json:"title"`
	Data_reset_ver interface{} `json:"data_reset_ver"`
	Lord_power int64 `json:"lord_power"`
	Real_equip_power int64 `json:"real_equip_power"`
	Steel int32 `json:"steel"`
	Essence int32 `json:"essence"`
	Icon interface{} `json:"icon"`
	Gift_mode int8 `json:"gift_mode"`
	Monster_level int8 `json:"monster_level"`
	Is_pay int8 `json:"is_pay"`
	Language interface{} `json:"language"`
	Migrate_info map[string]interface{} `json:"migrate_info"`
	Mtime float64 `json:"mtime"`
	Power int32 `json:"power"`
	Dragon_power int64 `json:"dragon_power"`
	Legend_power int64 `json:"legend_power"`
	Troop_skill_power int32 `json:"troop_skill_power"`
	World_auction_gold int32 `json:"world_auction_gold"`
	Research_power int64 `json:"research_power"`
	Sign_ver interface{} `json:"sign_ver"`
}

func (u *UserInfoModel) ModelName() string {
	return "user_info"
}

func (u *UserInfoModel) UpdateModel() {
}

func (u *UserInfoModel) IsEquals(model IBaseModel) bool {
	return false
}

