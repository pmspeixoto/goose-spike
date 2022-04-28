-- +goose Up
-- +goose StatementBegin
ALTER TABLE change_requests
     ADD COLUMN webfiled_at BIGINT,
     ADD COLUMN completed_at BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE change_requests
     DROP COLUMN webfiled_at,
     DROP COLUMN completed_at;

-- +goose StatementEnd
