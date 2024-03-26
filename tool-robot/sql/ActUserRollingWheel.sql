CREATE TABLE `ActUserRollingWheel` (
  `uid` bigint(20) NOT NULL,
  `stage_info` blob COMMENT '领取的奖励档位{"1":1, "2":1}',
  `rolling_score` bigint(20) NOT NULL DEFAULT 0 COMMENT '转轮次数',
  `day_roll_times` bigint(20) NOT NULL DEFAULT 0 COMMENT '当日转轮次数',
  `last_play_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;