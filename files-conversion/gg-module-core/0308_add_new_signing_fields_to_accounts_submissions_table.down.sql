ALTER TABLE accounts_submissions
    DROP FOREIGN KEY fk_ct600_files,
    DROP draft_accounts_dms_id,
    DROP ct600_accepted_at,
    DROP ct600_file_id;