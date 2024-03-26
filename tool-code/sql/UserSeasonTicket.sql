CREATE TABLE IF NOT EXISTS `UserSeasonTicket` (
  `uid` BIGINT UNSIGNED NOT NULL DEFAULT 0,
  `activity_id` BIGINT UNSIGNED NOT NULL DEFAULT 0,
  `season_id` BIGINT NOT NULL DEFAULT 0 COMMENT 'honor_pass_season.internalId',
  `season_group_id` BIGINT NOT NULL DEFAULT 0 COMMENT 'honor_pass_group.internalId',
  `status` TINYINT NOT NULL DEFAULT 0 COMMENT '0: 未开启, 1: 完成开启新赛季, 2: 完成新手引导',
  `exp` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '最终经验值',
  `origin_exp` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '未加成过的exp',
  `level` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '',
  `claimed` BLOB  NOT NULL COMMENT '玩家已经领取的所有的档位中的礼包 {honor_pass_group.internalId => [honor_pass_main.internalId, honor_pass_main.internalId,honor_pass_main.internalId]}',
  `unclaimed_exp` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '',
  `claimed_bonus` BLOB  NOT NULL COMMENT '玩家已经领取的宝箱次数红利 {times => 1, claimed => [honor_pass_treasure_open_reward.internalId, honor_pass_treasure_open_reward.internalId]}',
  `quest_utime` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cycle_claimed` BLOB COMMENT '循环奖励',
  `ctime` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`, `activity_id`)
) ENGINE = INNODB DEFAULT CHARSET utf8;