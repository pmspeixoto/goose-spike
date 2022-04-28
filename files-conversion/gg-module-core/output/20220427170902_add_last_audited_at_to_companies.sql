-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN last_audited_at BIGINT NOT NULL DEFAULT 0;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN last_audited_at;

-- +goose StatementEnd
