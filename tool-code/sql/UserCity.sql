CREATE TABLE `UserCity` (
  `uid` bigint unsigned NOT NULL,
  `city_id` bigint unsigned NOT NULL,
  `world_id` bigint unsigned NOT NULL COMMENT "also known as kingdom id",
  `current_world_id` bigint unsigned NOT NULL DEFAULT 0,
  `map_x` int unsigned NOT NULL COMMENT "coordinate on world_map",
  `map_y` int unsigned NOT NULL COMMENT "coordinate on world_map",
  `origin_x` int unsigned NOT NULL,
  `origin_y` int unsigned NOT NULL,
  `level` mediumint unsigned NOT NULL DEFAULT 0,
  `city_defense_value` int unsigned NOT NULL DEFAULT 0,
  `outfire_time` timestamp NOT NULL DEFAULT 0,
  `last_add_defense_time` timestamp NOT NULL DEFAULT 0 COMMENT "last add city defense value time",
  `total_troop` blob NOT NULL,
  `city_troop` blob NOT NULL,
  `embassy_troop` blob NOT NULL,
  `hospital_troop` blob NOT NULL,
  `kingdom_hospital_troop` BLOB NOT NULL,
  `kingdom_hospital_job_id` BIGINT(20) UNSIGNED NOT NULL,
  `kingdom_hospital_heal_all_job_id` BIGINT(20) UNSIGNED NOT NULL,
  `block_info` blob NOT NULL,
  `plots_info` blob NOT NULL,
  `levels` varchar(500) default '',
  `statues` blob NOT NULL,
  `resource` blob NOT NULL,
  `blessing` decimal(12,2) unsigned NOT NULL DEFAULT 0 COMMENT "祝福值",
  `blessing_utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "祝福值结算时间",
  `chapel_troop` blob NOT NULL COMMENT "兵魂",
  `artifact` blob,
  `avalon_artifacts` blob,
  `artifact_limit` blob comment '限时神器',
  `pay_queue_status` bigint unsigned DEFAULT 0 COMMENT "0: frozen, jobid: active",
  `pay_queue_job_id` bigint unsigned DEFAULT 0 COMMENT "paid construct queue job's id",
  `free_queue_job_id` bigint unsigned DEFAULT 0 COMMENT "free construct queue job's id",
  `hero_tower_graveyard` blob,
  `decoration` varchar(100) default '' COMMENT 'Stronghold decoration',
  `state` enum('normal', 'smoke', 'onfire') NOT NULL DEFAULT 'normal' COMMENT 'State of city',
  `clear_away` tinyint unsigned NOT NULL DEFAULT 0,
  `peace_shield_job_id` bigint unsigned DEFAULT 0,
  `peace_shield_cd_time` timestamp NOT NULL DEFAULT 0,
  `peace_shield_alert_job_id` BIGINT UNSIGNED NOT NULL DEFAULT 0,
  `peace_shield_alert_cd_time` timestamp NOT NULL DEFAULT 0,
  `peace_shield_alert_affect_time` timestamp NOT NULL DEFAULT 0,
  `activity_shield_job_id` BIGINT UNSIGNED NOT NULL DEFAULT 0,
  `activity_shield_type` BIGINT UNSIGNED NOT NULL DEFAULT 0,
  `anti_scout_job_id` bigint unsigned DEFAULT 0,
  `fake_army_job_id` bigint unsigned DEFAULT 0,
  `defend_legend_id` bigint unsigned DEFAULT 0,
  `in_fortress_id` bigint unsigned DEFAULT 0,
  `in_fortress_alliance_id` bigint unsigned DEFAULT 0,
  `king_skill_end_time` blob,
  `troop_marshalling` blob,
  `suspect_check` blob,
  `ava_hospital_troop` blob comment '联盟1v1战地医院兵信息',
  `ava_dead_total` int unsigned DEFAULT 0 comment '联盟1v1战地医院死兵总数',
  `ava_hospital_job_id` bigint unsigned DEFAULT 0 comment '联盟1v1战地医院治疗job',
  `activity_total_troop` blob NULL,
  `activity_city_troop` blob NULL,
  `activity_embassy_troop` blob NULL,
  `cross_kingdom_reason` int unsigned DEFAULT 0 comment '跨服原因',
  `legends` BLOB NOT NULL COMMENT '{position1: {"id": legend_id}, position2: {"id": legend_id}}',
  `pets` BLOB NOT NULL COMMENT '{position1: {"id": pet_id}, position2: {"id": pet_id}}',
  `dominates` BLOB NOT NULL COMMENT '{position1: {"id": dominate_id}, position2: {"id": dominate_id}}',
  `in_size` bigint(20) NOT NULL DEFAULT '2' COMMENT '内城尺寸',
  `out_size` bigint(20) NOT NULL DEFAULT '2' COMMENT '外城尺寸',
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(uid, `city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=Dynamic;
