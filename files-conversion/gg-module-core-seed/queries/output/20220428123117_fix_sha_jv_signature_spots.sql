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
   -- Shareholder's Loan
   'dummycccc2',
   'k5200hfzx4ddbrdi',
   'primary'
 )
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM signature_spots
 WHERE
   markdown_template_version = 'dummycccc2'
   AND code = 'k5200hfzx4ddbrdi'
   AND expected_signer = 'primary'
 ;

-- +goose StatementEnd
