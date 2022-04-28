-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases_users
     DROP COLUMN source_of_funds,
     DROP COLUMN other_reason;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases_users
   ADD COLUMN `source_of_funds` varchar(255) DEFAULT NULL,
   ADD COLUMN `other_reason` varchar(255) DEFAULT NULL;

-- +goose StatementEnd
