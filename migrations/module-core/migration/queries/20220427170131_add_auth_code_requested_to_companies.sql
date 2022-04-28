-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN auth_code_requested BOOLEAN NOT NULL DEFAULT FALSE;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN auth_code_requested;
-- +goose StatementEnd
