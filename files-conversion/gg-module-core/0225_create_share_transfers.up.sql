CREATE TABLE share_transfers
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    change_requests_id INT     NOT NULL,
    from_user_id       INT     NOT NULL,
    to_user_id         INT     NOT NULL,
    shares             INT     NOT NULL,
    is_gift            BOOLEAN NOT NULL DEFAULT FALSE,
    created_at         BIGINT  NOT NULL,
    updated_at         BIGINT  NOT NULL,
    FOREIGN KEY (change_requests_id) REFERENCES change_requests (id),
    FOREIGN KEY (from_user_id) REFERENCES users (id),
    FOREIGN KEY (to_user_id) REFERENCES users (id)
);