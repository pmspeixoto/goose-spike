-- +goose Up
-- +goose StatementBegin
CREATE TABLE property_purchases_accounts_receivable (
     property_purchase_id INT NOT NULL,
     account_receivable_id INT NOT NULL,
     FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS property_purchases_accounts_receivable;

-- +goose StatementEnd
