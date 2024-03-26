CREATE TABLE `UserPayment` (
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `payment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `product_id` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_id` varchar(50) NOT NULL DEFAULT '',
  `pay_type` TINYINT(3) unsigned NOT NULL DEFAULT '0' COMMENT 'payment type',
  `fpid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ts` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tid` varchar(50) NOT NULL DEFAULT '',
  `app_data` blob NOT NULL,
  `price` float unsigned NOT NULL DEFAULT '0',
  `purchaseToken` varchar(500) DEFAULT '',
  `penalty_status` TINYINT(3) unsigned NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;