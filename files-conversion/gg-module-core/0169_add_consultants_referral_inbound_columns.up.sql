ALTER TABLE consultants
    ADD COLUMN outbound_referrals_successful INT NOT NULL DEFAULT 0,
    ADD COLUMN outbound_referrals_pending INT NOT NULL DEFAULT 0,
    ADD COLUMN outbound_referrals_disinterested INT NOT NULL DEFAULT 0;
