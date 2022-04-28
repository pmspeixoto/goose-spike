-- +goose Up
-- +goose StatementBegin
CREATE TRIGGER markdown_files_deprecation AFTER INSERT ON markdown_files
     FOR EACH ROW
 BEGIN
     UPDATE files SET markdown_id = NEW.markdown_id WHERE id = NEW.file_id;
 END;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TRIGGER markdown_files_deprecation;

-- +goose StatementEnd
