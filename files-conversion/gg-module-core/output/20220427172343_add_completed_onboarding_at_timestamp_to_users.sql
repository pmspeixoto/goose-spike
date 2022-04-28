-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
 ADD COLUMN completed_onboarding_at DATETIME NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
 DROP COLUMN completed_onboarding_at;

-- +goose StatementEnd
