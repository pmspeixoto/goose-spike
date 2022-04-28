-- +goose Up
-- +goose StatementBegin
ALTER TABLE pdfs
   ADD COLUMN version VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE pdfs
   DROP COLUMN version;

-- +goose StatementEnd
