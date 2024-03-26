CREATE TABLE `FlashSale`
(
    `uid`       bigint(20) not null,
    `productId` bigint(20) not null,
    `confId`    bigint(20) not null,
    `buyNum`    int(11)    not null,
    `ctime`     timestamp  not null default CURRENT_TIMESTAMP,
    `mtime`     timestamp  not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`, `productId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;