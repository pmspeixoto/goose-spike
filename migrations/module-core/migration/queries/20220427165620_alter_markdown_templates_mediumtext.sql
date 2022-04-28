-- +goose Up
-- +goose StatementBegin
-- ALTER TABLE markdowns MODIFY markdown_text MEDIUMTEXT;
 -- ALTER TABLE markdowns MODIFY signed_markdown_text MEDIUMTEXT
 
 ALTER TABLE markdown_templates MODIFY markdown_text MEDIUMTEXT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
-- ALTER TABLE markdowns MODIFY markdown_text MEDIUMTEXT;
 -- ALTER TABLE markdowns MODIFY signed_markdown_text MEDIUMTEXT
 
 ALTER TABLE markdown_templates MODIFY markdown_text MEDIUMTEXT;

-- +goose StatementEnd
