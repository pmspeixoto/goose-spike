-- +goose Up
-- +goose StatementBegin
ALTER TABLE onfido_checks
     ADD COLUMN created_at BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE onfido_checks
     DROP COLUMN created_at;

-- +goose StatementEnd
