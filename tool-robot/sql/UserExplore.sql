CREATE TABLE `UserExplore` (
  `uid` bigint unsigned NOT NULL,
  `id` bigint unsigned NOT NULL,
  `status` tinyint unsigned NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
