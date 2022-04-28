-- +goose Up
-- +goose StatementBegin
ALTER TABLE partners
 ADD COLUMN next_touchpoint BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE partners
 DROP COLUMN next_touchpoint;

-- +goose StatementEnd
