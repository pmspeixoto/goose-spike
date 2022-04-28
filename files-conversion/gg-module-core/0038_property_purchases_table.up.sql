CREATE TABLE property_purchases 
  (
     id                      INT NOT NULL auto_increment,
     created_at              BIGINT,
     updated_at              BIGINT,
     deleted_at              BIGINT,
     confirmed_time          BIGINT,
     creator_id              INT NOT NULL,
     property_address        JSON,
     purchase_details        JSON,
     shareholder_details     JSON,
     tax_questions           JSON,
     additional_services     JSON,
     CONSTRAINT PK_Property_Purchase PRIMARY KEY (id),
     FOREIGN KEY (creator_id) REFERENCES users(id) ON DELETE CASCADE
  ) 

