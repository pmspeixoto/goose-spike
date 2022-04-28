-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
 ADD COLUMN shareholders_confirmed_at BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
 DROP COLUMN shareholders_confirmed_at;

-- +goose StatementEnd
