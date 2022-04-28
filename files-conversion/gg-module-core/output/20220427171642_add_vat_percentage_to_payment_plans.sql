-- +goose Up
-- +goose StatementBegin
ALTER TABLE payment_plans
 ADD COLUMN vat_percentage SMALLINT NOT NULL AFTER vat_in_cents;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE payment_plans
 DROP COLUMN vat_percentage;

-- +goose StatementEnd
