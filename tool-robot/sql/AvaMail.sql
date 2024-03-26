CREATE TABLE `AvaMail` (
  `uid` bigint(20) unsigned NOT NULL,
  `mail_id` bigint(20) unsigned NOT NULL,
  `from_uid` bigint(20) unsigned NOT NULL COMMENT '发件人uid',
  `from_uname` varchar(100) NOT NULL DEFAULT '' COMMENT '发送方名字',
  `from_alliance_name` varchar(100) NOT NULL DEFAULT '' COMMENT '发送方联盟名字',
  `from_portrait` varchar(200) NOT NULL DEFAULT '' COMMENT '发送方头像',
  `from_icon` varchar(200) NOT NULL DEFAULT '' COMMENT '发送方自定义头像',
  `title` blob COMMENT '{key:***,params:[]}',
  `body` mediumblob COMMENT '{key:***,params:[]}',
  `data` blob COMMENT '邮件展示所需json格式数据，如战报',
  `attachment` blob COMMENT '邮件附件',
  `category` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '邮件的大类',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '邮件的小类',
  `favorite` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1:表示收藏',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1:表示已读',
  `attachment_expiration_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '邮件附件过期时间',
  `attachment_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '领取附件后置1',
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`mail_id`)
) ;