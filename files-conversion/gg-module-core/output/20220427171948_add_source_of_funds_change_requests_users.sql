-- +goose Up
-- +goose StatementBegin
ALTER TABLE change_requests_users
     ADD COLUMN source_of_funds_exempt BOOL NOT NULL DEFAULT 0,
     ADD COLUMN source_of_funds_id INT(11) UNIQUE,
     ADD FOREIGN KEY (source_of_funds_id) REFERENCES source_of_funds(id)

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE change_requests_users
     DROP FOREIGN KEY change_requests_users_ibfk_3,
     DROP COLUMN source_of_funds_id,
     DROP COLUMN source_of_funds_exempt

-- +goose StatementEnd
