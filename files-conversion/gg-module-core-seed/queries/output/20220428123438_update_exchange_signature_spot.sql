-- +goose Up
-- +goose StatementBegin
UPDATE signature_spots
 SET expected_signer = "shareholders"
 WHERE code='8qb9bls2mk62gr64ytbl';

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE signature_spots
 SET expected_signer = "primary"
 WHERE code='8qb9bls2mk62gr64ytbl';

-- +goose StatementEnd
