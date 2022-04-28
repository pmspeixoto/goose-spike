-- +goose Up
-- +goose StatementBegin
CREATE TABLE subscriptions (
      id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
      created_at bigint NOT NULL,
      updated_at bigint NOT NULL,
      deleted_at bigint DEFAULT NULL,
      amount bigint NOT NULL,
      currency varchar(255) NOT NULL,
      reference varchar(255) DEFAULT NULL,
      subscription_type varchar(255) NOT NULL,
      frequency varchar(255) NOT NULL,
      date int NOT NULL
 ) DEFAULT CHARSET=utf8;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE subscriptions;

-- +goose StatementEnd
