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
 	    1588683392918467000,
         1588683392918467000,
         'Pfs Terms and Conditions',
         'primary',
         'v1_pfs_terms',
         '',
         'markdown'
      );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM markdown_templates
 WHERE title='Pfs Terms and Conditions'
   AND category='primary'
   AND version='v1_pfs_terms';

-- +goose StatementEnd
