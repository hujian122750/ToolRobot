CREATE TABLE `UserDominateCultivate` (
                                         `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
                                         `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
                                         `name` varchar(100) DEFAULT NULL COMMENT 'This is the dominate name',
                                         `level` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'the dominatelevel',
                                         `exp` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'the dominate exp',
                                         `star_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'the dominate star id',
                                         `talent` blob COMMENT '{天赋树id:{节点id:天赋等级}}',
                                         `march_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'A dominate can go on marches',
                                         `benefits` blob COMMENT '出战增益',
                                         `data` blob,
                                         `refine` blob,
                                         `status` tinyint(4) unsigned  NOT NULL DEFAULT '0' COMMENT '出征状态: 0: 闲置, 1: 城市驻防, 2: 军队出征',
                                         `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'A dominate was created on',
                                         `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                         PRIMARY KEY (`uid`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;