-- +goose Up
-- +goose StatementBegin
INSERT INTO signature_spots
 (markdown_template_version,
  code,
  expected_signer)
 VALUES (
            -- Stock Transfer Form
            'v1_stock_transfer_form',
            'gpIQgaIqo0jNUiUn',
            'seller'),
        (
            -- Stock Transfer Form
            'v1_stock_transfer_form',
            'lNeq3B2npwSQgwVb',
            'seller')
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE
 FROM signature_spots
 WHERE markdown_template_version IN (
     'v1_stock_transfer_form'
     );
-- +goose StatementEnd
