-- +goose Up
-- +goose StatementBegin
ALTER TABLE subscriptions
     ADD COLUMN start_date BIGINT NOT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE subscriptions
     DROP COLUMN start_date;

-- +goose StatementEnd
