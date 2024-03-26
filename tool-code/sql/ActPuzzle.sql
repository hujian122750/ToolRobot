CREATE TABLE `ActPuzzle` (
  `uid` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL DEFAULT '0',
  `star_rewards` blob,
  `pic_lock_log` blob,
  `full_star_reward` int NOT NULL DEFAULT '0',
  `best_time` blob,
  `season_id` bigint(20) NOT NULL DEFAULT '0',
  `last_num` bigint(20) NOT NULL DEFAULT '0',
  `last_play_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '0',
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;