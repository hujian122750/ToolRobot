CREATE TABLE `Legend2Talent` (
                                 `uid` bigint(20) unsigned NOT NULL,
                                 `legend_id` bigint(20) unsigned NOT NULL,
                                 `group_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'army_hero_talent中的id, 为army_hero_talent_level的group_id',
                                 `level_id` bigint(20) unsigned NOT NULL COMMENT '等级对应的id，对应army_hero_talent_level.id',
                                 `level` bigint(20) NOT NULL DEFAULT '0' COMMENT '等级',
                                 `cd_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
                                 `duration` bigint(20) NOT NULL DEFAULT '0' COMMENT '持续时间',
                                 `cd` bigint(20) NOT NULL DEFAULT '0' COMMENT 'cd时间',
                                 `job_id` bigint unsigned DEFAULT 0 COMMENT '激活后的job id',
                                 `effect_param` bigint unsigned DEFAULT 0 COMMENT '使用效果',
                                 `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
                                 `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                 PRIMARY KEY (`uid`,`legend_id`,`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
