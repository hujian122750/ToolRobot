CREATE TABLE `UserOptionalPkg` (
  `uid` bigint(20) NOT NULL,
  `buy_record` blob COMMENT '礼包购买记录',
  `daily_state` tinyint(3) NOT NULL DEFAULT 0 COMMENT '每日礼包领取状态',
  `last_play_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;