-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
     ADD COLUMN tags VARCHAR(255) NOT NULL DEFAULT '';
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
     DROP COLUMN tags;
-- +goose StatementEnd
