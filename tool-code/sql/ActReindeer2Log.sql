CREATE TABLE `ActReindeer2Log` (
  `uid` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL DEFAULT 0,
  `season_id` bigint(20) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `num` bigint(20) NOT NULL DEFAULT 0,
  `score` bigint(20) NOT NULL DEFAULT 0,
  `to_uid` bigint(20) NOT NULL,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`activity_id`,`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;