CREATE TABLE `Research` (
  `uid` bigint unsigned NOT NULL,
  `research_id` int unsigned NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `job_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`research_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;