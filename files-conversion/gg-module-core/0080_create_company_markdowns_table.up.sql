CREATE TABLE company_markdowns
(
    company_id  INT NOT NULL,
    markdown_id INT NOT NULL,

    CONSTRAINT pk_company_markdowns PRIMARY KEY (company_id, markdown_id),
    FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE
)