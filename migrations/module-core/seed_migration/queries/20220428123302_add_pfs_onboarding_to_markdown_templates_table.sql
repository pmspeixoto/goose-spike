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
         'Pfs Business Onboarding Application Form',
         'primary',
         'v1_pfs_onboarding',
         '',
         'markdown'
      );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM markdown_templates
   WHERE title='Pfs Business Onboarding Application Form' 
   AND category='primary'
   AND version='v1';

-- +goose StatementEnd
