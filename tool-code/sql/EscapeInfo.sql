CREATE TABLE `EscapeInfo` (
                              `uid` BIGINT UNSIGNED NOT NULL,
                              `stage_id` INT UNSIGNED NOT NULL,
                              `strengthens` BLOB DEFAULT NULL,
                              `tools` BLOB DEFAULT NULL,
                              `ext_info` BLOB DEFAULT NULL,
                              `time_drop` blob COMMENT '挂机掉落',
                              `quickly_drop` blob COMMENT '快速掉落',
                              `legends` blob COMMENT '出战英雄',
                              `boss_activity_info` blob COMMENT 'boss活动数据',
                              `chapter_reward` blob DEFAULT NULL COMMENT '章节的奖励数据',
                              `chapter_chest_reward` blob DEFAULT NULL COMMENT '章节的次数奖励数据',
                              `stage_ids` blob DEFAULT NULL COMMENT '已完成的stage ids',
                              `mtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                              `ctime` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
                              PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=Dynamic;