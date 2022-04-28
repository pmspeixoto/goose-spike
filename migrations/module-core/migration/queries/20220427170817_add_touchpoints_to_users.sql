-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN next_touchpoint BIGINT,
     ADD COLUMN last_touchpoint BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN next_touchpoint,
     DROP COLUMN last_touchpoint;

-- +goose StatementEnd
