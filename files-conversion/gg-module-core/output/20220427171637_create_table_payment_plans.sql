-- +goose Up
-- +goose StatementBegin
CREATE TABLE IF NOT EXISTS payment_plans
 (
     id                      INT         NOT NULL AUTO_INCREMENT,
     `key`                   VARCHAR(45) NOT NULL                 COMMENT 'ENUM',
     amount_exc_vat_in_cents BIGINT      NOT NULL,
     vat_in_cents            BIGINT      NOT NULL,
     currency                VARCHAR(45) NOT NULL                 COMMENT 'ENUM',
     frequency               VARCHAR(45) NOT NULL                 COMMENT 'ENUM',
     created_at              BIGINT      NOT NULL,
     updated_at              BIGINT      NOT NULL,
     deleted_at              BIGINT      NULL                     COMMENT 'Helps avoid being selected in query',
     PRIMARY KEY (id),
     UNIQUE KEY key_deleted_at (`key`, deleted_at)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS payment_plans;

-- +goose StatementEnd
