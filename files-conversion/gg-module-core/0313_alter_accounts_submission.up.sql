ALTER TABLE accounts_submissions
    DROP ct600_accepted_at,
    DROP FOREIGN KEY fk_ct600_files,
    CHANGE ct600_file_id ct600_dms_id INT;