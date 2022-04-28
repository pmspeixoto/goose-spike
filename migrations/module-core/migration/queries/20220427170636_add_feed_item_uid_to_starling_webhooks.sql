-- +goose Up
-- +goose StatementBegin
ALTER TABLE starling_webhooks
     ADD COLUMN feed_item_uid VARCHAR(255) UNIQUE;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE starling_webhooks
     DROP COLUMN feed_item_uid;

-- +goose StatementEnd
