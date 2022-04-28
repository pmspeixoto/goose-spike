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
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428122952, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428122957, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123002, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123007, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123012, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123017, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123022, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123027, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123032, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123037, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123042, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123047, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123052, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123057, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123102, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123107, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123112, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123117, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123122, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123127, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123132, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123137, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123142, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123147, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123152, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123157, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123202, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123207, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123212, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123217, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123222, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123227, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123232, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123237, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123242, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123247, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123252, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123257, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123302, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123307, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123312, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123317, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123322, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123327, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123332, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123337, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123342, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123347, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123352, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123357, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123402, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123407, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123412, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123418, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123423, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123428, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123433, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123438, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123443, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123448, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123453, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123458, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123503, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123508, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123513, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123518, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123523, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123528, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123533, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123538, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123543, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123548, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123553, 1, NOW());
INSERT INTO goose_seed_migrations (version_id, is_applied, tstamp) VALUES (20220428123558, 1, NOW());