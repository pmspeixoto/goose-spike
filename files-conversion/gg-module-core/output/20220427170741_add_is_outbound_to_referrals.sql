-- +goose Up
-- +goose StatementBegin
ALTER TABLE referrals
  ADD COLUMN is_outbound BOOLEAN NOT NULL DEFAULT false;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE referrals
     DROP COLUMN is_outbound;

-- +goose StatementEnd
