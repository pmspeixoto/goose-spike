-- +goose Up
-- +goose StatementBegin
ALTER TABLE files
     ADD COLUMN scan_status VARCHAR(255) NOT NULL DEFAULT '',
     ADD COLUMN scan_signature VARCHAR(255) NOT NULL DEFAULT '';

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files
     DROP COLUMN scan_status,
     DROP COLUMN scan_signature;

-- +goose StatementEnd
