-- 历史最高分
create table `HighestScore` (
    `uid` bigint(20) not null,
    `dragon_data` blob,
    `dragon_highest` bigint unsigned default 0,
    `hero_data` blob,
    `hero_highest` bigint unsigned default 0,
    `equipment_data` blob,
    `equipment_highest` bigint unsigned default 0,
    `gem_data` blob,
    `gem_highest` bigint unsigned default 0,
    `hero_weapon_data` blob,
    `hero_weapon_highest` bigint unsigned default 0,
    `statue_data` blob,
    `statue_highest` bigint unsigned default 0,
    `artifact_data` blob,
    `artifact_highest` bigint unsigned default 0,
    `emblem_data` blob,
    `emblem_highest` bigint unsigned default 0,
    `ctime` timestamp null default current_timestamp,
    `mtime` timestamp null default null on update current_timestamp,
    primary key (`uid`)
) ENGINE=InnoDB default charset=utf8;