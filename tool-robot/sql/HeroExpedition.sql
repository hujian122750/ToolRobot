CREATE TABLE `HeroExpedition` (
  `uid` bigint(20) NOT NULL,
  `season` bigint(20) DEFAULT NULL,
  `reward` blob,
  `layer` blob,
  `step` blob,
  `utime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;