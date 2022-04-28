CREATE TABLE additional_services
(
    id                   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at           BIGINT       NOT NULL,
    updated_at           BIGINT       NOT NULL,
    deleted_at           BIGINT,
    service_type         VARCHAR(255) NOT NULL,
    property_purchase_id INT          NOT NULL,
    referral_id          INT,
    FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id)
);
