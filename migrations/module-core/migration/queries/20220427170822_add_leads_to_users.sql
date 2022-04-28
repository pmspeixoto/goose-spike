-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN lead_sales_employee_id INT,
     ADD COLUMN lead_ops_employee_id INT;
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN lead_sales_employee_id,
     DROP COLUMN lead_ops_employee_id;

-- +goose StatementEnd
