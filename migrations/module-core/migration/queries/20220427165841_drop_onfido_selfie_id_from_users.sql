-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN onfido_selfie_id;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN onfido_selfie_id VARCHAR(255);

-- +goose StatementEnd
