-- +goose Up
-- +goose StatementBegin
ALTER TABLE subscriptions
     ADD COLUMN property_purchase_id INT(11) NOT NULL;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE subscriptions
     DROP COLUMN property_purchase_id;
-- +goose StatementEnd
