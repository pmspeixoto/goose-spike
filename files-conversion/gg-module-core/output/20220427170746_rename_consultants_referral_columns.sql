-- +goose Up
-- +goose StatementBegin
ALTER TABLE consultants 
   CHANGE referrals_successful inbound_referrals_successful INT NOT NULL DEFAULT 0,
   CHANGE referrals_pending inbound_referrals_pending INT NOT NULL DEFAULT 0,
   CHANGE referrals_disinterested inbound_referrals_disinterested INT NOT NULL DEFAULT 0;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE consultants 
   CHANGE inbound_referrals_successful referrals_successful INT NOT NULL DEFAULT 0,
   CHANGE inbound_referrals_pending referrals_pending INT NOT NULL DEFAULT 0,
   CHANGE inbound_referrals_disinterested referrals_disinterested INT NOT NULL DEFAULT 0;

-- +goose StatementEnd
