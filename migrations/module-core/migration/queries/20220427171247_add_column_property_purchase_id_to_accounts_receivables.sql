-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     ADD COLUMN property_purchase_id int(11) NOT NULL;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     DROP COLUMN property_purchase_id;

-- +goose StatementEnd
