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
   'dummybbb8',
   'j3sy4ye766724324',
   'primary_landlord'
 )
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM signature_spots
 WHERE
   markdown_template_version = 'dummybbb8'
   AND code = 'j3sy4ye766724324'
   AND expected_signer = 'primary_landlord';

-- +goose StatementEnd
