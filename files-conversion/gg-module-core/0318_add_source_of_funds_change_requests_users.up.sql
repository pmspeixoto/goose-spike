ALTER TABLE change_requests_users
    ADD COLUMN source_of_funds_exempt BOOL NOT NULL DEFAULT 0,
    ADD COLUMN source_of_funds_id INT(11) UNIQUE,
    ADD FOREIGN KEY (source_of_funds_id) REFERENCES source_of_funds(id)
