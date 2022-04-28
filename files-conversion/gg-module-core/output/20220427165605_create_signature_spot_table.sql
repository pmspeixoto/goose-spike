-- +goose Up
-- +goose StatementBegin
CREATE TABLE signature_spots
   (
      id                     INT NOT NULL auto_increment,
      created_at              BIGINT,
      updated_at              BIGINT,
      deleted_at              BIGINT,
 
      markdown_template_version  VARCHAR(255),
      -- x_in_px                    INT,
      -- y_in_px                    INT,
      code                       VARCHAR(255),
      expected_signer            VARCHAR(255),
 
      FOREIGN KEY (markdown_template_version) REFERENCES markdown_templates(version),
      CONSTRAINT PK_Signature_Spots PRIMARY KEY (id)
   )

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS signature_spots;

-- +goose StatementEnd
