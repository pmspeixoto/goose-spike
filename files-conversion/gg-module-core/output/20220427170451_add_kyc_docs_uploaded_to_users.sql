-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN kyc_docs_uploaded TINYINT UNSIGNED NOT NULL DEFAULT 0
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN kyc_docs_uploaded
 ;

-- +goose StatementEnd
