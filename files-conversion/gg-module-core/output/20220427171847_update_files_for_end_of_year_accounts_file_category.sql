-- +goose Up
-- +goose StatementBegin
UPDATE  files SET category = 'End of year accounts'
     WHERE category = 'End of year Accounts';
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE  files SET category = 'End of year Accounts'
     WHERE category = 'End of year accounts';
-- +goose StatementEnd
