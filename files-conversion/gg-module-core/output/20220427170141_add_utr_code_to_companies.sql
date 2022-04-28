-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN utr_code VARCHAR(10);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN utr_code;
-- +goose StatementEnd
