CREATE TABLE `Virtue` (
    `uid` bigint(20) not null,
    `season` varchar(64),
    `fusion` blob,
    `quest_utime` timestamp null default current_timestamp,
    `ctime` timestamp null default current_timestamp,
    `mtime` timestamp null default null on update current_timestamp,
    primary key (`uid`)
) ENGINE=InnoDB default charset=utf8;