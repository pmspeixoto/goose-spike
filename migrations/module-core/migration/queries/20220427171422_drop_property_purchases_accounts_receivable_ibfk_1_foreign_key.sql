-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases_accounts_receivable
     DROP FOREIGN KEY property_purchases_accounts_receivable_ibfk_1;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases_accounts_receivable
     ADD FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id);
-- +goose StatementEnd
