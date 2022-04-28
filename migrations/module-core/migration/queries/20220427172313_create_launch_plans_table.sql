-- +goose Up
-- +goose StatementBegin
CREATE TABLE launch_plans (
     id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
     created_at DATETIME NOT NULL,
     updated_at DATETIME NOT NULL,
     deleted_at DATETIME NULL,
     user_id INT NOT NULL UNIQUE,
     find_property_status VARCHAR(255) NOT NULL DEFAULT 'TODO',
     mortgage_status VARCHAR(255) NOT NULL DEFAULT 'TODO',
     learning_status VARCHAR(255) NOT NULL DEFAULT 'TODO',
 
     FOREIGN KEY (user_id) REFERENCES users(id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE launch_plans;
-- +goose StatementEnd
