CREATE TABLE company_pdfs
(
    company_id  INT NOT NULL,
    pdf_id INT NOT NULL,

    CONSTRAINT pk_company_pdfs PRIMARY KEY (company_id, pdf_id),
    FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE
)
