CREATE TRIGGER pdf_files_deprecation AFTER INSERT ON pdf_files
    FOR EACH ROW
BEGIN
    UPDATE files SET pdf_id = NEW.pdf_id WHERE id = NEW.file_id;
END;
