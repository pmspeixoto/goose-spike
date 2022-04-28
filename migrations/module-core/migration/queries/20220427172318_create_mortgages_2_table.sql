-- +goose Up
-- +goose StatementBegin
CREATE TABLE mortgages_2 (
     id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
     created_at DATETIME NOT NULL,
     updated_at DATETIME NOT NULL,
     deleted_at DATETIME NULL,
     user_id INT NOT NULL,
     company_id INT NULL UNIQUE,
     mortgage_amount_in_cents BIGINT NOT NULL,
     deposit_amount_in_cents BIGINT NOT NULL,
     property_price_in_cents BIGINT NOT NULL,
     requires_remortgage BOOLEAN NOT NULL,
     resides_in_uk BOOLEAN NOT NULL,
     stage_in_property_search VARCHAR(255) NOT NULL,
     situation TEXT NULL,
     phone_number VARCHAR(255) NOT NULL,
 
     FOREIGN KEY (user_id) REFERENCES users(id),
     FOREIGN KEY (company_id) REFERENCES companies(id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE mortgages_2;
-- +goose StatementEnd
