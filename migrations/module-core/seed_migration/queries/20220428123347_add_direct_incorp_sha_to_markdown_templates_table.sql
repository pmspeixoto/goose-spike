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
         1596128708000000000,
         1596128708000000000,
         'Direct Incorporation SHA - JV',
         'direct_incorporation',
         'v1_direct_incorp_sha_jv',
         'html',
         ''),
         (1596128708000000000,
         1596128708000000000,
         'Direct Incorporation SHA - Sole',
         'direct_incorporation',
         'v1_direct_incorp_sha_sole',
         'html',
         ''
     )
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE
 FROM markdown_templates
 WHERE title IN ('Direct Incorporation SHA - JV', 'Direct Incorporation SHA - Sole');

-- +goose StatementEnd
