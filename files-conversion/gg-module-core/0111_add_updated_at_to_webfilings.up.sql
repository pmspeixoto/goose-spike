ALTER TABLE webfilings
    MODIFY created_at BIGINT NOT NULL,
    ADD COLUMN updated_at BIGINT NOT NULL
;
