-- +goose Up
-- +goose StatementBegin
ALTER TABLE analytics_users
     MODIFY id INT auto_increment,
     ADD COLUMN user_id INT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE analytics_users
     MODIFY id INT NOT NULL,
     DROP COLUMN user_id;

-- +goose StatementEnd
