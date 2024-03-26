CREATE TABLE `ActReindeer2` (
  `uid` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL DEFAULT 0,
  `world_rewards` blob,
  `user_rewards` blob,
  `score` bigint(20) NOT NULL DEFAULT 0,
  `step` bigint(20) NOT NULL DEFAULT 0,
  `give_score` bigint(20) NOT NULL DEFAULT 0,
  `get_score` bigint(20) NOT NULL DEFAULT 0,
  `quest_utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `season_id` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;