ALTER TABLE markdowns
    ADD COLUMN document_type VARCHAR(255) DEFAULT 'markdown' NOT NULL;
