-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN dissolved_at DATETIME;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN dissolved_at;
-- +goose StatementEnd
