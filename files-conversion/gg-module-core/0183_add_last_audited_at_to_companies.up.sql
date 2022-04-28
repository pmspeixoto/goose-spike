ALTER TABLE companies
    ADD COLUMN last_audited_at BIGINT NOT NULL DEFAULT 0;
