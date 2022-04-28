ALTER TABLE analytics_users
    MODIFY id INT NOT NULL,
    DROP COLUMN user_id;
