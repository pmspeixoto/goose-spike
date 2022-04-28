-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
   ADD COLUMN voucher_code VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
   DROP COLUMN voucher_code;

-- +goose StatementEnd
