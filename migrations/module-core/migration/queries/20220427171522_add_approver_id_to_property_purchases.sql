-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
     ADD COLUMN approver_id INT,
     ADD CONSTRAINT fk_property_purchases_employees_uid FOREIGN KEY (approver_id) REFERENCES employees(id);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
     DROP FOREIGN KEY fk_property_purchases_employees_uid,
     DROP COLUMN approver_id;
-- +goose StatementEnd
