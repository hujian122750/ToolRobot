CREATE TABLE `ActUserSignIn` (
  `uid` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '活动id',
  `state` bigint(20) NOT NULL DEFAULT 0 COMMENT '签到状态记录',
  `state_ext1` bigint(20) NOT NULL DEFAULT 0 COMMENT '签到状态记录扩展字段1',
  `state_ext2` bigint(20) NOT NULL DEFAULT 0 COMMENT '签到状态记录扩展字段2',
  `login_state` bigint(20) NOT NULL DEFAULT 0 COMMENT '登录天数状态记录',
  `login_state_ext1` bigint(20) NOT NULL DEFAULT 0 COMMENT '登录天数状态记录扩展字段1',
  `login_state_ext2` bigint(20) NOT NULL DEFAULT 0 COMMENT '登录天数状态记录扩展字段2',
  `card_job_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '活动卡jobId',
  `sign_times` bigint(20) NOT NULL DEFAULT 0 COMMENT '当日补签次数',
  `last_play_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;