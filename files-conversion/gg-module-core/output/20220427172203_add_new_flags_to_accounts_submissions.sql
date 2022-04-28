-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     ADD COLUMN has_paid_deposit BOOLEAN NULL,
     ADD COLUMN is_payments_inline_shareholding BOOLEAN NULL,
     ADD COLUMN payments_inline_shareholding_details TEXT NULL,
     ADD COLUMN has_made_direct_payments BOOLEAN NULL

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     DROP COLUMN has_paid_deposit,
     DROP COLUMN is_payments_inline_shareholding ,
     DROP COLUMN payments_inline_shareholding_details,
     DROP COLUMN has_made_direct_payments

-- +goose StatementEnd
