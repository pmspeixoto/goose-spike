-- +goose Up
-- +goose StatementBegin
UPDATE signature_spots
 SET expected_signer = "shareholders"
 WHERE code='11ca424d8f10GJ';

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE signature_spots
 SET expected_signer = "primary"
 WHERE code='11ca424d8f10GJ';

-- +goose StatementEnd
