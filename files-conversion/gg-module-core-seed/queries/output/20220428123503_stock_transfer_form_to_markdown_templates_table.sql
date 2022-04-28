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
 VALUES (1611829520000000000,
         1611829520000000000,
         'Stock Transfer Form',
         'share_transfer_request',
         'v1_stock_transfer_form',
         'html',
         '')
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM markdown_templates
 WHERE title IN (
                 'Stock Transfer Form'
     );

-- +goose StatementEnd
