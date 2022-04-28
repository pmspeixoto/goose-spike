CREATE TABLE promotions (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at DATETIME NOT NULL,
    deleted_at DATETIME NULL,
    user_id INT NOT NULL,
    type VARCHAR(255) NOT NULL,
    expiry_date DATETIME NULL,
    consumed_at DATETIME NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
)
