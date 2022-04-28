ALTER TABLE change_requests
    ADD COLUMN kyb_started_at BIGINT,
    ADD COLUMN kyb_provider   VARCHAR(255);
