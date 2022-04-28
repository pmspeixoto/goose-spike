-- +goose Up
-- +goose StatementBegin
CREATE TRIGGER pdf_files_deprecation AFTER INSERT ON pdf_files
     FOR EACH ROW
 BEGIN
     UPDATE files SET pdf_id = NEW.pdf_id WHERE id = NEW.file_id;
 END;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TRIGGER pdf_files_deprecation;

-- +goose StatementEnd
