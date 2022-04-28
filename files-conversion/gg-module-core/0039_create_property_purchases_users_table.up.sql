CREATE TABLE property_purchases_users 
  (
     created_at              BIGINT,
     updated_at              BIGINT,
     deleted_at              BIGINT,
     property_purchase_id    INT NOT NULL,
     shareholder_id          INT NOT NULL,
     is_director             BOOLEAN,
     has_accepted            BOOLEAN NOT NULL default false,
     allocated_shares        INT UNSIGNED,
     token                   VARCHAR(255),
     is_existing_user        BOOLEAN,

     CONSTRAINT PK_Property_Purchases_Users PRIMARY KEY (property_purchase_id, shareholder_id),
     FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id) ON DELETE CASCADE,
     FOREIGN KEY (shareholder_id) REFERENCES users(id) ON DELETE CASCADE
  ) 
