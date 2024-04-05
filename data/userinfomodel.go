/**
 * @Author: hujian
 * @Description: userinfo
 * @File: UserInfomodel.go
 * @Date: 2024/04/06 00:15:29
 */
package data

type UserInfoModel struct {
	Max_gem_power int64 `json:"max_gem_power"`
	Hold_gold map[string]interface{} `json:"hold_gold"`
	Language string `json:"language"`
	Gem_power int64 `json:"gem_power"`
	Dominate_power map[string]interface{} `json:"dominate_power"`
	Poseidon_power int64 `json:"poseidon_power"`
	Hidden_gold int32 `json:"hidden_gold"`
	Valor_coin int32 `json:"valor_coin"`
	Title int32 `json:"title"`
	Total_pay string `json:"total_pay"`
	Ac_alliance_id int32 `json:"ac_alliance_id"`
	Uid int32 `json:"uid"`
	Seed int64 `json:"seed"`
	Deleted int8 `json:"deleted"`
	Ac_end_time int64 `json:"ac_end_time"`
	Legend_attr_power int64 `json:"legend_attr_power"`
	Last_login int64 `json:"last_login"`
	Migrate_info map[string]interface{} `json:"migrate_info"`
	Mtime int64 `json:"mtime"`
	Lord_power int64 `json:"lord_power"`
	Building_power int64 `json:"building_power"`
	Tactics_power int32 `json:"tactics_power"`
	Emblem_essence int32 `json:"emblem_essence"`
	Daily_point map[string]interface{} `json:"daily_point"`
	Push_service string `json:"push_service"`
	Data_reset_ver string `json:"data_reset_ver"`
	Dragon_power int64 `json:"dragon_power"`
	Legend_power int64 `json:"legend_power"`
	Steel int32 `json:"steel"`
	Essence int32 `json:"essence"`
	Icon string `json:"icon"`
	Vip_job_id int32 `json:"vip_job_id"`
	Trap_power int64 `json:"trap_power"`
	Unlock_portrait map[string]interface{} `json:"unlock_portrait"`
	Diamond int32 `json:"diamond"`
	Copper_coin int32 `json:"copper_coin"`
	Monster_level int8 `json:"monster_level"`
	Sign_ver string `json:"sign_ver"`
	Normal_gold int32 `json:"normal_gold"`
	Icon_cd int64 `json:"icon_cd"`
	Vip_points int32 `json:"vip_points"`
	Tutorial map[string]interface{} `json:"tutorial"`
	Signature string `json:"signature"`
	Setting map[string]interface{} `json:"setting"`
	Equip_power int32 `json:"equip_power"`
	Dk_equip_power int32 `json:"dk_equip_power"`
	Pet_power int32 `json:"pet_power"`
	Honor int32 `json:"honor"`
	Dragon_coin int32 `json:"dragon_coin"`
	Fpid int32 `json:"fpid"`
	Policies map[string]interface{} `json:"policies"`
	Ctime int64 `json:"ctime"`
	Max_power int32 `json:"max_power"`
	Merlin_coin int32 `json:"merlin_coin"`
	Lord_title int32 `json:"lord_title"`
	Is_pay int8 `json:"is_pay"`
	Change_world_time int64 `json:"change_world_time"`
	Name string `json:"name"`
	Power int32 `json:"power"`
	Gold int32 `json:"gold"`
	Daily_streak map[string]interface{} `json:"daily_streak"`
	Suspect int8 `json:"suspect"`
	Last_world_id int32 `json:"last_world_id"`
	Team_id int32 `json:"team_id"`
	Escape_tool_power int64 `json:"escape_tool_power"`
	Inventory_slots int16 `json:"inventory_slots"`
	Ac_group_id int32 `json:"ac_group_id"`
	World_id int32 `json:"world_id"`
	Anti_disturb_config map[string]interface{} `json:"anti_disturb_config"`
	Tutorial_z map[string]interface{} `json:"tutorial_z"`
	Notification_config map[string]interface{} `json:"notification_config"`
	Alliance_id int32 `json:"alliance_id"`
	Research_power int64 `json:"research_power"`
	Chat_channel int32 `json:"chat_channel"`
	Current_world_id int32 `json:"current_world_id"`
	Real_equip_power int64 `json:"real_equip_power"`
	World_auction_gold int32 `json:"world_auction_gold"`
	Portrait string `json:"portrait"`
	Last_last_login int64 `json:"last_last_login"`
	Pkg_channel string `json:"pkg_channel"`
	Troops_power int64 `json:"troops_power"`
	Combat_research_power int64 `json:"combat_research_power"`
	Max_equip_power int64 `json:"max_equip_power"`
	Gift_mode int8 `json:"gift_mode"`
	Troop_skill_power int32 `json:"troop_skill_power"`
}

func (u *UserInfoModel) ModelName() string {
	return "user_info"
}

func (u *UserInfoModel) UpdateModel() {
}

func (u *UserInfoModel) IsEquals(model IBaseModel) bool {
	return false
}

