-- +goose Up
-- +goose StatementBegin
CREATE TABLE directorships 
   (
      id                           INT NOT NULL auto_increment,
      createdAt                    BIGINT,  
      updatedAt                    BIGINT,  
      deletedAt                    BIGINT,  
      host_company_name            VARCHAR(255) NOT NULL,
      host_internal_company_id     INT,
      host_external_company_id     INT,
      authority                    TEXT,
      director_user_id             INT NOT NULL,
      director_internal_company_id INT,
      director_external_company_id INT,
      date_of_appointment          DATE,
      date_of_ceasing              DATE,
      CONSTRAINT PK_Directorships PRIMARY KEY (id),
      FOREIGN KEY (director_user_id) REFERENCES users(id) ON DELETE CASCADE,
      FOREIGN KEY (host_internal_company_id) REFERENCES companies(id) ON DELETE
      CASCADE,
      FOREIGN KEY (host_external_company_id) REFERENCES external_companies(id) ON
      DELETE CASCADE,
      FOREIGN KEY (director_internal_company_id) REFERENCES companies(id) ON DELETE
      CASCADE,
      FOREIGN KEY (director_external_company_id) REFERENCES external_companies(id)
      ON DELETE CASCADE
   ) 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS directorships;

-- +goose StatementEnd
