ALTER TABLE users
  DROP COLUMN has_skipped_onboarding,
  DROP COLUMN privilege,
  DROP FOREIGN KEY users_ibfk_2,
  DROP COLUMN country_of_residence;

