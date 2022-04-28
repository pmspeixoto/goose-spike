-- +goose Up
-- +goose StatementBegin
ALTER TABLE change_requests
     ADD COLUMN kyb_started_at BIGINT,
     ADD COLUMN kyb_provider   VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE change_requests
     DROP COLUMN kyb_started_at,
     DROP COLUMN kyb_provider;

-- +goose StatementEnd
