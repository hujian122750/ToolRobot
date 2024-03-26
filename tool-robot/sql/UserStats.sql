CREATE TABLE `UserStats` (
  `uid` bigint unsigned NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 0,
  `value` bigint unsigned NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`uid`, `name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
