ALTER TABLE users
  ADD COLUMN onfido_passport_id VARCHAR(255),
  ADD COLUMN onfido_proof_of_address_id VARCHAR(255),
  ADD COLUMN onfido_selfie_id VARCHAR(255);
