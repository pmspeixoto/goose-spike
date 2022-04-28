-- +goose Up
-- +goose StatementBegin
ALTER TABLE partners
     DROP COLUMN referrals_successful,
     DROP COLUMN referrals_pending,
     DROP COLUMN referrals_disinterested;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE partners
     ADD COLUMN referrals_successful INT NOT NULL DEFAULT 0,
     ADD COLUMN referrals_pending INT NOT NULL DEFAULT 0,
     ADD COLUMN referrals_disinterested INT NOT NULL DEFAULT 0;

-- +goose StatementEnd
