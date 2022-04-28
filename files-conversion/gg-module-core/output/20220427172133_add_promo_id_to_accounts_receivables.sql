-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     ADD COLUMN promo_id INT,
     ADD CONSTRAINT fk_account_receivable_promotion FOREIGN KEY (promo_id) REFERENCES promotions (id);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     DROP FOREIGN KEY fk_account_receivable_promotion,
     DROP COLUMN promo_id;

-- +goose StatementEnd
