ALTER TABLE users
  CHANGE kyc_docs_uploaded passport_uploaded TINYINT UNSIGNED NOT NULL DEFAULT 0;
