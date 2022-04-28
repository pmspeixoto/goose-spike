CREATE TABLE notifications
(
    id         INT          NOT NULL PRIMARY KEY AUTO_INCREMENT,
    created_at DATETIME     NOT NULL,
    user_id    INT          NOT NULL,
    type       VARCHAR(255) NOT NULL,
    seen_at    DATETIME     NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
);
