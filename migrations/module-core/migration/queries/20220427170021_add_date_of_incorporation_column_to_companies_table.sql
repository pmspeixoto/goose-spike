-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN date_of_incorporation DATE;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN date_of_incorporation;

-- +goose StatementEnd
