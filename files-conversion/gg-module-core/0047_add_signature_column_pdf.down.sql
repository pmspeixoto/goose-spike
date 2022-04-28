ALTER TABLE signatures
  DROP COLUMN pdf_id,
  DROP COLUMN x,
  DROP COLUMN y,
  DROP COLUMN w,
  DROP COLUMN h,
  DROP COLUMN page,
  DROP FOREIGN KEY signatures_ibfk_3;
