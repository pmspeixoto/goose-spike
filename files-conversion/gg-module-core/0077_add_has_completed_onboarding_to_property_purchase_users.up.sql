ALTER TABLE property_purchases_users
    ADD COLUMN has_completed_onboarding BOOLEAN NOT NULL DEFAULT FALSE;
