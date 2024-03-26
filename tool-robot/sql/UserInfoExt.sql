CREATE TABLE `UserInfoExt` (
  `uid` bigint(20) NOT NULL,
  `money` double NOT NULL COMMENT '用户充值金额',
  `discount` float NOT NULL DEFAULT 1 COMMENT '折扣',
  `alliance_achievement_ids` BLOB NOT NULL COMMENT '联盟成就id数组',
  `tutorial` mediumblob,
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;