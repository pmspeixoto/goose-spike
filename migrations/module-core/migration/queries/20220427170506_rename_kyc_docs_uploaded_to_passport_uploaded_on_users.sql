-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
   CHANGE kyc_docs_uploaded passport_uploaded TINYINT UNSIGNED NOT NULL DEFAULT 0;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
   CHANGE passport_uploaded kyc_docs_uploaded TINYINT UNSIGNED NOT NULL DEFAULT 0;

-- +goose StatementEnd
