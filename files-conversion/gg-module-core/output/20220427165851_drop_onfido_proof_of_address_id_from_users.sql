-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN onfido_proof_of_address_id;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN onfido_proof_of_address_id VARCHAR(255);

-- +goose StatementEnd
