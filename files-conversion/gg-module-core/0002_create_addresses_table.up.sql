CREATE TABLE addresses
  ( 
     id           INT NOT NULL auto_increment, 
     createdAt    BIGINT,  
     updatedAt    BIGINT,  
     deletedAt    BIGINT,  
     premise      VARCHAR(255), 
     street       VARCHAR(255), 
     thoroughfare VARCHAR(255), 
     posttown     VARCHAR(255),  
     postcode     VARCHAR(255), 
     country      INT, 
     FOREIGN KEY (country) REFERENCES countries(id), 
     CONSTRAINT PK_Address PRIMARY KEY (id)  
  );
