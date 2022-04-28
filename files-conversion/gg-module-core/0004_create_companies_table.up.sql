CREATE TABLE companies
  (
     id                          INT NOT NULL auto_increment,
     createdAt                   BIGINT,
     updatedAt                   BIGINT,
     deletedAt                   BIGINT,
     company_name                VARCHAR(255) UNIQUE,
     registration_number         VARCHAR(255),
     registered_address          INT,
     property_address            INT,
     share_cert_number_counter   INT NOT NULL DEFAULT 1,
     allotment_number_counter    INT NOT NULL DEFAULT 1,
     transfer_number_counter     INT NOT NULL DEFAULT 1,
     ordinary_share_count        INT NOT NULL DEFAULT 0,
     ordinary_share_price_in_gbp INT NOT NULL DEFAULT 1,
     CONSTRAINT PK_Company PRIMARY KEY (id),
     FOREIGN KEY (registered_address) REFERENCES addresses(id) ON DELETE CASCADE,
     FOREIGN KEY (property_address) REFERENCES addresses(id) ON DELETE CASCADE
  )
