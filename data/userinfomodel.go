/**
 * @Author: hujian
 * @Description: userinfo
 * @File: UserInfomodel.go
 * @Date: 2024/04/04 23:20:54
 */
package data

type UserInfoModel struct {
	Gem_power int64 `json:"gem_power"`
	Copper_coin int32 `json:"copper_coin"`
	Dragon_coin int32 `json:"dragon_coin"`
	Push_service string `json:"push_service"`
	Migrate_info map[string]interface{} `json:"migrate_info"`
	Troops_power int64 `json:"troops_power"`
	Combat_research_power int64 `json:"combat_research_power"`
	Essence int32 `json:"essence"`
	Daily_point map[string]interface{} `json:"daily_point"`
	Legend_power int64 `json:"legend_power"`
	Dominate_power map[string]interface{} `json:"dominate_power"`
	Notification_config map[string]interface{} `json:"notification_config"`
	Icon string `json:"icon"`
	Total_pay string `json:"total_pay"`
	Alliance_id int32 `json:"alliance_id"`
	Name string `json:"name"`
	Max_equip_power int64 `json:"max_equip_power"`
	Hold_gold map[string]interface{} `json:"hold_gold"`
	Change_world_time int64 `json:"change_world_time"`
	Dk_equip_power int32 `json:"dk_equip_power"`
	Real_equip_power int64 `json:"real_equip_power"`
	Inventory_slots int16 `json:"inventory_slots"`
	Daily_streak map[string]interface{} `json:"daily_streak"`
	Fpid int32 `json:"fpid"`
	Ac_end_time int64 `json:"ac_end_time"`
	Ctime int64 `json:"ctime"`
	Uid int32 `json:"uid"`
	Research_power int64 `json:"research_power"`
	World_auction_gold int32 `json:"world_auction_gold"`
	Unlock_portrait map[string]interface{} `json:"unlock_portrait"`
	Gift_mode int8 `json:"gift_mode"`
	Title int32 `json:"title"`
	Team_id int32 `json:"team_id"`
	Equip_power int32 `json:"equip_power"`
	Steel int32 `json:"steel"`
	Valor_coin int32 `json:"valor_coin"`
	Monster_level int8 `json:"monster_level"`
	Is_pay int8 `json:"is_pay"`
	Ac_alliance_id int32 `json:"ac_alliance_id"`
	Seed int64 `json:"seed"`
	Tactics_power int32 `json:"tactics_power"`
	Pet_power int32 `json:"pet_power"`
	Gold int32 `json:"gold"`
	Merlin_coin int32 `json:"merlin_coin"`
	Signature string `json:"signature"`
	Language string `json:"language"`
	Pkg_channel string `json:"pkg_channel"`
	Ac_group_id string `json:"ac_group_id"`
	Lord_power int64 `json:"lord_power"`
	Legend_attr_power int64 `json:"legend_attr_power"`
	Max_gem_power int64 `json:"max_gem_power"`
	Vip_job_id int32 `json:"vip_job_id"`
	Vip_points string `json:"vip_points"`
	Lord_title int32 `json:"lord_title"`
	Policies map[string]interface{} `json:"policies"`
	Sign_ver string `json:"sign_ver"`
	World_id int32 `json:"world_id"`
	Power int32 `json:"power"`
	Troop_skill_power int32 `json:"troop_skill_power"`
	Normal_gold int32 `json:"normal_gold"`
	Mtime int64 `json:"mtime"`
	Current_world_id int32 `json:"current_world_id"`
	Hidden_gold int32 `json:"hidden_gold"`
	Emblem_essence int32 `json:"emblem_essence"`
	Portrait string `json:"portrait"`
	Building_power int64 `json:"building_power"`
	Dragon_power int64 `json:"dragon_power"`
	Last_login int64 `json:"last_login"`
	Last_last_login int64 `json:"last_last_login"`
	Data_reset_ver string `json:"data_reset_ver"`
	Last_world_id int32 `json:"last_world_id"`
	Max_power int32 `json:"max_power"`
	Setting map[string]interface{} `json:"setting"`
	Suspect int8 `json:"suspect"`
	Tutorial map[string]interface{} `json:"tutorial"`
	Anti_disturb_config map[string]interface{} `json:"anti_disturb_config"`
	Deleted int8 `json:"deleted"`
	Tutorial_z map[string]interface{} `json:"tutorial_z"`
	Escape_tool_power int64 `json:"escape_tool_power"`
	Honor int32 `json:"honor"`
	Chat_channel int32 `json:"chat_channel"`
	Icon_cd int64 `json:"icon_cd"`
	Trap_power int64 `json:"trap_power"`
	Poseidon_power int64 `json:"poseidon_power"`
	Diamond int32 `json:"diamond"`
}

func (u *UserInfoModel) ModelName() string {
	return "user_info"
}

