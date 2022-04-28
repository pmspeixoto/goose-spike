Create TABLE pdfs
  (
     id            	INT NOT NULL auto_increment,
     createdAt     	BIGINT,
     updatedAt     	BIGINT,
     deletedAt     	BIGINT,
     data 		TEXT,
     location           VARCHAR(255) UNIQUE,
     description        VARCHAR(255),
     filename           VARCHAR(255),
     file_size_in_bytes BIGINT,
     category           TINYINT,
     title         	VARCHAR(255),
     company_id    	INT,
     CONSTRAINT PK_Pdf PRIMARY KEY (id),
     FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE
  )
