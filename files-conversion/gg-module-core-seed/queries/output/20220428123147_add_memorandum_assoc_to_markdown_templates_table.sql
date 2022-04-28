-- +goose Up
-- +goose StatementBegin
INSERT INTO markdown_templates
 (
     created_at,
     updated_at,
     title,
     category,
     version,
     markdown_text,
     document_type
 )
 VALUES
 (
     1571748731000000000,
     1571748731000000000,
     'Memorandum of Association',
     'all',
     'v1_memorandum_assoc',
     '',
     'markdown'
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM markdown_templates
 WHERE title='Memorandum of Association'
   AND category='all'
   AND version='v1_memorandum_assoc';

-- +goose StatementEnd
