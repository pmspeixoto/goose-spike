-- +goose Up
-- +goose StatementBegin
ALTER TABLE files
     DROP FOREIGN KEY files_ibfk_1;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files
     ADD CONSTRAINT files_ibfk_1
         FOREIGN KEY (creator) REFERENCES users(id);
-- +goose StatementEnd
