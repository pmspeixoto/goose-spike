-- +goose Up
-- +goose StatementBegin
DROP TRIGGER IF EXISTS property_purchases_accounts_receivables_deprecation;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
CREATE TRIGGER property_purchases_accounts_receivables_deprecation AFTER INSERT ON property_purchases_accounts_receivable
     FOR EACH ROW
 BEGIN
     UPDATE accounts_receivables SET property_purchase_id = NEW.property_purchase_id WHERE id = NEW.account_receivable_id;
 END;
-- +goose StatementEnd
