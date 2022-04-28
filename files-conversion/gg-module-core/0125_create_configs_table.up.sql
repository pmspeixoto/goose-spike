CREATE TABLE configs(
    config_key   VARCHAR(255) NOT NULL UNIQUE,
    config_value VARCHAR(255) NOT NULL,
    description  VARCHAR(255),
    INDEX (config_key)
);