-- +goose Up
-- +goose StatementBegin
ALTER TABLE files
   CHANGE file_type mime_type VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files
   CHANGE mime_type file_type VARCHAR(255);

-- +goose StatementEnd
