package data

/**
 * @Author: hujian
 * @Description: userhero
 * @File: UserHeromodel.go
 * @Date: 2024/2/25 22:39
 */
type UserHeroModel struct {
	Uid int32 `json:"uid"`
	Equipment_suit string `json:"equipment_suit"`
	Artifact_limit map[string]interface{} `json:"artifact_limit"`
	Spirit int32 `json:"spirit"`
	Explore_spirit int32 `json:"explore_spirit"`
	Explore_spirit_recover_time int64 `json:"explore_spirit_recover_time"`
	Mtime int64 `json:"mtime"`
	War_medal map[string]interface{} `json:"war_medal"`
	Xp int32 `json:"xp"`
	Skill_points string `json:"skill_points"`
	Equipment map[string]interface{} `json:"equipment"`
	Artifact map[string]interface{} `json:"artifact"`
	Spirit_recover_time int64 `json:"spirit_recover_time"`
	Active_skill map[string]interface{} `json:"active_skill"`
	Current_skill_group_id int8 `json:"current_skill_group_id"`
	Ctime int64 `json:"ctime"`
	Level int8 `json:"level"`
	Outfit map[string]interface{} `json:"outfit"`
}