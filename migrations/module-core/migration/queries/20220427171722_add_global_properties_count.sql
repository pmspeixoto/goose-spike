-- +goose Up
-- +goose StatementBegin
ALTER TABLE `mortgages`
     ADD COLUMN global_properties_count INT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE `mortgages`
     DROP COLUMN global_properties_count;

-- +goose StatementEnd
