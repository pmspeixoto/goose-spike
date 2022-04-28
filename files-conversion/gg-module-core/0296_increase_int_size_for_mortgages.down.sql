ALTER TABLE mortgages
MODIFY COLUMN requested_amount_in_cents INT(11),
    MODIFY COLUMN annual_income_in_cents INT(11),
    MODIFY COLUMN uk_properties_value_in_cents INT(11),
    MODIFY COLUMN other_outstanding_mortgage_balance_in_cents INT(11),
    MODIFY COLUMN monthly_mortgage_payments_in_cents INT(11),
    MODIFY COLUMN monthly_rental_income_in_cents INT(11)
;
