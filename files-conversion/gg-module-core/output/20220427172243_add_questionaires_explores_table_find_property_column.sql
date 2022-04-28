-- +goose Up
-- +goose StatementBegin
ALTER TABLE questionaires_explores
     ADD COLUMN find_property BOOLEAN NOT NULL DEFAULT 0;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE questionaires_explores
     DROP COLUMN find_property;
-- +goose StatementEnd
