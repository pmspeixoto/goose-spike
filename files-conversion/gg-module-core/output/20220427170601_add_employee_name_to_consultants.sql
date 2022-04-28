-- +goose Up
-- +goose StatementBegin
ALTER TABLE consultants ADD COLUMN employee_name VARCHAR(255) NOT NULL DEFAULT '';

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE consultants DROP COLUMN employee_name;

-- +goose StatementEnd
