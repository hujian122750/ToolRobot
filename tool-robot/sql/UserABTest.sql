CREATE TABLE `UserABTest` (
  `uid` bigint(20) unsigned NOT NULL,
  `type` int(11) unsigned NOT NULL,
  `data` blob,
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`, `type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;