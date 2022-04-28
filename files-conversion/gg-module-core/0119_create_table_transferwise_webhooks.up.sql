CREATE TABLE transferwise_webhooks (
    id              INT NOT NULL auto_increment,
    created_at      BIGINT NOT NULL,
    updated_at      BIGINT NOT NULL,
    raw_json        JSON NOT NULL,
    account_id      INT NOT NULL,
    currency        VARCHAR(255) NOT NULL,
    amount_in_cents INT NOT NULL,
    occurred_at     BIGINT NOT NULL,
    status          VARCHAR(255) NOT NULL DEFAULT 'UNPROCESSED',
    transaction_id  INT,
    PRIMARY KEY (id)
);
