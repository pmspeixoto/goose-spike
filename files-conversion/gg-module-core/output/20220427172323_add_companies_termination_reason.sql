-- +goose Up
-- +goose StatementBegin
ALTER TABLE `companies`
     ADD COLUMN `termination_reason` ENUM("PURCHASE_FELL_THROUGH", "MORTGAGE", "GG_SERVICE", "GG_MODEL", "COMPLIANCE", "OTHER"),
     ADD COLUMN `termination_reason_additional_info` TEXT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE `companies`
     DROP COLUMN `termination_reason`,
     DROP COLUMN `termination_reason_additional_info`;
-- +goose StatementEnd
