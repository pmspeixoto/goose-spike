-- +goose Up
-- +goose StatementBegin
CREATE TABLE countries
   ( 
      id           INT NOT NULL auto_increment, 
      num_code     INT(3) NOT NULL DEFAULT 0, 
      alpha_2_code VARCHAR(2) DEFAULT NULL, 
      alpha_3_code VARCHAR(3) DEFAULT NULL, 
      country_name VARCHAR(52) DEFAULT NULL, 
      nationality  VARCHAR(39) DEFAULT NULL, 
      PRIMARY KEY (id), 
      UNIQUE KEY num_code (num_code), 
      UNIQUE KEY alpha_2_code (alpha_2_code), 
      UNIQUE KEY alpha_3_code (alpha_3_code) 
   );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS countries;
 

-- +goose StatementEnd
