ALTER TABLE property_purchases
    MODIFY num_shareholders_onboarded TINYINT UNSIGNED NOT NULL DEFAULT 0,
    MODIFY num_shareholders_signed TINYINT UNSIGNED NOT NULL DEFAULT 0;