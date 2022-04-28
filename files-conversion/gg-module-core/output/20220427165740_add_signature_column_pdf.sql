-- +goose Up
-- +goose StatementBegin
ALTER TABLE signatures
   ADD COLUMN pdf_id INT,
   ADD COLUMN x VARCHAR(255),
   ADD COLUMN y VARCHAR(255),
   ADD COLUMN w VARCHAR(255),
   ADD COLUMN h VARCHAR(255),
   ADD COLUMN page VARCHAR(255),
   ADD FOREIGN KEY (pdf_id) REFERENCES pdfs(id);
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE signatures
   DROP COLUMN pdf_id,
   DROP COLUMN x,
   DROP COLUMN y,
   DROP COLUMN w,
   DROP COLUMN h,
   DROP COLUMN page,
   DROP FOREIGN KEY signatures_ibfk_3;

-- +goose StatementEnd
