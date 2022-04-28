-- +goose Up
-- +goose StatementBegin
ALTER TABLE `mortgages`
      ADD COLUMN other_outstanding_mortgage_balance_in_cents INT,
      ADD COLUMN monthly_mortgage_payments_in_cents INT,
      ADD COLUMN monthly_rental_income_in_cents INT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE `mortgages`
      DROP COLUMN other_outstanding_mortgage_balance_in_cents,
      DROP COLUMN monthly_mortgage_payments_in_cents,
      DROP COLUMN monthly_rental_income_in_cents;

-- +goose StatementEnd
