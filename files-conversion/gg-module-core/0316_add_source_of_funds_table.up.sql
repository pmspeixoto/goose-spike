CREATE TABLE source_of_funds (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    source_of_funds VARCHAR(255) NOT NULL,
    other_reason VARCHAR(255) NOT NULL,
    created_at bigint(20) NOT NULL,
    updated_at bigint(20) NOT NULL
)
