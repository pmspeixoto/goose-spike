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
 	-- pfs onboarding
 	'v1_pfs_onboarding',
 	'kWSiLDa6BIDXs8',
 	'primary'
 ),
 (
 	-- pfs onboarding
 	'v1_pfs_onboarding',
 	'OaCqgAZk723GIk',
 	'additional'
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM signature_spots
   WHERE markdown_template_version='v1'
   AND code IN ('kWSiLDa6BIDXs8', 'OaCqgAZk723GIk');

-- +goose StatementEnd
