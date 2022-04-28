-- +goose Up
-- +goose StatementBegin
INSERT INTO signature_spots
 (markdown_template_version,
  code,
  expected_signer)
 VALUES (
            'v1_accounts_submission_member_consent',
            '2xEnWIJpJ08t7e4d',
            'directors'
        );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM signature_spots
 WHERE code = '2xEnWIJpJ08t7e4d';

-- +goose StatementEnd
