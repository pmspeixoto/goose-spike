-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN onfido_passport_id;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN onfido_passport_id VARCHAR(255);

-- +goose StatementEnd
