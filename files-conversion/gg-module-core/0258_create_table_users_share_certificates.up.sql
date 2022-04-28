CREATE TABLE users_share_certificates (
    user_id INT NOT NULL,
    markdown_id INT NOT NULL,
    company_id INT NOT NULL,
    PRIMARY KEY (user_id, markdown_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (company_id) REFERENCES companies(id)
);
