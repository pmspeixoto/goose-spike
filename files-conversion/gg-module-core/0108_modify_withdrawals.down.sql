ALTER TABLE withdrawals
    DROP COLUMN company_id,
    DROP COLUMN account_provider,
    DROP COLUMN account_id,
    DROP COLUMN payment_id,
    ADD COLUMN wallet_id INT NOT NULL,
    ADD INDEX (wallet_id);
