-- +goose Up
-- +goose StatementBegin
UPDATE  files SET category = 'End of year tax returns'
     WHERE category = 'End of year Tax Returns';
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE  files SET category = 'End of year Tax Returns'
     WHERE category = 'End of year tax returns';
-- +goose StatementEnd
