-- +goose Up
-- +goose StatementBegin
CREATE TABLE feedbacks (
     id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
     user_id INT NOT NULL,
     step VARCHAR(255) NOT NULL,
     notes TEXT NOT NULL,
     created_at DATETIME NOT NULL,
 
     FOREIGN KEY (user_id) REFERENCES users(id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE feedbacks;

-- +goose StatementEnd
