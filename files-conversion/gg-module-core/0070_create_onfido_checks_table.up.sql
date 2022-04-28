CREATE TABLE onfido_checks (
    check_id VARCHAR(255) NOT NULL UNIQUE,
    user_id  INT          NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    INDEX (check_id),
    INDEX (user_id)
)