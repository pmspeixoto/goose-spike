-- +goose Up
-- +goose StatementBegin
ALTER TABLE pdfs
   MODIFY data JSON,
   ADD COLUMN signatures_data JSON;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE pdfs
   MODIFY data TEXT,
   DROP COLUMN signatures_data;

-- +goose StatementEnd
