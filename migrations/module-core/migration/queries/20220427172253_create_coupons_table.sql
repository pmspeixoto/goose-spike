-- +goose Up
-- +goose StatementBegin
CREATE TABLE `coupons`(
     id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
     created_at DATETIME NOT NULL,
     deleted_at DATETIME,
     coupon_type ENUM("free-company-incorporation", "fifty-pounds-off-incorp-14-days", "consultant-coupon") NOT NULL,
     setup_fee_in_cents INT,
     international_setup_fee_in_cents INT,
 
     consultant_id INT,
     FOREIGN KEY (consultant_id) REFERENCES consultants(id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE `coupons`;

-- +goose StatementEnd
