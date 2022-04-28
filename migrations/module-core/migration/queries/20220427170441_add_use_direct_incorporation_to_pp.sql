-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
 ADD COLUMN use_direct_incorporation BOOLEAN NOT NULL DEFAULT FALSE;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
 DROP COLUMN use_direct_incorporation;

-- +goose StatementEnd
