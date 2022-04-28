CREATE TABLE mortgages
(
    id                            INT     NOT NULL PRIMARY KEY auto_increment,
    created_at                    BIGINT  NOT NULL,
    updated_at                    BIGINT  NOT NULL,
    deleted_at                    BIGINT,
    user_id                       INT     NOT NULL,
    company_id                    INT     NOT NULL,
    submitted_at                  BIGINT,
    requested_amount_in_cents     INT     NOT NULL,
    annual_income_in_cents        INT     NOT NULL,
    uk_properties_count           INT     NOT NULL,
    uk_mortgaged_properties_count INT     NOT NULL,
    address_history               JSON,
    right_to_reside_uk            BOOLEAN NOT NULL,
    bankrupt_or_iva               BOOLEAN NOT NULL,
    bankrupt_or_iva_details       TEXT,
    referred_at                   BIGINT,

    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (company_id) REFERENCES companies (id)
);
