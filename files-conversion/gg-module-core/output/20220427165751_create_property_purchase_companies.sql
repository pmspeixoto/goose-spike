-- +goose Up
-- +goose StatementBegin
CREATE TABLE property_purchase_companies 
   (
      createdAt   BIGINT,  
      updatedAt   BIGINT,  
      deletedAt   BIGINT,  
      property_purchase_id INT NOT NULL,
      company_id     INT NOT NULL,
      CONSTRAINT PK_Property_Purchase_Companies PRIMARY KEY (property_purchase_id, company_id),
      FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id) ON DELETE CASCADE,
      FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE
   ) 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS property_purchase_companies;

-- +goose StatementEnd
