ALTER TABLE signatures
    DROP uploaded_pdf_id,
    DROP FOREIGN KEY fk_signatures_uploaded_pdf;