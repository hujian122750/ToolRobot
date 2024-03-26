CREATE TABLE `SeaTileObject` (
    `uid` bigint(20) unsigned NOT NULL,
    `obj_id` bigint(20)  NOT NULL  COMMENT '',
    `config_id` bigint(20)  NOT NULL  COMMENT '',
    `type` bigint(20)  NOT NULL  COMMENT '',
    `status` bigint(20)  NOT NULL  COMMENT '',
    `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`,`obj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;