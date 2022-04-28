ALTER TABLE signatures
    ADD COLUMN company_id INT NOT NULL,
    ADD FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE;
