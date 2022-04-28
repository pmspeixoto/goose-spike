ALTER TABLE change_requests_users
    DROP FOREIGN KEY change_requests_users_ibfk_3,
    DROP COLUMN source_of_funds_id,
    DROP COLUMN source_of_funds_exempt
