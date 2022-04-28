ALTER TABLE promotions
    DROP COLUMN setup_fee_in_cents,
    DROP COLUMN international_setup_fee_in_cents,
    DROP COLUMN coupon_id
    DROP FOREIGN KEY fk_promotions_coupon_id;