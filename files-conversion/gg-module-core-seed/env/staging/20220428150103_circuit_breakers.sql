-- +goose Up
-- +goose StatementBegin
INSERT INTO circuit_breakers 
 (name, enabled, description) 
 VALUES 
 ('STARLING', 0, 'Disables starling'),
 ('COMPANIES_HOUSE', 0, 'Disables actions to companies house'),
 ('EXT_WALLET_SERVICE', 0, 'Disables calls to externally deployed wallet service');

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin

-- +goose StatementEnd
