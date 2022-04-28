CREATE TABLE notes(
    id           INT          NOT NULL AUTO_INCREMENT,
    created_at   BIGINT       NOT NULL,
    updated_at   BIGINT       NOT NULL,
    deleted_at   BIGINT,
    content      TEXT,
    employee_id  INT          NOT NULL,
    author_name  VARCHAR(255),

    PRIMARY KEY(id),
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);
