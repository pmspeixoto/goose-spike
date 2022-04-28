CREATE TABLE invitations
(
    id          INT NOT NULL auto_increment PRIMARY KEY,
    created_at  BIGINT NOT NULL,
    updated_at  BIGINT NOT NULL,
    deleted_at  BIGINT,
    accepted_at BIGINT,
    company_id  INT,
    user_id     INT,
    user_email  VARCHAR(255),
    author_id   INT,
    author_type VARCHAR(255),
    process     VARCHAR(255),
    process_id  INT,

    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (company_id) REFERENCES companies(id)
);