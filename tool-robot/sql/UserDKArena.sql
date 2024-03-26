CREATE TABLE `UserDKArena` (
  `uid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `score` bigint NOT NULL DEFAULT 0 COMMENT "当前积分",
  `stage_max_score` bigint NOT NULL DEFAULT 0 COMMENT "赛季最高分",
  `stage_join_times` mediumint unsigned NOT NULL DEFAULT 0 COMMENT "本赛季参加次数",
  `stage_win_times` mediumint unsigned NOT NULL DEFAULT 0 COMMENT "本赛季胜利次数",
  `stage_lose_times` mediumint unsigned NOT NULL DEFAULT 0 COMMENT "本赛季失败次数",
  `total_join_times` mediumint unsigned NOT NULL DEFAULT 0 COMMENT "总参加次数",
  `total_win_times` mediumint unsigned NOT NULL DEFAULT 0 COMMENT "总胜利次数",
  `total_lose_times` mediumint unsigned NOT NULL DEFAULT 0 COMMENT "总失败次数",
  `rewards_gain_info` blob COMMENT "积分奖励领奖情况",
  `today_pvp_times` mediumint unsigned NOT NULL DEFAULT 0 COMMENT "总参加次数",
  `last_pvp_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT "最后一次对战时间",
  `current_opp_uid` bigint UNSIGNED NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;