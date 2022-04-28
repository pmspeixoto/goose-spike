ALTER TABLE mortgages_decisions_in_principle
    MODIFY COLUMN fee_in_cents INT(11),
    MODIFY COLUMN loan_amount_in_cents INT(11),
    MODIFY COLUMN property_price_in_cents INT(11)
;
