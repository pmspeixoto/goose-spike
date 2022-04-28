-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases_users
     ADD COLUMN source_of_funds_id INT(11) UNIQUE,
     ADD FOREIGN KEY (source_of_funds_id) REFERENCES source_of_funds(id)

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases_users
     DROP FOREIGN KEY property_purchases_users_ibfk_3,
     DROP COLUMN source_of_funds_id
-- +goose StatementEnd
