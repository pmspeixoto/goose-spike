-- +goose Up
-- +goose StatementBegin
CREATE TABLE signatures
   (
      id                      INT NOT NULL auto_increment,
      created_at              BIGINT,
      updated_at              BIGINT,
      deleted_at              BIGINT,
 
      -- x_in_px                    INT,
      -- y_in_px                    INT,
      code                       VARCHAR(255),
 
      markdown_id             INT,
      signer_id               INT,
      signed_timestamp        BIGINT,
      signed_hash             VARCHAR(255),
 
      FOREIGN KEY (markdown_id) REFERENCES markdowns(id),
      FOREIGN KEY (signer_id) REFERENCES users(id),
      CONSTRAINT PK_Signatures PRIMARY KEY (id)
   )

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS signatures;

-- +goose StatementEnd
