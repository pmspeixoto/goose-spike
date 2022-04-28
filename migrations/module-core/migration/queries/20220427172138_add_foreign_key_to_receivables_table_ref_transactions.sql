-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     ADD CONSTRAINT fk_accounts_receivables_transactions
     FOREIGN KEY (transaction_id)
     REFERENCES transactions(id);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     DROP FOREIGN KEY fk_accounts_receivables_transactions;
-- +goose StatementEnd
