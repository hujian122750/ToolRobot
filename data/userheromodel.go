package data

/**
 * @Author: hujian
 * @Description: userhero
 * @File: UserHeromodel.go
 * @Date: 2024/2/25 22:39
 */
type UserHeroModel struct {
	Equipment_suit string `json:"Equipment_suit"`
	Mtime int64 `json:"Mtime"`
	Uid int32 `json:"Uid"`
	Xp int32 `json:"Xp"`
	Equipment map[string]interface{} `json:"Equipment"`
	Artifact map[string]interface{} `json:"Artifact"`
	Artifact_limit map[string]interface{} `json:"Artifact_limit"`
	Explore_spirit_recover_time int64 `json:"Explore_spirit_recover_time"`
	Active_skill map[string]interface{} `json:"Active_skill"`
	Outfit map[string]interface{} `json:"Outfit"`
	Spirit int32 `json:"Spirit"`
	Explore_spirit int32 `json:"Explore_spirit"`
	Current_skill_group_id int8 `json:"Current_skill_group_id"`
	War_medal map[string]interface{} `json:"War_medal"`
	Level int8 `json:"Level"`
	Skill_points string `json:"Skill_points"`
	Spirit_recover_time int64 `json:"Spirit_recover_time"`
	Ctime int64 `json:"Ctime"`
}