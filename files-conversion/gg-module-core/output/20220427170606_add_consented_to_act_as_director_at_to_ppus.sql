-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases_users
     ADD COLUMN consented_to_act_as_director_at BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases_users
     DROP COLUMN consented_to_act_as_director_at;

-- +goose StatementEnd
