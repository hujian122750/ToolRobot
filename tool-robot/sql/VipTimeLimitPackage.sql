CREATE TABLE `VipTimeLimitPackage` (
   `uid` bigint(20) NOT NULL,
   `level` bigint(20) NOT NULL,
   `activity_id` bigint(20) DEFAULT NULL,
   `buy_times` int(11) DEFAULT NULL,
   `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
   `mtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`uid`, `level`)
);
