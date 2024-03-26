CREATE TABLE `PirateKiller` (
   `uid` bigint(20) unsigned NOT NULL,
   `stage` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '打炮阶段等级',
   `battery` blob COMMENT '炮座数据',
   `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
   `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;