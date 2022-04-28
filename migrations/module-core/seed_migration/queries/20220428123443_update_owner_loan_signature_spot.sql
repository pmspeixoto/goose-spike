-- +goose Up
-- +goose StatementBegin
UPDATE signature_spots
 SET expected_signer = "any_director"
 WHERE code='j3sy4ye766724324';

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE signature_spots
 SET expected_signer = "primary"
 WHERE code='j3sy4ye766724324';

-- +goose StatementEnd
