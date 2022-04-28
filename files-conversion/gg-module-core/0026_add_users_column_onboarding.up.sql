ALTER TABLE users
  ADD COLUMN email_verification_code VARCHAR(255),
  ADD COLUMN tax_bracket VARCHAR(255),
  ADD COLUMN self_certification VARCHAR(255);
