CREATE TABLE `CmsOperationQuest` (
  `uid` bigint(20) unsigned NOT NULL,
  `event_id` bigint(20) unsigned NOT NULL,
  `progress` blob DEFAULT NULL,
  `score` bigint(20) unsigned NOT NULL DEFAULT 0,
  `ctime` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rewards` blob DEFAULT NULL,
  PRIMARY KEY (`uid`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
