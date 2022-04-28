-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN partner_id int(11) AFTER lead_ops_employee_id,
     ADD CONSTRAINT fk_users_partner_id FOREIGN KEY (partner_id) REFERENCES partners(id);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     DROP FOREIGN KEY fk_users_partner_id,
     DROP COLUMN partner_id;

-- +goose StatementEnd
