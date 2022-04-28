ALTER TABLE accounts_submissions
    CHANGE ct600_dms_id ct600_file_id INT,
    ADD ct600_accepted_at DATETIME,
    ADD CONSTRAINT fk_ct600_files FOREIGN KEY (ct600_file_id) REFERENCES files(id);