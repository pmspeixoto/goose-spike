-- +goose Up
-- +goose StatementBegin
ALTER TABLE employees
     ADD COLUMN hash VARCHAR(255) NOT NULL DEFAULT '';

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE employees
     DROP COLUMN hash;

-- +goose StatementEnd
