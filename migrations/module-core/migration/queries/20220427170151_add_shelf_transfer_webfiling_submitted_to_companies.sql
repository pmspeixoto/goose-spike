-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN shelf_transfer_webfiling_submitted BOOLEAN NOT NULL DEFAULT FALSE;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN shelf_transfer_webfiling_submitted;
-- +goose StatementEnd
