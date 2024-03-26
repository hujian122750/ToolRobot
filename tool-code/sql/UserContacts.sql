CREATE TABLE `UserContacts`  (
    `uid` bigint UNSIGNED NOT NULL DEFAULT 0,
    `contact_uid` bigint UNSIGNED NOT NULL DEFAULT 0,
    `contact_status` tinyint UNSIGNED NOT NULL DEFAULT 0,
    `ctime` timestamp NOT NULL DEFAULT 0,
    `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`, `contact_uid`)
) ENGINE = innoDB DEFAULT CHARSET=utf8;
