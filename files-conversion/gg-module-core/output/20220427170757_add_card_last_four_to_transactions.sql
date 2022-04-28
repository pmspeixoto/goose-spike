-- +goose Up
-- +goose StatementBegin
ALTER TABLE transactions
 ADD COLUMN card_last_four VARCHAR(255)
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE transactions
 DROP COLUMN card_last_four
 ;

-- +goose StatementEnd
