ALTER TABLE property_purchases
    MODIFY num_shareholders_onboarded INT NOT NULL DEFAULT 0,
    MODIFY num_shareholders_signed INT NOT NULL DEFAULT 0;