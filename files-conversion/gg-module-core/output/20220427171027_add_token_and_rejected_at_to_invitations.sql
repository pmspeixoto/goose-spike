-- +goose Up
-- +goose StatementBegin
ALTER TABLE invitations
     ADD COLUMN token VARCHAR(255),
     ADD COLUMN rejected_at BIGINT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE invitations
     DROP COLUMN token,
     DROP COLUMN rejected_at;
-- +goose StatementEnd
