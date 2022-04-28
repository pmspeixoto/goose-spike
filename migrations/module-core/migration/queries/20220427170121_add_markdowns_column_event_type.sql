-- +goose Up
-- +goose StatementBegin
ALTER TABLE markdowns
   ADD COLUMN event_type VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE markdowns
   DROP COLUMN event_type;

-- +goose StatementEnd
