-- +goose Up
-- +goose StatementBegin
UPDATE signature_spots
   set expected_signer = "shareholders"
   where markdown_template_version= "v1123213";

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE signature_spots
   set expected_signer = "primary"
   where markdown_template_version= "v1123213";

-- +goose StatementEnd
