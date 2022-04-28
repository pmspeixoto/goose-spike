-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
     ADD COLUMN lead_ops_employee_id INT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
     DROP COLUMN lead_ops_employee_id;
-- +goose StatementEnd
