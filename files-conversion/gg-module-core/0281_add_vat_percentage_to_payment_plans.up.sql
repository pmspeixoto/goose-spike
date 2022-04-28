ALTER TABLE payment_plans
ADD COLUMN vat_percentage SMALLINT NOT NULL AFTER vat_in_cents;
