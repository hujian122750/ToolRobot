CREATE TABLE `ArmyPreparation` (
  `uid` bigint(20) NOT NULL,
  `season` bigint(255) DEFAULT NULL,
  `num` bigint(20) DEFAULT NULL,
  `upgrade` int(255) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `task` blob,
  `mtime` timestamp NULL DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

