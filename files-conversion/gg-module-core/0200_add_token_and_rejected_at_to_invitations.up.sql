ALTER TABLE invitations
    ADD COLUMN token VARCHAR(255),
    ADD COLUMN rejected_at BIGINT;