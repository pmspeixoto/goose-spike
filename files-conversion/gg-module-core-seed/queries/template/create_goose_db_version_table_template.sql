-- drop goose db table
DROP TABLE IF EXISTS goose_db_version;

-- create goose_db_version table if not exists
CREATE TABLE IF NOT EXISTS goose_db_version
(
    id         bigint unsigned auto_increment
               primary key,
    version_id bigint                              not null,
    is_applied tinyint(1)                          not null,
    tstamp     timestamp default CURRENT_TIMESTAMP null,
    constraint id
        unique (id)
) auto_increment = 1;

-- insert data
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (0, 1, NOW());
