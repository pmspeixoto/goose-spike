-- +goose Up
-- +goose StatementBegin
UPDATE accounts_receivables, property_purchases_accounts_receivable
 SET accounts_receivables.property_purchase_id = property_purchases_accounts_receivable.property_purchase_id
 WHERE accounts_receivables.id = property_purchases_accounts_receivable.account_receivable_id;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
INSERT INTO property_purchases_accounts_receivable (property_purchase_id, account_receivable_id)
 SELECT id, property_purchase_id FROM accounts_receivables WHERE accounts_receivables.property_purchase_id IS NOT NULL;
-- +goose StatementEnd
