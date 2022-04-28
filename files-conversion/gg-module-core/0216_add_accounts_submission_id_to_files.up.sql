ALTER TABLE files
    ADD COLUMN accounts_submission_id INT,
    ADD CONSTRAINT fk_files_accounts_submissions_accounts_submission_id
        FOREIGN KEY (accounts_submission_id) REFERENCES accounts_submissions(id);
