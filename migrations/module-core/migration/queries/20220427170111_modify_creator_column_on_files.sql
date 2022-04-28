-- +goose Up
-- +goose StatementBegin
ALTER TABLE files
     MODIFY creator INT NULL;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files
     MODIFY creator INT NOT NULL;
-- +goose StatementEnd
