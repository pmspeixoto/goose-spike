-- +goose Up
-- +goose StatementBegin
INSERT INTO markdown_templates
     (
         created_at,
         updated_at,
         title,
         category,
         version,
 	document_type,
         markdown_text
     )
 VALUES
     (
         1596022421721210000,
         1596022421721210000,
         'Direct Incorporation Resolutions - Sole',
         'direct_incorporation',
         'v1_direct_incorp_resolutions_sole',
 	'html',
         ''),
     (
         1596022421721210000,
         1596022421721210000,
         'Direct Incorporation Resolutions - JV',
         'direct_incorporation',
         'v1_direct_incorp_resolutions_jv',
 	'html',
         '');
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM markdown_templates
 WHERE title IN ('Direct Incorporation Resolutions - Sole', 'Direct Incorporation Resolutions - JV');

-- +goose StatementEnd
