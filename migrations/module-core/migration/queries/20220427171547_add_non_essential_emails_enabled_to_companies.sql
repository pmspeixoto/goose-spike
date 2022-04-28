-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
 ADD COLUMN non_essential_emails_enabled BOOLEAN NOT NULL DEFAULT TRUE;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
 DROP COLUMN non_essential_emails_enabled;

-- +goose StatementEnd
