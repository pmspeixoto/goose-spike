-- +goose Up
-- +goose StatementBegin
UPDATE  file_categories SET label = 'End of year accounts'
     WHERE category = 'END_OF_YEAR_ACCOUNTS';
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE  file_categories SET label = 'End of year Accounts'
     WHERE category = 'END_OF_YEAR_ACCOUNTS';
-- +goose StatementEnd
