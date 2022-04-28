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
 VALUES (1611743387000000000,
         1611743387000000000,
         'Share Purchase Agreement',
         'share_transfer_request',
         'v1_share_transfer_request_spa',
         'html',
         ''),
        (1611743387000000000,
         1611743387000000000,
         'Notice of Termination',
         'share_transfer_request',
         'v1_share_transfer_notice_of_term',
         'html',
         ''),
        (1611743387000000000,
         1611743387000000000,
         'Letter of Resignation (director)',
         'share_transfer_request',
         'v1_share_transfer_letter_of_resig',
         'html',
         ''),
        (1611743387000000000,
         1611743387000000000,
         'Share Certificate (for transfer)',
         'share_transfer_request',
         'v1_share_transfer_share_cert',
         'html',
         '')
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM markdown_templates
 WHERE title IN (
     'Share Purchase Agreement',
     'Notice of Termination',
     'Letter of Resignation (director)',
     'Share Certificate (for transfer)'
 );

-- +goose StatementEnd
