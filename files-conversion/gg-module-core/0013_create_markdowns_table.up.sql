CREATE TABLE markdowns
  (
     id            INT NOT NULL auto_increment,
     template_version VARCHAR(255),
     createdAt     BIGINT,
     updatedAt     BIGINT,
     deletedAt     BIGINT,
     company_id    INT,
     markdown_text TEXT,
     signed_markdown_text TEXT,
     title         VARCHAR(255),
     category      VARCHAR(255),
     CONSTRAINT PK_Markdowns PRIMARY KEY (id),
     FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE,
     FOREIGN KEY (template_version) REFERENCES markdown_templates(version) ON DELETE CASCADE
  )
