-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     DROP ct600_accepted_at,
     DROP FOREIGN KEY fk_ct600_files,
     CHANGE ct600_file_id ct600_dms_id INT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     CHANGE ct600_dms_id ct600_file_id INT,
     ADD ct600_accepted_at DATETIME,
     ADD CONSTRAINT fk_ct600_files FOREIGN KEY (ct600_file_id) REFERENCES files(id);
-- +goose StatementEnd
