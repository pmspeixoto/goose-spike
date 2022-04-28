-- +goose Up
-- +goose StatementBegin
CREATE TABLE uk_property_data (
     id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
     uploaded_at DATETIME NOT NULL,
     deleted_at DATETIME NULL,
     area VARCHAR(255) NOT NULL,
     rental_yield FLOAT NOT NULL,
     one_year_capital_gain FLOAT NOT NULL,
     rental_dwellings FLOAT NOT NULL
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE uk_property_data;

-- +goose StatementEnd
