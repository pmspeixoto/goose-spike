-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN has_completed_onboarding BOOLEAN NOT NULL DEFAULT FALSE;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN has_completed_onboarding;

-- +goose StatementEnd
