-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN status VARCHAR(255) DEFAULT 'UNINCORPORATED' NOT NULL,
     ADD INDEX (status);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN status;

-- +goose StatementEnd
