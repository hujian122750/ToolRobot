CREATE TABLE `UserData` (
                              `uid` bigint(20) unsigned NOT NULL,
                              `id` bigint(20) NOT NULL,
                              `value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '数值',
                              `content` blob COMMENT '复杂内容',
                              `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
                              `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                              PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;