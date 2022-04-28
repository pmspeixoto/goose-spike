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
 	-- Terms modulr
 	'v1_modulr_terms',
 	'11ca424d8f10GJ',
 	'primary'
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM signature_spots
   WHERE markdown_template_version='v1'
   AND code='11ca424d8f10GJ'
   AND expected_signer='primary';

-- +goose StatementEnd
