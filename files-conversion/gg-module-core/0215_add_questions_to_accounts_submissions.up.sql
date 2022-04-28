ALTER TABLE accounts_submissions
    ADD COLUMN has_exchanged_contracts BOOLEAN,
    ADD COLUMN has_paid_reservation_fee BOOLEAN,
    ADD COLUMN has_completed_purchase BOOLEAN,
    ADD COLUMN has_taken_out_a_mortgage BOOLEAN,
    ADD COLUMN has_refinanced BOOLEAN,
    ADD COLUMN has_started_mortgage_repayments BOOLEAN,
    ADD COLUMN has_tenants BOOLEAN;

