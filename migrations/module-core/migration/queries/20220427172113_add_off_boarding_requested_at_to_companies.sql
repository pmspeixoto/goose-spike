-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN offboarding_requested_at DATETIME;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN offboarding_requested_at;
-- +goose StatementEnd
