CREATE TABLE `UserCard` (
  `uid` bigint(20) unsigned NOT NULL,
  `prosperity_val` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '繁荣度',
  `expiration_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '到期时间',
  `last_award_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '上次领奖时间',
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;