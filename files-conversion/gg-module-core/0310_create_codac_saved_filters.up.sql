CREATE TABLE codac_saved_filters (
    user_id INT NOT NULL,
    filter_name VARCHAR(255) NOT NULL,
    filter_value TEXT NOT NULL,
    created_at bigint(20) NOT NULL,
    updated_at bigint(20) NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id),
    PRIMARY KEY (user_id, filter_name)
)
