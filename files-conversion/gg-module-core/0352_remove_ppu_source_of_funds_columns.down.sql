ALTER TABLE property_purchases_users
  ADD COLUMN `source_of_funds` varchar(255) DEFAULT NULL,
  ADD COLUMN `other_reason` varchar(255) DEFAULT NULL;
