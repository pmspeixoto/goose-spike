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
 	-- pfs terms
 	'v1_pfs_terms',
 	'nFZYwDI31U6XjO',
 	'primary'
 ),
 (
 	-- pfs terms
 	'v1_pfs_terms',
 	'LcN7mA75ax0vFS',
 	'additional'
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM signature_spots
 WHERE markdown_template_version='v1_pfs_terms'
   AND code IN ('nFZYwDI31U6XjO', 'LcN7mA75ax0vFS');
-- +goose StatementEnd
