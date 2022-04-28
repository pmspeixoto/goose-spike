ALTER TABLE accounts_submissions
    ADD COLUMN has_paid_deposit BOOLEAN NULL,
    ADD COLUMN is_payments_inline_shareholding BOOLEAN NULL,
    ADD COLUMN payments_inline_shareholding_details TEXT NULL,
    ADD COLUMN has_made_direct_payments BOOLEAN NULL
