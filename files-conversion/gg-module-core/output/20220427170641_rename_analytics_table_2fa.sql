-- +goose Up
-- +goose StatementBegin
ALTER TABLE analytics_users
     CHANGE COLUMN 2fa_set_up_at set_up_2fa_at bigint(20);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE analytics_users
     CHANGE COLUMN set_up_2fa_at 2fa_set_up_at bigint(20);
-- +goose StatementEnd
