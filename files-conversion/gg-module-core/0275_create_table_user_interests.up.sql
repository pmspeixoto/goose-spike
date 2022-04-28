CREATE TABLE IF NOT EXISTS user_interests
(
    user_id       INT          NOT NULL,
    interest      VARCHAR(100) NOT NULL,
    is_interested BOOLEAN      NOT NULL,
    created_at    BIGINT       NOT NULL,

    CONSTRAINT PK_User_Interests PRIMARY KEY (user_id, interest),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
