ALTER TABLE webfilings
    DROP INDEX company_number_submission_number_unique_key,
    DROP COLUMN submission_number,
    DROP COLUMN company_number;