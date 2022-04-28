CREATE TABLE partners(
    id           INT          NOT NULL AUTO_INCREMENT,
    created_at   BIGINT       NOT NULL,
    updated_at   BIGINT       NOT NULL,
    deleted_at   BIGINT,
    partner_name VARCHAR(255) NOT NULL,
    partner_type VARCHAR(255) NOT NULL,

    PRIMARY KEY(id)
);