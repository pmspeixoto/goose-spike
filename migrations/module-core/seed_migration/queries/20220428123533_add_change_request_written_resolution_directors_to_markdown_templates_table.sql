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
 VALUES (1620901322000000000,
         1620901322000000000,
         'Change Request - Directors Written Resolution',
         'share_transfer_request',
         'v1_change_request_written_resolution_directors',
         'html',
         '')
 ;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM markdown_templates
 WHERE title IN (
     'Change Request - Directors Written Resolution'
     );

-- +goose StatementEnd
