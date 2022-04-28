-- +goose Up
-- +goose StatementBegin
UPDATE  file_categories SET label = 'End of year tax returns'
     WHERE category = 'END_OF_YEAR_TAX_RETURNS';
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE  file_categories SET label = 'End of year Tax Returns'
     WHERE category = 'END_OF_YEAR_TAX_RETURNS';
-- +goose StatementEnd
