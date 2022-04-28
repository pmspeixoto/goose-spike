-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
 ADD COLUMN signer_id INT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
 DROP COLUMN signer_id;

-- +goose StatementEnd
