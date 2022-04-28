ALTER TABLE payment_plans
ADD COLUMN plan_type VARCHAR(45) NOT NULL AFTER `key`;
