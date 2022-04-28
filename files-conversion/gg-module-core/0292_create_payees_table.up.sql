CREATE TABLE payees
(
    id              INT             NOT NULL PRIMARY KEY auto_increment,
    company_id      INT             NOT NULL,
    name            VARCHAR(255)    NOT NULL,
    account_number  VARCHAR(10)     NOT NULL,
    sort_code       VARCHAR(6)      NOT NULL,
    last_used_at    BIGINT          NOT NULL,
    created_at      BIGINT          NOT NULL,
    updates_at      BIGINT          NOT NULL,
    deleted_at      BIGINT          DEFAULT NULL,
    CONSTRAINT fk_company_payees FOREIGN KEY (company_id)REFERENCES companies(id),
    CONSTRAINT      unique_payee    UNIQUE (company_id, name, account_number, sort_code)
);
