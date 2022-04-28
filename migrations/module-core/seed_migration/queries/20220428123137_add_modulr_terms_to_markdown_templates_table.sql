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
 	1570206046000000000,
         1570206046000000000,
         'Modulr Terms and Conditions',
         'primary',
         'v1_modulr_terms',
         '',
         'markdown'
      );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM markdown_templates
   WHERE title='Modulr Terms and Conditions' 
   AND category='primary'
   AND version='v1';

-- +goose StatementEnd
