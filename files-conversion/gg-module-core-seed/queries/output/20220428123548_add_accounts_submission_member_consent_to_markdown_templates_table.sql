-- +goose Up
-- +goose StatementBegin
INSERT INTO markdown_templates
 (created_at,
  updated_at,
  title,
  category,
  version,
  document_type,
  markdown_text)
 VALUES (1628505089000000000,
         1628505089000000000,
         'Accounts Submission - Member Consent',
         'accounting',
         'v1_accounts_submission_member_consent',
         'html',
         '')
 ;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM markdown_templates
 WHERE title IN (
     'Accounts Submission - Member Consent'
     );
-- +goose StatementEnd
