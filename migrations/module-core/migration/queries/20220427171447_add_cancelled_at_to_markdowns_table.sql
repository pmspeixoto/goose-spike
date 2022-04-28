-- +goose Up
-- +goose StatementBegin
ALTER TABLE markdowns
     ADD COLUMN cancelled_at BIGINT
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE markdowns
     DROP COLUMN cancelled_at
 ;

-- +goose StatementEnd
