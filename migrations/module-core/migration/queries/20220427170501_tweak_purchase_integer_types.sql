-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
     MODIFY num_shareholders_onboarded INT NOT NULL DEFAULT 0,
     MODIFY num_shareholders_signed INT NOT NULL DEFAULT 0;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
     MODIFY num_shareholders_onboarded TINYINT UNSIGNED NOT NULL DEFAULT 0,
     MODIFY num_shareholders_signed TINYINT UNSIGNED NOT NULL DEFAULT 0;
-- +goose StatementEnd
