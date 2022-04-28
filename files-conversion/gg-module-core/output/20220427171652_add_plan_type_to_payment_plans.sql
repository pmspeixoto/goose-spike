-- +goose Up
-- +goose StatementBegin
ALTER TABLE payment_plans
 ADD COLUMN plan_type VARCHAR(45) NOT NULL AFTER `key`;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE payment_plans
 DROP COLUMN plan_type;

-- +goose StatementEnd
