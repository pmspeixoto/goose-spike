-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     ADD COLUMN subscription_id BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     DROP COLUMN subscription_id;

-- +goose StatementEnd
