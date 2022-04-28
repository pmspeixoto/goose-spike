-- +goose Up
-- +goose StatementBegin
ALTER TABLE files
     ADD COLUMN markdown_id INT NULL,
     ADD COLUMN pdf_id INT NULL
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files
     DROP COLUMN markdown_id,
     DROP COLUMN pdf_id
 ;

-- +goose StatementEnd
