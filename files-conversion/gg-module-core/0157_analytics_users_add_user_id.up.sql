ALTER TABLE analytics_users
    MODIFY id INT auto_increment,
    ADD COLUMN user_id INT;