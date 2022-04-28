-- +goose Up
-- +goose StatementBegin
ALTER TABLE files
   ADD COLUMN creator_type VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files
   DROP COLUMN creator_type;

-- +goose StatementEnd
