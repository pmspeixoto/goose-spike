CREATE TABLE starling_webhooks
(
    id              INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at      BIGINT        NOT NULL,
    updated_at      BIGINT        NOT NULL,
    deleted_at      BIGINT,
    timestamp       BIGINT,
    webhook_type    VARCHAR(255),
    amount          VARCHAR(255),
    counter_party   VARCHAR(255),
    reference       VARCHAR(255),
    source_amount   VARCHAR(255),
    source_currency VARCHAR(255),
    content_type    VARCHAR(255),
    data            JSON          NOT NULL
);