-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN termination_reasons TEXT AFTER termination_reason;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN termination_reasons;
-- +goose StatementEnd
