-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
 ADD COLUMN employment_status VARCHAR(255),
 ADD COLUMN other_employment_status VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
 DROP COLUMN employment_status,
 DROP COLUMN other_employment_status;

-- +goose StatementEnd
