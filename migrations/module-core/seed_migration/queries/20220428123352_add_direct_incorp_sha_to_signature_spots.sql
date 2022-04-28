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
         -- Direct Incorporation SHA - JV
         'v1_direct_incorp_sha_jv',
         'BA6MhV3Us8PQVg4O',
         'shareholders'
     ),
     (
         -- Direct Incorporation SHA - JV
         'v1_direct_incorp_sha_jv',
         'XPoj6NnzkAo6Lj3v',
         'any_director'
     ),
     (
         -- Direct Incorporation SHA - Sole
         'v1_direct_incorp_sha_sole',
         'dch44Wwi9aWhYDGV',
         'primary'
     )
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE
 FROM signature_spots
 WHERE markdown_template_version IN
       (
        'v1_direct_incorp_sha_jv',
        'v1_direct_incorp_sha_sole'
       )
 ;

-- +goose StatementEnd
