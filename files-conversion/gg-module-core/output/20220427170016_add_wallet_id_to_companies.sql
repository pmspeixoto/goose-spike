-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN wallet_id INT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN wallet_id;

-- +goose StatementEnd
