CREATE TABLE documents_companies 
  (
     createdAt   BIGINT,  
     updatedAt   BIGINT,  
     deletedAt   BIGINT,  
     document_id INT NOT NULL,
     company_id  INT NOT NULL,
     CONSTRAINT PK_Documents_Companies PRIMARY KEY (document_id, company_id),
     FOREIGN KEY (document_id) REFERENCES documents(id) ON DELETE CASCADE,
     FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE
  ) 
