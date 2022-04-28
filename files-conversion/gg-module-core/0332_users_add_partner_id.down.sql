ALTER TABLE users
    DROP FOREIGN KEY fk_users_partner_id,
    DROP COLUMN partner_id;
