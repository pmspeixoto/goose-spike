ALTER TABLE property_purchases
  ADD COLUMN is_payment_submitted BOOLEAN NOT NULL default false;
