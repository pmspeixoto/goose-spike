-- +goose Up
-- +goose StatementBegin
CREATE TABLE documents_users 
   (
      createdAt   BIGINT,  
      updatedAt   BIGINT,  
      deletedAt   BIGINT,  
      document_id INT NOT NULL,
      user_id     INT NOT NULL,
      CONSTRAINT PK_Documents_Users PRIMARY KEY (document_id, user_id),
      FOREIGN KEY (document_id) REFERENCES documents(id) ON DELETE CASCADE,
      FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
   ) 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS documents_users;

-- +goose StatementEnd
