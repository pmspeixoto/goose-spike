-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     ADD COLUMN description VARCHAR(255) NOT NULL;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     DROP COLUMN description;
-- +goose StatementEnd
