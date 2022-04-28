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
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165355, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165400, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165405, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165410, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165415, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165420, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165425, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165430, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165435, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165440, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165445, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165450, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165455, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165500, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165505, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165510, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165515, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165520, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165525, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165530, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165535, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165540, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165545, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165550, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165555, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165600, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165605, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165610, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165615, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165620, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165625, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165630, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165635, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165640, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165645, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165650, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165655, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165700, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165705, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165710, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165715, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165720, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165725, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165730, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165735, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165740, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165745, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165751, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165756, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165801, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165806, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165811, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165816, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165821, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165826, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165831, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165836, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165841, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165846, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165851, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165856, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165901, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165906, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165911, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165916, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165921, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165926, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165931, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165936, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165941, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165946, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165951, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427165956, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170001, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170006, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170011, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170016, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170021, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170026, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170031, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170036, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170041, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170046, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170051, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170056, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170101, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170106, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170111, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170116, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170121, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170126, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170131, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170136, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170141, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170146, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170151, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170156, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170201, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170206, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170211, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170216, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170221, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170226, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170231, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170236, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170241, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170246, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170251, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170256, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170301, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170306, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170311, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170316, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170321, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170326, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170331, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170336, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170341, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170346, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170351, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170356, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170401, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170406, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170411, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170416, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170421, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170426, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170431, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170436, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170441, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170446, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170451, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170456, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170501, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170506, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170511, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170516, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170521, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170526, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170531, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170536, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170541, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170546, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170551, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170556, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170601, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170606, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170611, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170616, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170621, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170626, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170631, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170636, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170641, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170646, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170651, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170656, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170701, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170706, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170711, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170716, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170721, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170726, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170731, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170736, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170741, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170746, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170752, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170757, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170802, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170807, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170812, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170817, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170822, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170827, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170832, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170837, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170842, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170847, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170852, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170857, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170902, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170907, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170912, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170917, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170922, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170927, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170932, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170937, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170942, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170947, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170952, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427170957, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171002, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171007, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171012, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171017, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171022, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171027, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171032, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171037, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171042, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171047, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171052, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171057, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171102, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171107, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171112, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171117, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171122, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171127, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171132, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171137, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171142, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171147, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171152, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171157, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171202, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171207, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171212, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171217, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171222, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171227, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171232, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171237, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171242, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171247, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171252, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171257, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171302, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171307, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171312, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171317, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171322, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171327, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171332, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171337, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171342, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171347, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171352, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171357, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171402, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171407, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171412, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171417, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171422, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171427, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171432, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171437, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171442, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171447, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171452, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171457, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171502, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171507, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171512, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171517, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171522, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171527, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171532, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171537, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171542, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171547, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171552, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171557, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171602, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171607, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171612, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171617, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171622, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171627, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171632, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171637, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171642, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171647, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171652, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171657, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171702, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171707, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171712, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171717, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171722, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171727, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171732, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171737, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171742, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171747, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171752, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171757, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171802, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171807, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171812, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171817, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171822, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171827, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171832, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171837, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171842, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171847, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171852, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171857, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171902, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171907, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171912, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171917, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171922, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171927, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171933, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171938, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171943, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171948, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171953, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427171958, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172003, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172008, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172013, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172018, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172023, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172028, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172033, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172038, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172043, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172048, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172053, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172058, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172103, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172108, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172113, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172118, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172123, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172128, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172133, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172138, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172143, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172148, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172153, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172158, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172203, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172208, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172213, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172218, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172223, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172228, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172233, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172238, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172243, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172248, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172253, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172258, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172303, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172308, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172313, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172318, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172323, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172328, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172333, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172338, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172343, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172348, 1, NOW());
INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (20220427172353, 1, NOW());