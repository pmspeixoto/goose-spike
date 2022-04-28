-- +goose Up
-- +goose StatementBegin
ALTER TABLE mortgages
 MODIFY COLUMN requested_amount_in_cents BIGINT,
     MODIFY COLUMN annual_income_in_cents BIGINT,
     MODIFY COLUMN uk_properties_value_in_cents BIGINT,
     MODIFY COLUMN other_outstanding_mortgage_balance_in_cents BIGINT,
     MODIFY COLUMN monthly_mortgage_payments_in_cents BIGINT,
     MODIFY COLUMN monthly_rental_income_in_cents BIGINT
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE mortgages
 MODIFY COLUMN requested_amount_in_cents INT(11),
     MODIFY COLUMN annual_income_in_cents INT(11),
     MODIFY COLUMN uk_properties_value_in_cents INT(11),
     MODIFY COLUMN other_outstanding_mortgage_balance_in_cents INT(11),
     MODIFY COLUMN monthly_mortgage_payments_in_cents INT(11),
     MODIFY COLUMN monthly_rental_income_in_cents INT(11)
 ;

-- +goose StatementEnd
