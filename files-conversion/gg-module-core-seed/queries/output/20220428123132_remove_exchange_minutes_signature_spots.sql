-- +goose Up
-- +goose StatementBegin
DELETE FROM signature_spots
   WHERE code='tz6toljtmpr3wm8gay6q'
   AND expected_signer='additional'
   AND markdown_template_version='v1123213';
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
INSERT INTO signature_spots (code, expected_signer, markdown_template_version)
   VALUES ('tz6toljtmpr3wm8gay6q','additional', 'v1123213');

-- +goose StatementEnd
