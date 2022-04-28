-- +goose Up
-- +goose StatementBegin
CREATE TABLE post (
                        id int NOT NULL AUTO_INCREMENT,
                        content varchar(45) DEFAULT NULL,
                        create_time datetime DEFAULT NULL,
                        PRIMARY KEY (`id`)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP table post;
-- +goose StatementEnd