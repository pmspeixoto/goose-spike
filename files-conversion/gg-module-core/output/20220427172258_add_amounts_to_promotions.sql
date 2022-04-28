-- +goose Up
-- +goose StatementBegin
ALTER TABLE promotions
     ADD COLUMN setup_fee_in_cents INT,
     ADD COLUMN international_setup_fee_in_cents INT,
     ADD COLUMN coupon_id INT,
     ADD FOREIGN KEY fk_promotions_coupon_id(coupon_id) REFERENCES coupons(id);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE promotions
     DROP FOREIGN KEY promotions_ibfk_2;
-- +goose StatementEnd
-- +goose StatementBegin
ALTER TABLE promotions
     DROP COLUMN setup_fee_in_cents,
     DROP COLUMN international_setup_fee_in_cents,
     DROP COLUMN coupon_id;
-- +goose StatementEnd
