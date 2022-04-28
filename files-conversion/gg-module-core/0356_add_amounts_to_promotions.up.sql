ALTER TABLE promotions
    ADD COLUMN setup_fee_in_cents INT,
    ADD COLUMN international_setup_fee_in_cents INT,
    ADD COLUMN coupon_id INT,
    ADD FOREIGN KEY fk_promotions_coupon_id(coupon_id) REFERENCES coupons(id);
