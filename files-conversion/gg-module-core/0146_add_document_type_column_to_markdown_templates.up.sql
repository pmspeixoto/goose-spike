ALTER TABLE markdown_templates
    ADD COLUMN document_type VARCHAR(255) DEFAULT 'markdown' NOT NULL;
