ALTER TABLE webfilings
    ADD COLUMN company_number VARCHAR(255) NOT NULL,
    ADD COLUMN submission_number VARCHAR(255) NOT NULL,
    ADD UNIQUE key company_number_submission_number_unique_key (company_number, submission_number);