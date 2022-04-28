-- +goose Up
-- +goose StatementBegin
ALTER TABLE mortgages
     ADD COLUMN repayment_type VARCHAR(255),
     ADD COLUMN mortgage_term_years INT,
     ADD COLUMN personal_guarantee BOOL,
     ADD COLUMN needs_other_mortgages BOOL,
     ADD COLUMN initial_fixed_period VARCHAR(255),
     ADD COLUMN missed_loan_payments BOOL,
     ADD COLUMN missed_loan_payments_reason TEXT,
     ADD COLUMN credit_defaults_or_ccj BOOL,
     ADD COLUMN credit_defaults_or_ccj_reason TEXT,
     ADD COLUMN uk_properties_value_in_cents INT,
     ADD COLUMN resides_in_uk BOOL,
     ADD COLUMN years_resides_in_uk VARCHAR(255);
 
 
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE mortgages
     DROP COLUMN repayment_type,
     DROP COLUMN mortgage_term_years,
     DROP COLUMN personal_guarantee,
     DROP COLUMN needs_other_mortgages,
     DROP COLUMN initial_fixed_period,
     DROP COLUMN missed_loan_payments,
     DROP COLUMN missed_loan_payments_reason,
     DROP COLUMN credit_defaults_or_ccj,
     DROP COLUMN credit_defaults_or_ccj_reason,
     DROP COLUMN uk_properties_value_in_cents,
     DROP COLUMN resides_in_uk,
     DROP COLUMN years_resides_in_uk;
-- +goose StatementEnd
