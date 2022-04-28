-- +goose Up
-- +goose StatementBegin
CREATE TABLE property_purchase_tags
 (
     created_at BIGINT NOT NULL,
     deleted_at BIGINT,
     tag varchar(255) NOT NULL,
     property_purchase_id INT NOT NULL,
 
     CONSTRAINT PK_Tags_Property_Purchases PRIMARY KEY (property_purchase_id, tag),
     FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id) ON DELETE CASCADE
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE property_purchase_tags;

-- +goose StatementEnd
