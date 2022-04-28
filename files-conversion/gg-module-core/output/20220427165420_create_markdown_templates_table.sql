-- +goose Up
-- +goose StatementBegin
CREATE TABLE markdown_templates
   (
      createdAt        BIGINT,
      updatedAt        BIGINT,
      deletedAt        BIGINT,
      previous_version VARCHAR(255),
      version          VARCHAR(255) UNIQUE NOT NULL,
      markdown_text    TEXT,
      title            VARCHAR(255),
      category         VARCHAR(255),
      CONSTRAINT PK_Markdown_Templates PRIMARY KEY (version)
   ) 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS markdown_templates;

-- +goose StatementEnd
