-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     ADD status VARCHAR(255) NOT NULL DEFAULT 'UNPAID'
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     DROP COLUMN status
 ;

-- +goose StatementEnd
