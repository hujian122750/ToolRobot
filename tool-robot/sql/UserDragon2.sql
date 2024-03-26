CREATE TABLE UserDragon2 (
    uid bigint unsigned NOT NULL DEFAULT 0,
    name varchar(100) DEFAULT NULL COMMENT "This is the dragon name",
    is_default_name tinyint unsigned NOT NULL DEFAULT 1,
    step mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT "A dragon has a step",
    skill_id bigint(20) unsigned NOT NULL DEFAULT 0,
    march_id bigint(20) unsigned NOT NULL DEFAULT 0 COMMENT "A dragon can go on marches",
    reward blob default NULL COMMENT  "bulid upgrade reward",
    shadow_job_id bigint unsigned NOT NULL DEFAULT 0,
    benefits blob default NULL COMMENT "current skills benefits",
    emblems blob default NULL COMMENT "dragon emblems",
    switchs blob default NULL COMMENT "功能开关",
    decoration varchar(100) default '' COMMENT 'airship decoration',
    ctime timestamp NOT NULL DEFAULT 0 COMMENT "A dragon was created on",
    mtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (uid)
) ENGINE=INNODB DEFAULT CHARSET utf8;
