CREATE TABLE IF NOT EXISTS `Legend` (
  `uid` bigint(20) UNSIGNED NOT NULL,
  `legend_id` bigint(20) UNSIGNED NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL COMMENT "0: 空闲; 1-8: 任命的不同官职(parliament.id)",
  `level` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `xp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `star` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '星级',
  `status` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '英雄的出征状态: 0: 闲置, 1: 城市驻防, 2: 军队出征',
  `march_id` BIGINT(20) NOT NULL DEFAULT 0 COMMENT '随军出征的MarchId',
  `artifact_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`, `legend_id`),
  KEY `ids_on_up` (`uid`, `position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
