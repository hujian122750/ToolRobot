CREATE TABLE `UserBenefitParam` (
  `uid` bigint unsigned NOT NULL,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(uid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;