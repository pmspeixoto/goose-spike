-- +goose Up
-- +goose StatementBegin
CREATE TABLE external_companies
   ( 
      id                         INT NOT NULL auto_increment, 
      createdAt                  BIGINT, 
      updatedAt                  BIGINT, 
      deletedAt                  BIGINT, 
      company_name               VARCHAR(255), 
      registration_number        VARCHAR(255), 
      registered_address         INT, 
      country_of_registration_id INT, 
      register_used              VARCHAR(255), 
      legal_form                 VARCHAR(255), 
      governing_law              VARCHAR(255), 
      CONSTRAINT PK_External_Company PRIMARY KEY (id), 
      FOREIGN KEY (registered_address) REFERENCES addresses(id) ON DELETE CASCADE, 
      FOREIGN KEY (country_of_registration_id) REFERENCES countries(id) ON DELETE CASCADE 
   ) 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS external_companies;

-- +goose StatementEnd
