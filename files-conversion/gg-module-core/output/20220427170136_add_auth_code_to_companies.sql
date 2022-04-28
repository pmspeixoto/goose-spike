-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN auth_code VARCHAR(6);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN auth_code;
-- +goose StatementEnd
