-- +goose Up
-- +goose StatementBegin
CREATE TABLE transfer_requests 
   (
      id                     INT NOT NULL auto_increment,
      created_at              BIGINT,
      updated_at              BIGINT,
      deleted_at              BIGINT,
 
      subscribers 						JSON,
      directors 							JSON,
      extra_data							JSON,
      
      company_id 						INT,
      date_of_transfer 		  DATE,	
 
      CONSTRAINT PK_Transfer_Request PRIMARY KEY (id),
      FOREIGN KEY (company_id) REFERENCES companies(id)
   ) 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS transfer_requests; 

-- +goose StatementEnd
