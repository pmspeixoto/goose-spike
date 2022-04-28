-- +goose Up
-- +goose StatementBegin
ALTER TABLE partners
     ADD COLUMN lead_contact VARCHAR(255),
     ADD COLUMN referral_rate_in_cents INT,
     ADD COLUMN summary VARCHAR(512),
     ADD COLUMN address VARCHAR(512),
     ADD COLUMN website VARCHAR(255),
     ADD COLUMN country_calling_code VARCHAR(255),
     ADD COLUMN phone_number VARCHAR(255)
 ;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE partners
     DROP COLUMN lead_contact,
     DROP COLUMN referral_rate_in_cents,
     DROP COLUMN summary,
     DROP COLUMN address,
     DROP COLUMN website,
     DROP COLUMN country_calling_code,
     DROP COLUMN phone_number
 ;
-- +goose StatementEnd
