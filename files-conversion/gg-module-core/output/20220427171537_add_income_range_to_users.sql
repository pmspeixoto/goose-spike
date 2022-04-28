-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
 ADD COLUMN income_range VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
 DROP COLUMN income_range;

-- +goose StatementEnd
