CREATE TABLE IF NOT EXISTS `LegendTemple` (
  `uid` bigint(20) UNSIGNED NOT NULL,
  `locked` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '召唤功能是否被锁',
  `special_summon_count` INT UNSIGNED NOT NULL COMMENT '花特殊道具抽奖的次数',
  `first_used` blob NOT NULL COMMENT '是否已经使用过第一次召唤',
  `free_cd` blob NOT NULL COMMENT '免费召唤冷却时间',
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
