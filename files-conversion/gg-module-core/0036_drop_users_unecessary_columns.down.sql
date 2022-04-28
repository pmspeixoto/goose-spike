ALTER TABLE users
  ADD COLUMN has_skipped_onboarding boolean,
  ADD COLUMN privilege tinyint(4),
  ADD COLUMN country_of_residence int(11),
  ADD FOREIGN KEY (country_of_residence) REFERENCES countries(id);
