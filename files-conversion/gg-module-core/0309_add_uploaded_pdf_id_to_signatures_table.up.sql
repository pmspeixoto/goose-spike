ALTER TABLE signatures
    ADD uploaded_pdf_id INT NULL,
    ADD CONSTRAINT fk_signatures_uploaded_pdf FOREIGN KEY (uploaded_pdf_id) REFERENCES uploaded_pdfs(id);