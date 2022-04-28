ALTER TABLE files
    DROP FOREIGN KEY fk_files_accounts_submissions_accounts_submission_id,
    DROP COLUMN accounts_submission_id;