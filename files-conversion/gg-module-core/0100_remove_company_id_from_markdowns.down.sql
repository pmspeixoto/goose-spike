ALTER TABLE markdowns ADD COLUMN company_id INT, ADD FOREIGN KEY (company_id) REFERENCES companies(id)
   ON
       DELETE
       CASCADE;