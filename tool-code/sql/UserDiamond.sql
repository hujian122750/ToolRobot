CREATE TABLE `UserDiamond` (
  `uid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `payment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `product_id` varchar(100) NOT NULL DEFAULT '',
  `pay_type` varchar(50) NOT NULL DEFAULT '',
  `type_channel` varchar(100) NOT NULL DEFAULT '',
  `fpid` bigint(20) unsigned NOT NULL DEFAULT 0,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tid` varchar(100) NOT NULL DEFAULT '',
  `post_data` blob NOT NULL,
  `conf_data` blob NOT NULL,
  `dollar` float unsigned NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`, `payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;