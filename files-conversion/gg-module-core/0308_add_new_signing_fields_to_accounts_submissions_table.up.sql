ALTER TABLE accounts_submissions
    ADD ct600_file_id INT,
    ADD ct600_accepted_at DATETIME,
    ADD draft_accounts_dms_id INT,
    ADD CONSTRAINT fk_ct600_files FOREIGN KEY (ct600_file_id) REFERENCES files(id);