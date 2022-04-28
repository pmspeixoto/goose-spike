-- +goose Up
-- +goose StatementBegin
CREATE TABLE withdrawals
 (
     id INT NOT NULL PRIMARY KEY auto_increment,
     wallet_id INT NOT NULL,
     reference VARCHAR(255) NOT NULL,
     amount VARCHAR(255) NOT NULL,
     status VARCHAR(255) NOT NULL,
     created_at BIGINT NOT NULL,
     updated_at BIGINT NOT NULL,
     INDEX (wallet_id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE withdrawals;
-- +goose StatementEnd
