ALTER TABLE users
  CHANGE passport_uploaded kyc_docs_uploaded TINYINT UNSIGNED NOT NULL DEFAULT 0;
