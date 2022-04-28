-- +goose Up
-- +goose StatementBegin
ALTER TABLE analytics_property_purchases
     ADD COLUMN signing_pending_at BIGINT,
     ADD COLUMN is_direct_incorp BOOLEAN DEFAULT false;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE analytics_property_purchases
     DROP COLUMN signing_pending_at,
     DROP COLUMN is_direct_incorp;

-- +goose StatementEnd
