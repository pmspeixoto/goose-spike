-- +goose Up
-- +goose StatementBegin
INSERT INTO circuit_breakers (
     name,
     enabled,
     description
 ) VALUES(
     "EXT_WALLET_SERVICE",
     true,
     "Disables calls to externally deployed wallet service"
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM circuit_breakers WHERE name = "EXT_WALLET_SERVICE"

-- +goose StatementEnd
