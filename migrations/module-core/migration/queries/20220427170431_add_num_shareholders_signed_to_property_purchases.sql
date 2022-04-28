-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
     ADD COLUMN num_shareholders_signed TINYINT UNSIGNED NOT NULL DEFAULT 0;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
     DROP COLUMN num_shareholders_signed;
-- +goose StatementEnd
