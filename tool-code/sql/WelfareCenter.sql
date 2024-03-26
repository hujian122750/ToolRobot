CREATE TABLE `WelfareCenter` (
  `uid` bigint(20) NOT NULL,
  `open_fund` int(11) DEFAULT NULL,
  `fund_rewards` blob,
  `first_iap` blob,
  `weekly_card` blob,
  `seven_day` blob,
  `total_pay` bigint(20) DEFAULT NULL,
  `zero_buy`  blob COMMENT '零元购',
  `open_fund_new` int(11) NOT NULL DEFAULT '0',
  `fund_rewards_new` blob,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;