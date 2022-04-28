-- drop goose db table
DROP TABLE IF EXISTS goose_seed_migrations;

-- create goose_seed_migrations table if not exists
CREATE TABLE IF NOT EXISTS goose_seed_migrations
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
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (0, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145647, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145652, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145657, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145702, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145707, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145712, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145717, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145722, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145727, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145732, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145737, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145742, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145747, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145752, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145757, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145802, 1, NOW());