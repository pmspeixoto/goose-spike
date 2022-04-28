-- +goose Up
-- +goose StatementBegin
INSERT INTO signature_spots
 (markdown_template_version,
  code,
  expected_signer)
 VALUES (
            'v1_change_request_written_resolution',
            'UaSt4uKT2FbUMd',
            'directors'
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE
 FROM signature_spots
 WHERE markdown_template_version IN (
     'v1_change_request_written_resolution'
     );

-- +goose StatementEnd
