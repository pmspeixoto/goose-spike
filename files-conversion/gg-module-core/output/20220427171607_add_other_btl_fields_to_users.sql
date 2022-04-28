-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
 ADD COLUMN first_time_landlord BOOL,
 ADD COLUMN first_time_buyer BOOL,
 ADD COLUMN global_properties_count INT,
 ADD COLUMN uk_properties_count INT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
 DROP COLUMN first_time_landlord,
 DROP COLUMN first_time_buyer,
 DROP COLUMN global_properties_count,
 DROP COLUMN uk_properties_count;

-- +goose StatementEnd
