-- +goose Up
-- +goose StatementBegin
DELETE
 FROM signature_spots
 WHERE markdown_template_version = 'v1_direct_incorporation_share_certficate'
 AND code ='pLVPY2Ho2yeK1B2e'
 AND expected_signer='primary';

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
INSERT INTO signature_spots
     (
          markdown_template_version,
          code,
          expected_signer
     )
 VALUES
     (
         -- Direct Incorp Share Cert
         'v1_direct_incorporation_share_certficate',
         'pLVPY2Ho2yeK1B2e',
         'primary'
     );

-- +goose StatementEnd
