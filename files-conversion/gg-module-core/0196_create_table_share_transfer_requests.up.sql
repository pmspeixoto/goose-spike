CREATE TABLE share_transfer_requests (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at BIGINT NOT NULL,
    updated_at BIGINT NOT NULL,
    deleted_at BIGINT,
    company_id INT NOT NULL,
    author_id INT NOT NULL,
    changes JSON NOT NULL,
    status VARCHAR(255) NOT NULL,
    data_captured_at BIGINT,
    approved_at BIGINT,
    all_signed_at BIGINT,
    FOREIGN KEY (company_id) REFERENCES companies(id),
    FOREIGN KEY (author_id) REFERENCES users(id)
);
