package data

/**
 * @Author: hujian
 * @Description: userinfo
 * @File: UserInfomodel.go
 * @Date: 2024/2/25 22:39
 */
type UserInfoModel struct {
	Gem_power int64 `json:"gem_power"`
	Diamond int32 `json:"diamond"`
	Emblem_essence int32 `json:"emblem_essence"`
	Lord_title int32 `json:"lord_title"`
	Research_power int64 `json:"research_power"`
	Equip_power int32 `json:"equip_power"`
	Dragon_coin int32 `json:"dragon_coin"`
	Last_last_login int64 `json:"last_last_login"`
	Mtime int64 `json:"mtime"`
	Gold int32 `json:"gold"`
	Daily_streak map[string]interface{} `json:"daily_streak"`
	Vip_points string `json:"vip_points"`
	Language string `json:"language"`
	Ac_group_id string `json:"ac_group_id"`
	Policies string `json:"policies"`
	Uid int32 `json:"uid"`
	Alliance_id int32 `json:"alliance_id"`
	Legend_power int64 `json:"legend_power"`
	World_auction_gold int32 `json:"world_auction_gold"`
	Gift_mode int8 `json:"gift_mode"`
	Vip_job_id int32 `json:"vip_job_id"`
	Seed int64 `json:"seed"`
	Legend_attr_power int64 `json:"legend_attr_power"`
	Pet_power int32 `json:"pet_power"`
	Unlock_portrait map[string]interface{} `json:"unlock_portrait"`
	Monster_level int8 `json:"monster_level"`
	Pkg_channel string `json:"pkg_channel"`
	Power int32 `json:"power"`
	Dragon_power int64 `json:"dragon_power"`
	Max_equip_power int64 `json:"max_equip_power"`
	Hidden_gold int32 `json:"hidden_gold"`
	Change_world_time int64 `json:"change_world_time"`
	Sign_ver string `json:"sign_ver"`
	Max_gem_power int64 `json:"max_gem_power"`
	Daily_point map[string]interface{} `json:"daily_point"`
	Last_world_id int32 `json:"last_world_id"`
	Max_power int32 `json:"max_power"`
	Building_power int64 `json:"building_power"`
	Real_equip_power int64 `json:"real_equip_power"`
	Escape_tool_power int64 `json:"escape_tool_power"`
	Notification_config map[string]interface{} `json:"notification_config"`
	Dk_equip_power int32 `json:"dk_equip_power"`
	Title int32 `json:"title"`
	Ac_end_time int64 `json:"ac_end_time"`
	Deleted int8 `json:"deleted"`
	Current_world_id int32 `json:"current_world_id"`
	Essence int32 `json:"essence"`
	Tutorial map[string]interface{} `json:"tutorial"`
	Is_pay int8 `json:"is_pay"`
	Data_reset_ver string `json:"data_reset_ver"`
	Suspect int8 `json:"suspect"`
	Migrate_info map[string]interface{} `json:"migrate_info"`
	Team_id int32 `json:"team_id"`
	Name string `json:"name"`
	Troop_skill_power int32 `json:"troop_skill_power"`
	Portrait string `json:"portrait"`
	Signature string `json:"signature"`
	Total_pay string `json:"total_pay"`
	Ctime int64 `json:"ctime"`
	Tactics_power int32 `json:"tactics_power"`
	Dominate_power map[string]interface{} `json:"dominate_power"`
	Poseidon_power int64 `json:"poseidon_power"`
	Anti_disturb_config map[string]interface{} `json:"anti_disturb_config"`
	Trap_power int64 `json:"trap_power"`
	Icon string `json:"icon"`
	Icon_cd int64 `json:"icon_cd"`
	Fpid int32 `json:"fpid"`
	Normal_gold int32 `json:"normal_gold"`
	Hold_gold map[string]interface{} `json:"hold_gold"`
	Merlin_coin int32 `json:"merlin_coin"`
	Ac_alliance_id int32 `json:"ac_alliance_id"`
	Lord_power int64 `json:"lord_power"`
	Combat_research_power int64 `json:"combat_research_power"`
	Steel int32 `json:"steel"`
	Copper_coin int32 `json:"copper_coin"`
	Inventory_slots string `json:"inventory_slots"`
	Push_service string `json:"push_service"`
	Setting map[string]interface{} `json:"setting"`
	Tutorial_z map[string]interface{} `json:"tutorial_z"`
	World_id int32 `json:"world_id"`
	Troops_power int64 `json:"troops_power"`
	Honor int32 `json:"honor"`
	Valor_coin int32 `json:"valor_coin"`
	Chat_channel int32 `json:"chat_channel"`
	Last_login int64 `json:"last_login"`
}