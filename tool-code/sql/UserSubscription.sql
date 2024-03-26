CREATE TABLE `UserSubscription` (
  `uid` bigint(20) unsigned NOT NULL,
  `package_name` varchar(50) NOT NULL DEFAULT '',
  `expiration_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_award_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_subscribed` tinyint(3) NOT NULL DEFAULT '0',
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;