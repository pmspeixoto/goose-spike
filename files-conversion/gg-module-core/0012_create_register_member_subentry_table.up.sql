CREATE TABLE register_member_subentries 
  (
     id                       INT NOT NULL auto_increment,
     register_member_entry_id INT,
     createdAt               BIGINT,  
     updatedAt               BIGINT,  
     deletedAt               BIGINT,  
     date                     DATE,
     allotment_number         INT,
     transfer_number          INT,
     share_cert_number        INT,
     paid_or_unpaid           VARCHAR(20),
     num_acquired             INT,
     num_transferred          INT,
     remaining_balance        INT,
     remarks                  TEXT,
     CONSTRAINT PK_Company PRIMARY KEY (id),
     FOREIGN KEY (register_member_entry_id) REFERENCES register_member_entries(id)
     ON DELETE CASCADE
  ) 
