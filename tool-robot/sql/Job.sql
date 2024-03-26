CREATE TABLE Job (
    uid bigint unsigned NOT NULL DEFAULT 0,
    job_id bigint unsigned NOT NULL DEFAULT 0 COMMENT "event ticket",
    c_job_id bigint unsigned DEFAULT 0 COMMENT "front end job id",
    city_id bigint unsigned NOT NULL,
    world_id BIGINT UNSIGNED NOT NULL DEFAULT 0,
    event_type int unsigned NOT NULL DEFAULT 0 COMMENT "event type, describe by constant defined in EventModel",
    `state` ENUM('none', 'running', 'done', 'failed') DEFAULT 'none',
    `retry_times` SMALLINT DEFAULT 0,
    `stack_trace` BLOB,
    time_start timestamp NOT NULL DEFAULT "0000-00-00 00:00:00" COMMENT "start time point of the event",
    time_end timestamp NULL DEFAULT NULL COMMENT "end time point of the event",
    trace blob,
    ctime timestamp NOT NULL DEFAULT 0,
    mtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (uid, job_id),
    KEY(time_end),
    KEY `idx_on_s` (`state`)
) ENGINE = INNODB DEFAULT CHARSET utf8;

