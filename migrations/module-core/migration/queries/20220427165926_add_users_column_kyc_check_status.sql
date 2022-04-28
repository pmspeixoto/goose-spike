-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
   ADD COLUMN kyc_check_status VARCHAR(255) NOT NULL DEFAULT "NOT_STARTED";

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
   DROP COLUMN kyc_check_status;

-- +goose StatementEnd
