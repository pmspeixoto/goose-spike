-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
   ADD COLUMN email_verification_code VARCHAR(255),
   ADD COLUMN tax_bracket VARCHAR(255),
   ADD COLUMN self_certification VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
   DROP COLUMN email_verification_code,
   DROP COLUMN tax_bracket,
   DROP COLUMN self_certification;

-- +goose StatementEnd
