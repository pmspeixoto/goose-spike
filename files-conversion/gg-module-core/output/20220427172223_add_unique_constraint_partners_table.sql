-- +goose Up
-- +goose StatementBegin
ALTER TABLE partners
 ADD CONSTRAINT UC_partner_name UNIQUE (partner_name);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE partners
 DROP INDEX UC_partner_name;

-- +goose StatementEnd
