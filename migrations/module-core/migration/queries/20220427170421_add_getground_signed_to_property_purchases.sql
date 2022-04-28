-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
 ADD COLUMN getground_signed BOOLEAN NOT NULL DEFAULT FALSE;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
 DROP COLUMN getground_signed;

-- +goose StatementEnd
