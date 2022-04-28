-- +goose Up
-- +goose StatementBegin
ALTER TABLE markdown_templates
     ADD COLUMN document_type VARCHAR(255) DEFAULT 'markdown' NOT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE markdown_templates
     DROP COLUMN document_type;

-- +goose StatementEnd
