-- +goose Up
-- +goose StatementBegin
ALTER TABLE webfilings
     MODIFY created_at BIGINT NOT NULL,
     ADD COLUMN updated_at BIGINT NOT NULL
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE webfilings
     MODIFY created_at TIMESTAMP NOT NULL,
     DROP COLUMN updated_at
 ;

-- +goose StatementEnd
