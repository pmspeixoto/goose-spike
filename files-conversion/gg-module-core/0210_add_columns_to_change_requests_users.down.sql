ALTER TABLE change_requests_users
    DROP COLUMN kyc_exempt,
    DROP COLUMN user_type,
    DROP COLUMN shares,
    DROP COLUMN is_director,
    ADD COLUMN director BOOLEAN;
