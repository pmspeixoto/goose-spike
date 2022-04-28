-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN accounting_period_start DATE NULL,
     ADD COLUMN accounting_period_end DATE NULL;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN accounting_period_start,
     DrOP COLUMN accounting_period_end;
-- +goose StatementEnd
