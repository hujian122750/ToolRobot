CREATE TABLE `PoseidonStatue` (
                                  `uid` bigint(20) unsigned NOT NULL,
                                  `statue_id` bigint(20) unsigned NOT NULL,
                                  `level` int unsigned NOT NULL DEFAULT 0,
                                  `last_used_times` blob COMMENT '',
                                  `skill_job_id` bigint(20) unsigned  DEFAULT 0,
                                  `gem_count` int unsigned NOT NULL  DEFAULT  0,
                                  `progress` bigint(20)  NOT NULL DEFAULT 0,
                                  `collect_rewards` blob COMMENT '',
                                  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
                                  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                  PRIMARY KEY (`uid`,`statue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;