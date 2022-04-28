-- +goose Up
-- +goose StatementBegin
ALTER TABLE analytics_property_purchases
     MODIFY id INT auto_increment,
     ADD COLUMN property_id INT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE analytics_property_purchases
     MODIFY id INT NOT NULL,
     DROP COLUMN property_id;
-- +goose StatementEnd
