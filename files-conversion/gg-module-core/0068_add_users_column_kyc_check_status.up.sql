ALTER TABLE users
  ADD COLUMN kyc_check_status VARCHAR(255) NOT NULL DEFAULT "NOT_STARTED";
