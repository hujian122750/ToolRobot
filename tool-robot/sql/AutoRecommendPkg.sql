CREATE TABLE `AutoRecommendPkg` (
  `uid` bigint(20) unsigned NOT NULL,
  `push_id` bigint(20) unsigned NOT NULL,
  `show_time` timestamp NOT NULL DEFAULT 0,
  `start_time` timestamp NOT NULL DEFAULT 0,
  `end_time` timestamp NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL,
  `package_id` bigint(11) NOT NULL,
  `pay_level` bigint(11) NOT NULL,
  `affect_pay_level` tinyint(4) NOT NULL DEFAULT 0,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`push_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=Dynamic;
