CREATE TABLE `UserAllianceMail` (
  `uid` bigint unsigned NOT NULL,
  `mail_id` bigint unsigned NOT NULL,
  `from_uid` bigint unsigned NOT NULL COMMENT "发件人uid",
  `from_uname` varchar(100) NOT NULL DEFAULT '' COMMENT "发送方名字",
  `from_portrait` varchar(200) NOT NULL DEFAULT '' COMMENT "发送方头像",
  `from_icon` varchar(200) NOT NULL DEFAULT '' COMMENT "发送方自定义头像",
  `title` blob COMMENT "{key:***,params:[]}",
  `body` MEDIUMBLOB COMMENT "{key:***,params:[]}",
  `data` blob COMMENT "邮件展示所需json格式数据，如战报",
  `attachment` blob COMMENT "邮件附件",
  `category` int unsigned NOT NULL DEFAULT 0 COMMENT "邮件的大类",
  `type` int unsigned NOT NULL DEFAULT 0 COMMENT "邮件的小类",
  `favorite` tinyint unsigned NOT NULL DEFAULT 0 COMMENT "1:表示收藏",
  `status` tinyint unsigned NOT NULL DEFAULT 0 COMMENT "1:表示已读",
  `attachment_expiration_time` timestamp NOT NULL DEFAULT 0 COMMENT "邮件附件过期时间",
  `attachment_status` tinyint unsigned NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`mail_id`),
  KEY `idx_ctime` (`ctime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
