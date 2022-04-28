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
         1597749890438610000,
         1597749890438610000,
         'Direct Incorporation AoA - Sole',
         'direct_incorporation',
         'v1_direct_incorp_aoa_sole',
 	'markdown',
         ''),
     (
         1597749890438610000,
         1597749890438610000,
         'Direct Incorporation AoA - JV',
         'direct_incorporation',
         'v1_direct_incorp_aoa_jv',
 	'markdown',
         '');
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM markdown_templates
 WHERE title IN ('Direct Incorporation AoA - Sole', 'Direct Incorporation AoA - JV');

-- +goose StatementEnd
