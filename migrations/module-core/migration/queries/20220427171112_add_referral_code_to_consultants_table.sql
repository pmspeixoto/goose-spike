-- +goose Up
-- +goose StatementBegin
ALTER TABLE consultants
     ADD COLUMN referral_code VARCHAR(255) UNIQUE;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE consultants
     DROP COLUMN referral_code;
-- +goose StatementEnd
