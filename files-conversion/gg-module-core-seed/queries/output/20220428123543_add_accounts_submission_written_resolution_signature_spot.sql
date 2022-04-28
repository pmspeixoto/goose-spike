-- +goose Up
-- +goose StatementBegin
INSERT INTO signature_spots
 (markdown_template_version,
  code,
  expected_signer)
 VALUES (
            'v1_accounts_submission_written_resolution',
            '4B2o0GTt8NTWWv',
            'shareholders'
        );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM signature_spots
 WHERE code = '4B2o0GTt8NTWWv';
-- +goose StatementEnd
