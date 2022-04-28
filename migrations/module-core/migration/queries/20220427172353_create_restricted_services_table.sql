-- +goose Up
-- +goose StatementBegin
CREATE TABLE restricted_services (
     id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     `key` VARCHAR(255) UNIQUE NOT NULL,
     label VARCHAR(255) NOT NULL
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE restricted_services;

-- +goose StatementEnd
