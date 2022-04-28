CREATE TRIGGER markdown_files_deprecation AFTER INSERT ON markdown_files
    FOR EACH ROW
BEGIN
    UPDATE files SET markdown_id = NEW.markdown_id WHERE id = NEW.file_id;
END;
