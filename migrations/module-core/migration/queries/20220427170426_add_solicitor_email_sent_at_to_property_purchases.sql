-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
     ADD COLUMN solicitor_email_sent_at BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
     DROP COLUMN solicitor_email_sent_at;

-- +goose StatementEnd
