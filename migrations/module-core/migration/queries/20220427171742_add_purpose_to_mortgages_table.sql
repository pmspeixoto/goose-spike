-- +goose Up
-- +goose StatementBegin
ALTER TABLE mortgages
     ADD COLUMN mortgage_purpose VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE mortgages
     DROP COLUMN mortgage_purpose;

-- +goose StatementEnd
