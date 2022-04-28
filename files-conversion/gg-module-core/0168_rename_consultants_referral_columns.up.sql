ALTER TABLE consultants 
  CHANGE referrals_successful inbound_referrals_successful INT NOT NULL DEFAULT 0,
  CHANGE referrals_pending inbound_referrals_pending INT NOT NULL DEFAULT 0,
  CHANGE referrals_disinterested inbound_referrals_disinterested INT NOT NULL DEFAULT 0;
