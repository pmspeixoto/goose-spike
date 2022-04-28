-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
     DROP COLUMN tags;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
     ADD COLUMN `tags` varchar(255) NOT NULL DEFAULT '';

-- +goose StatementEnd
