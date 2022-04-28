-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
 ADD wallet_provider VARCHAR(255) NOT NULL DEFAULT 'MODULR';

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
 DROP COLUMN wallet_provider;

-- +goose StatementEnd
