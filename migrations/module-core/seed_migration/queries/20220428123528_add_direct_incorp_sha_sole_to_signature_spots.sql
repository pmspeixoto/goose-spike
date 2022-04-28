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
     -- Direct Incorporation SHA - Sole
     'v1_direct_incorp_sha_sole',
     'bDfzMhGtX9djUHTW',
     'primary'
 )
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM signature_spots
 WHERE code = 'bDfzMhGtX9djUHTW';

-- +goose StatementEnd
