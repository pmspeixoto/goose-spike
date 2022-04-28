-- +goose Up
-- +goose StatementBegin
ALTER TABLE subscriptions
     ADD COLUMN standing_order_id BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE subscriptions
     DROP COLUMN standing_order_id;

-- +goose StatementEnd
