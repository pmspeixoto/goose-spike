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



