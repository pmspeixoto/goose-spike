-- +goose Up
-- +goose StatementBegin
CREATE TABLE markdown_files
 (
    markdown_id INT NOT NULL,
    file_id INT NOT NULL,
 
    CONSTRAINT pk_markdown_files PRIMARY KEY (markdown_id, file_id),
    FOREIGN KEY (markdown_id) REFERENCES markdowns(id) ON DELETE CASCADE,
    FOREIGN KEY (file_id) REFERENCES files(id) ON DELETE CASCADE
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE markdown_files;

-- +goose StatementEnd
