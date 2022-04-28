-- +goose Up
-- +goose StatementBegin
ALTER TABLE consultants
     ADD COLUMN outbound_referrals_successful INT NOT NULL DEFAULT 0,
     ADD COLUMN outbound_referrals_pending INT NOT NULL DEFAULT 0,
     ADD COLUMN outbound_referrals_disinterested INT NOT NULL DEFAULT 0;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE consultants
     DROP COLUMN outbound_referrals_successful,
     DROP COLUMN outbound_referrals_pending,
     DROP COLUMN outbound_referrals_disinterested;
 

-- +goose StatementEnd
