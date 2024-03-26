CREATE TABLE `TinySeasonTicket` (
  `uid` bigint(20) UNSIGNED NOT NULL,
  `rewards` blob COMMENT '已经领取的奖励',
  `score` bigint(20) UNSIGNED DEFAULT 0 COMMENT '积分',
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_pay_unlocked` tinyint(2) UNSIGNED DEFAULT 0 COMMENT '是否已经支付解锁特殊奖励',
  `publicity_t` timestamp NULL DEFAULT NULL COMMENT '活动最后展示时间',
  `activity_id` varchar(64) NOT NULL DEFAULT '' COMMENT '活动id',
  PRIMARY KEY (`uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;