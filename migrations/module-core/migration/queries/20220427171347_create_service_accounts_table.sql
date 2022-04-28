-- +goose Up
-- +goose StatementBegin
CREATE TABLE service_accounts
   (
      id                     INT NOT NULL auto_increment,
      created_at              BIGINT,
      updated_at              BIGINT,
      deleted_at              BIGINT,
      email                  VARCHAR(255),
      CONSTRAINT PK_ServiceAccounts PRIMARY KEY (id),
      UNIQUE (email)
   )

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS service_accounts;

-- +goose StatementEnd
