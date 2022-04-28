-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN consultant_id INT;
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN consultant_id;

-- +goose StatementEnd
