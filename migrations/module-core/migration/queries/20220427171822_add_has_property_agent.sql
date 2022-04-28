-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
     ADD COLUMN has_property_agent BOOLEAN
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
     DROP COLUMN has_property_agent
 ;

-- +goose StatementEnd
