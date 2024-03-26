CREATE TABLE `CmsTask` (
  `uid` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `event_type` text,
  `param1` bigint(20) DEFAULT NULL,
  `param2` bigint(20) DEFAULT NULL,
  `cur_value` bigint(20) DEFAULT NULL,
  `req_value` bigint(20) DEFAULT NULL,
  `start_value` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
  `state` smallint(6) DEFAULT NULL,
  `season` bigint(20) DEFAULT NULL,
  `ext` BLOB,
  `mtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`event_id`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;