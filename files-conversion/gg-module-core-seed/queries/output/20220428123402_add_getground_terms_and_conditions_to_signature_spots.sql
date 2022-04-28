-- +goose Up
-- +goose StatementBegin
INSERT INTO signature_spots
     (
          markdown_template_version,
          code,
          expected_signer
     )
 VALUES
     (
         -- Getground terms and conditions
         'v1_getground_terms',
         '7DG8grU0VRpaCRCS',
         'shareholders'
     ),
     (
         -- Getground terms and conditions
         'v1_getground_terms',
         'zc1na8QsZtN30rYj',
         'any_director'
     );
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE
 FROM signature_spots
 WHERE markdown_template_version = 'v1_getground_terms';

-- +goose StatementEnd
