-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
     ADD COLUMN property_agent_email_address varchar(255)
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
     DROP COLUMN property_agent_email_address
 ;

-- +goose StatementEnd
