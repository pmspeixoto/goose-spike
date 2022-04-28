-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies 
 ADD COLUMN use_direct_incorporation BOOLEAN NOT NULL DEFAULT FALSE;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies 
 DROP COLUMN use_direct_incorporation;

-- +goose StatementEnd
