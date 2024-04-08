/**
 * @Author: hujian
 * @Description: userinfo
 * @File: UserInfomodel.go
 * @Date: 2024/04/08 20:46:04
 */
package data

type UserInfoModel struct {
	Research_power int64 `json:"research_power"`
	Legend_power int64 `json:"legend_power"`
	Pet_power int32 `json:"pet_power"`
	Migrate_info interface{} `json:"migrate_info"`
	Language interface{} `json:"language"`
	Lord_power int64 `json:"lord_power"`
	Escape_tool_power int64 `json:"escape_tool_power"`
	Honor int32 `json:"honor"`
	Inventory_slots int16 `json:"inventory_slots"`
	Gift_mode int8 `json:"gift_mode"`
	Data_reset_ver interface{} `json:"data_reset_ver"`
	Policies interface{} `json:"policies"`
	Current_world_id int32 `json:"current_world_id"`
	Dragon_power int64 `json:"dragon_power"`
	Anti_disturb_config interface{} `json:"anti_disturb_config"`
	Ac_group_id int32 `json:"ac_group_id"`
	Change_world_time float64 `json:"change_world_time"`
	Gem_power int64 `json:"gem_power"`
	Max_equip_power int64 `json:"max_equip_power"`
	Dragon_coin int32 `json:"dragon_coin"`
	Icon_cd float64 `json:"icon_cd"`
	Combat_research_power int64 `json:"combat_research_power"`
	Valor_coin int32 `json:"valor_coin"`
	Push_service interface{} `json:"push_service"`
	Ctime float64 `json:"ctime"`
	Power int32 `json:"power"`
	Troops_power int64 `json:"troops_power"`
	Dk_equip_power int32 `json:"dk_equip_power"`
	Emblem_essence int32 `json:"emblem_essence"`
	Pkg_channel interface{} `json:"pkg_channel"`
	Alliance_id int32 `json:"alliance_id"`
	Troop_skill_power int32 `json:"troop_skill_power"`
	Diamond int32 `json:"diamond"`
	Title int32 `json:"title"`
	Last_last_login float64 `json:"last_last_login"`
	Is_pay int8 `json:"is_pay"`
	Last_world_id int32 `json:"last_world_id"`
	Max_power int32 `json:"max_power"`
	Tactics_power int32 `json:"tactics_power"`
	Max_gem_power int64 `json:"max_gem_power"`
	Daily_point interface{} `json:"daily_point"`
	Fpid int32 `json:"fpid"`
	Seed int64 `json:"seed"`
	Building_power int64 `json:"building_power"`
	Equip_power int32 `json:"equip_power"`
	Dominate_power interface{} `json:"dominate_power"`
	Hold_gold interface{} `json:"hold_gold"`
	Real_equip_power int64 `json:"real_equip_power"`
	World_auction_gold int32 `json:"world_auction_gold"`
	Unlock_portrait interface{} `json:"unlock_portrait"`
	Tutorial interface{} `json:"tutorial"`
	Merlin_coin int32 `json:"merlin_coin"`
	Vip_job_id int32 `json:"vip_job_id"`
	Deleted int8 `json:"deleted"`
	Tutorial_z interface{} `json:"tutorial_z"`
	Name interface{} `json:"name"`
	Legend_attr_power int64 `json:"legend_attr_power"`
	Gold int32 `json:"gold"`
	Hidden_gold int32 `json:"hidden_gold"`
	Notification_config interface{} `json:"notification_config"`
	Total_pay string `json:"total_pay"`
	Mtime float64 `json:"mtime"`
	Chat_channel int32 `json:"chat_channel"`
	Icon interface{} `json:"icon"`
	Vip_points int32 `json:"vip_points"`
	Last_login float64 `json:"last_login"`
	Essence int32 `json:"essence"`
	Portrait interface{} `json:"portrait"`
	Ac_alliance_id int32 `json:"ac_alliance_id"`
	Uid int32 `json:"uid"`
	World_id int32 `json:"world_id"`
	Team_id int32 `json:"team_id"`
	Copper_coin int32 `json:"copper_coin"`
	Lord_title int32 `json:"lord_title"`
	Suspect int8 `json:"suspect"`
	Ac_end_time float64 `json:"ac_end_time"`
	Sign_ver interface{} `json:"sign_ver"`
	Trap_power int64 `json:"trap_power"`
	Daily_streak interface{} `json:"daily_streak"`
	Monster_level int8 `json:"monster_level"`
	Setting interface{} `json:"setting"`
	Poseidon_power int64 `json:"poseidon_power"`
	Normal_gold int32 `json:"normal_gold"`
	Steel int32 `json:"steel"`
	Signature interface{} `json:"signature"`
}

func (u *UserInfoModel) ModelName() string {
	return "user_info"
}

func (u *UserInfoModel) UpdateModel() {
}

func (u *UserInfoModel) IsEquals(model IBaseModel) bool {
	return false
}

