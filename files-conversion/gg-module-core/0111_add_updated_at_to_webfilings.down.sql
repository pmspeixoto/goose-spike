ALTER TABLE webfilings
    MODIFY created_at TIMESTAMP NOT NULL,
    DROP COLUMN updated_at
;
