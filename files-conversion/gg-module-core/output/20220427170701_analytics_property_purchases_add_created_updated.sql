-- +goose Up
-- +goose StatementBegin
ALTER TABLE analytics_property_purchases
     ADD COLUMN created_at BIGINT,
     ADD COLUMN updated_at BIGINT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE analytics_property_purchases
     DROP COLUMN created_at,
     DROP COLUMN updated_at;
-- +goose StatementEnd
