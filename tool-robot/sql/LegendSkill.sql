CREATE TABLE `LegendSkill` (
    `uid` bigint(20) UNSIGNED NOT NULL,
    `legend_id` bigint(20) UNSIGNED NOT NULL,
    `skill_group_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'parliament_hero中的group_id, 分别为parliament_hero_battle_skill和parliament_hero_benefit_skill的group_id',
    `skill_id` bigint(20) UNSIGNED NOT NULL COMMENT 'skill_type = 1, parliament_hero_battle_skill.Internal_ID; skill_type = 2, parliament_hero_benefit_skill.Internal_ID',
    `skill_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1: battle技能, 2: benefit技能',
    `exp` BIGINT(20) NOT NULL DEFAULT 0 COMMENT '目前的经验值',
    `ctime` timestamp NOT NULL DEFAULT 0,
    `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`, `legend_id`, `skill_group_id`)
) ENGINE=InnoDB default charset=utf8;