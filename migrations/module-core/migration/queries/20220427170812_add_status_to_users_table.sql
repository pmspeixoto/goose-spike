-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
 ADD COLUMN status INT NOT NULL DEFAULT 0
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
 DROP COLUMN status
 ;

-- +goose StatementEnd
