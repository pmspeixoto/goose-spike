ALTER TABLE users
    ADD COLUMN has_set_up_2fa BOOLEAN NOT NULL DEFAULT FALSE;