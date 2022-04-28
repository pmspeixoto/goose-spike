CREATE TABLE register_member_entries  
  (
     id                      INT NOT NULL auto_increment,
     createdAt              BIGINT,  
     updatedAt              BIGINT,  
     deletedAt              BIGINT,  
     company_id              INT,
     corporate_subscriber_id INT,
     natural_subscriber_id   INT,
     share_class             VARCHAR(20),
     denomination            INT,
     date_of_entry           DATE,
     date_of_ceasing         DATE,
     date_became_registrable DATE,
     balance                 INT DEFAULT 0,
     CONSTRAINT PK_Company PRIMARY KEY (id),
     FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE,
     FOREIGN KEY (corporate_subscriber_id) REFERENCES companies(id) ON DELETE
     CASCADE,
     FOREIGN KEY (natural_subscriber_id) REFERENCES users(id) ON DELETE CASCADE
  ) 
