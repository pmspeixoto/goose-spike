-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
   MODIFY COLUMN registration_number VARCHAR(255) UNIQUE;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
   MODIFY COLUMN registration_number VARCHAR(255);

-- +goose StatementEnd
