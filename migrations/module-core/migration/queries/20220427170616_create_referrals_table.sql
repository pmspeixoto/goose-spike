-- +goose Up
-- +goose StatementBegin
CREATE TABLE referrals
 (
     id                   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
     created_at           BIGINT       NOT NULL,
     updated_at           BIGINT       NOT NULL,
     deleted_at           BIGINT,
     consultant_id        INT          NOT NULL,
     consultant_name      VARCHAR(255) NOT NULL,
     partner_id           INT          NOT NULL,
     partner_name         VARCHAR(255) NOT NULL,
     property_address     VARCHAR(255) NOT NULL,
     property_purchase_id INT          NOT NULL,
     company_id           INT,
     status               VARCHAR(255) NOT NULL,
     payments_due         BOOLEAN      NOT NULL,
     is_paid              BOOLEAN      NOT NULL
 );
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE referrals;
-- +goose StatementEnd
