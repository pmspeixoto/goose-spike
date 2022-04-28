ALTER TABLE partners
    ADD COLUMN lead_contact VARCHAR(255),
    ADD COLUMN referral_rate_in_cents INT,
    ADD COLUMN summary VARCHAR(512),
    ADD COLUMN address VARCHAR(512),
    ADD COLUMN website VARCHAR(255),
    ADD COLUMN country_calling_code VARCHAR(255),
    ADD COLUMN phone_number VARCHAR(255)
;