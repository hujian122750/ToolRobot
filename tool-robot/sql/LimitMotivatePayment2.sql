CREATE TABLE `LimitMotivatePayment2` (
  `uid` bigint(20) unsigned NOT NULL,
  `push_id` bigint(20) unsigned NOT NULL,
  `push_num` int(10) unsigned NOT NULL DEFAULT '0',
  `left_times` int(10) unsigned NOT NULL DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pop_up` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iap_group_id` bigint(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`uid`,`push_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;