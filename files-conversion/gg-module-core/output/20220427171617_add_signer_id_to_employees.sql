-- +goose Up
-- +goose StatementBegin
ALTER TABLE employees
 ADD COLUMN signer_id INT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE employees
 DROP COLUMN signer_id;

-- +goose StatementEnd
