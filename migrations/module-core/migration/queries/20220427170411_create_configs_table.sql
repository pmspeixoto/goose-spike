-- +goose Up
-- +goose StatementBegin
CREATE TABLE configs(
     config_key   VARCHAR(255) NOT NULL UNIQUE,
     config_value VARCHAR(255) NOT NULL,
     description  VARCHAR(255),
     INDEX (config_key)
 );
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE configs;
-- +goose StatementEnd
