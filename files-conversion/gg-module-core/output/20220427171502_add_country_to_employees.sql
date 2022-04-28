-- +goose Up
-- +goose StatementBegin
ALTER TABLE employees ADD COLUMN country int(11) REFERENCES countries(id);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE employees DROP COLUMN country;

-- +goose StatementEnd
