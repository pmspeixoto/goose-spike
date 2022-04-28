CREATE TABLE mortgages_decisions_in_principle
(
    id                      INT          NOT NULL PRIMARY KEY auto_increment,
    created_at              BIGINT       NOT NULL,
    updated_at              BIGINT       NOT NULL,
    deleted_at              BIGINT,
    company_id              INT          NOT NULL,
    received_at             DATE         NOT NULL,
    lender                  VARCHAR(255) NOT NULL,
    rate                    VARCHAR(255),
    rate_type               VARCHAR(255),
    fee_in_cents            INT,
    fee_type                VARCHAR(255),
    product                 VARCHAR(255),
    loan_amount_in_cents    INT          NOT NULL,
    property_price_in_cents INT          NOT NULL,
    repayment_type          VARCHAR(255) NOT NULL,
    mortgage_term_years     INT          NOT NULL,
    initial_fixed_period    VARCHAR(255) NOT NULL,
    validity                VARCHAR(255) NOT NULL,

    FOREIGN KEY (company_id) REFERENCES companies (id)
);
