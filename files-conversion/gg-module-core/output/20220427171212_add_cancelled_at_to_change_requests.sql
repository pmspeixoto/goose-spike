-- +goose Up
-- +goose StatementBegin
ALTER TABLE change_requests
 ADD COLUMN cancelled_at BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE change_requests
 DROP COLUMN cancelled_at;

-- +goose StatementEnd
