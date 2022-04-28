-- +goose Up
-- +goose StatementBegin
ALTER TABLE files
   MODIFY category VARCHAR(255) DEFAULT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files
   MODIFY category TINYINT(4) DEFAULT NULL;

-- +goose StatementEnd
