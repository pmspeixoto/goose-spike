ALTER TABLE pdfs
  MODIFY data JSON,
  ADD COLUMN signatures_data JSON;
