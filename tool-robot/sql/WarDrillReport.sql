CREATE TABLE `WarDrillReport` (
                              `uid` bigint(20) unsigned NOT NULL,
                              `level` INT NOT NULL,
                              `reports` blob COMMENT '战斗内容',
                              `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
                              `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                              PRIMARY KEY (`uid`,`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;