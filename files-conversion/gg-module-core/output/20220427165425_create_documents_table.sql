-- +goose Up
-- +goose StatementBegin
CREATE TABLE documents
   (
      id                 INT NOT NULL auto_increment,
      createdAt          BIGINT, 
      updatedAt          BIGINT, 
      deletedAt          BIGINT, 
      location           VARCHAR(255) UNIQUE,
      description        VARCHAR(255),
      filename           VARCHAR(255),
      file_size_in_bytes BIGINT,
      category           TINYINT,
      creator            INT NOT NULL,
      onfido_document_id VARCHAR(255),
      CONSTRAINT PK_Document PRIMARY KEY (id),
      FOREIGN KEY (creator) REFERENCES users(id) ON DELETE CASCADE
   ) 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS documents;

-- +goose StatementEnd
