-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN offboarded_at DATETIME;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN offboarded_at;
-- +goose StatementEnd
