CREATE TABLE `PetSkill` (
    `uid` bigint(20) unsigned NOT NULL,
    `pet_id` bigint(20) unsigned NOT NULL,
    `group_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'army_pet_skill.internalId',
    `skill_type` tinyint(2) unsigned NOT NULL DEFAULT '0',
    `skill_index` tinyint(2) unsigned NOT NULL DEFAULT '0',
    `level_id` bigint(20) unsigned NOT NULL COMMENT '等级对应的技能id，对应army_pet_skill_level.internalId',
    `level` bigint(20) NOT NULL DEFAULT '0' COMMENT '等级',
    `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`,`pet_id`,`group_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
