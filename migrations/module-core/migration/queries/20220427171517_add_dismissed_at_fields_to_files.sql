-- +goose Up
-- +goose StatementBegin
ALTER TABLE files
     ADD COLUMN dismissed_at BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files
     DROP COLUMN dismissed_at;

-- +goose StatementEnd
