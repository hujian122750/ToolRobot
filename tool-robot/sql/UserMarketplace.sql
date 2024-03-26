CREATE TABLE `UserMarketplace` (
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `alliance_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_num` bigint(20) unsigned NOT NULL DEFAULT '0',
  `receive_num` bigint(20) unsigned NOT NULL DEFAULT '0',
  `request_weight` bigint(20) unsigned NOT NULL DEFAULT '0',
  `send_weight` bigint(20) unsigned NOT NULL DEFAULT '0',
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;