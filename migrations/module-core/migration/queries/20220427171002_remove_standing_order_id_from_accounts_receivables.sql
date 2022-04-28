-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     DROP COLUMN standing_order_id;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     ADD COLUMN standing_order_id BIGINT;
-- +goose StatementEnd
