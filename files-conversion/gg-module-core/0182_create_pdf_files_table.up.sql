CREATE TABLE pdf_files
(
   pdf_id INT NOT NULL,
   file_id INT NOT NULL,

   CONSTRAINT pk_pdf_files PRIMARY KEY (pdf_id, file_id),
   FOREIGN KEY (pdf_id) REFERENCES pdfs(id) ON DELETE CASCADE,
   FOREIGN KEY (file_id) REFERENCES files(id) ON DELETE CASCADE
);
