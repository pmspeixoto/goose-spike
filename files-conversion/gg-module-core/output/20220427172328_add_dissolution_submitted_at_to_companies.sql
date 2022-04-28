-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN dissolution_submitted_at DATETIME;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN dissolution_submitted_at;

-- +goose StatementEnd
