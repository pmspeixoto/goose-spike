-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases_users
 ADD COLUMN source_of_funds VARCHAR(255),
 ADD COLUMN other_reason VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases_users
 DROP COLUMN source_of_funds,
 DROP COLUMN other_reason;

-- +goose StatementEnd
