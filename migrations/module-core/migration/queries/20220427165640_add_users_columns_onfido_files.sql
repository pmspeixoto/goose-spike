-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
   ADD COLUMN onfido_passport_id VARCHAR(255),
   ADD COLUMN onfido_proof_of_address_id VARCHAR(255),
   ADD COLUMN onfido_selfie_id VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
   DROP COLUMN onfido_passport_id,
   DROP COLUMN onfido_proof_of_address_id,
   DROP COLUMN onfido_selfie_id;

-- +goose StatementEnd
