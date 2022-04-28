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
   -- Direct Incorporation Resolutions - Sole
   'v1_direct_incorp_resolutions_sole',
   '7EXGBtEYayK1WuP3',
   'primary'
 ),
 (
   -- Direct Incorporation Resolutions - JV
   'v1_direct_incorp_resolutions_jv',
   'atTAmEzFsDYFgzEI',
   'shareholders'
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM signature_spots
 WHERE
   markdown_template_version IN
 (
 	'v1_direct_incorp_resolutions_sole',
 	'v1_direct_incorp_resolutions_jv');

-- +goose StatementEnd
