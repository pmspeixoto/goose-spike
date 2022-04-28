-- +goose Up
-- +goose StatementBegin
ALTER TABLE pdfs
   ADD COLUMN event_type VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE pdfs
   DROP COLUMN event_type;

-- +goose StatementEnd
