CREATE TABLE `UserBackFlow` (
                                `uid` bigint(20) unsigned NOT NULL,
                                `rewards` blob COMMENT '已经领取的奖励',
                                `score` bigint(20) unsigned DEFAULT '0' COMMENT '积分',
                                `is_pay_unlocked` tinyint(2) unsigned DEFAULT '0' COMMENT '是否已经支付解锁特殊奖励',
                                `publicity_t` timestamp NULL DEFAULT NULL COMMENT '活动最后展示时间',
                                `activity_id` varchar(64) NOT NULL DEFAULT '' COMMENT '活动id',
                                `start_time` timestamp NULL DEFAULT NULL COMMENT '回流开始时间',
                                `end_time` timestamp NULL DEFAULT NULL COMMENT '回流结束时间',
                                `once_reward` tinyint(4) DEFAULT NULL,
                                `daily_reward` tinyint(4) DEFAULT NULL,
                                `group_id` bigint(20) DEFAULT NULL,
                                `quest_utime` timestamp NULL DEFAULT NULL,
                                `rec` int unsigned DEFAULT 0  COMMENT '是否新服推荐',
                                `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                `mtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;