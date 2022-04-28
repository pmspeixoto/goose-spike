-- +goose Up
-- +goose StatementBegin
ALTER TABLE employees
 ADD COLUMN signature_location VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE employees
 DROP COLUMN signature_location;

-- +goose StatementEnd
