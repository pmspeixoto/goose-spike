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
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145948, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145953, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428145958, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150003, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150008, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150013, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150018, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150023, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150028, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150033, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150038, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150043, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150048, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150053, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150058, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150103, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428150108, 1, NOW());