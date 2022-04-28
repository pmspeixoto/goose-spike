ALTER TABLE pdfs
  MODIFY data TEXT,
  DROP COLUMN signatures_data;
