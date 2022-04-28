ALTER TABLE accounts_receivables
    ADD COLUMN promo_id INT,
    ADD CONSTRAINT fk_account_receivable_promotion FOREIGN KEY (promo_id) REFERENCES promotions (id);