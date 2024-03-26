CREATE TABLE `LegendSkill2` (
    `uid` bigint(20) unsigned NOT NULL,
    `legend_id` bigint(20) unsigned NOT NULL,
    `group_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'army_hero_skill_group中的group_id, 为army_hero_skill_level的id',
    `skill_type` tinyint(2) unsigned NOT NULL DEFAULT '0',
    `skill_index` tinyint(2) unsigned NOT NULL DEFAULT '0',
    `level_id` bigint(20) unsigned NOT NULL COMMENT '等级对应的技能id，对应army_hero_skill_level.id',
    `level` bigint(20) NOT NULL DEFAULT '0' COMMENT '等级',
    `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`,`legend_id`,`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
