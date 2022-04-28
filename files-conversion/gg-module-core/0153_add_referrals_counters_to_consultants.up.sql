ALTER TABLE consultants
    ADD COLUMN referrals_successful INT NOT NULL DEFAULT 0,
    ADD COLUMN referrals_pending INT NOT NULL DEFAULT 0,
    ADD COLUMN referrals_disinterested INT NOT NULL DEFAULT 0;
