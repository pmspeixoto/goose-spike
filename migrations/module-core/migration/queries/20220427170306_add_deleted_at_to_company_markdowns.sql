-- +goose Up
-- +goose StatementBegin
ALTER TABLE company_markdowns
     ADD COLUMN deleted_at BIGINT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE company_markdowns
     DROP COLUMN deleted_at;
-- +goose StatementEnd
