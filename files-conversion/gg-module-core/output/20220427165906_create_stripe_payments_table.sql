-- +goose Up
-- +goose StatementBegin
CREATE TABLE stripe_payment_intents (
     id INT NOT NULL auto_increment PRIMARY KEY,
     created_at BIGINT NOT NULL,
     updated_at BIGINT NOT NULL,
     deleted_at BIGINT,
     amount INT NOT NULL,
     currency VARCHAR(255) NOT NULL,
     stripe_id VARCHAR(255) UNIQUE,
     idempotency_key VARCHAR(255) NOT NULL UNIQUE,
     status VARCHAR(255) NOT NULL,
     description VARCHAR(1023),
     property_purchase_id INT NOT NULL,
     FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id),
     INDEX(stripe_id),
     INDEX(idempotency_key)
 )
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE stripe_payment_intents;
-- +goose StatementEnd
