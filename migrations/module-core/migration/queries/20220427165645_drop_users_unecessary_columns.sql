-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
   DROP COLUMN has_skipped_onboarding,
   DROP COLUMN privilege,
   DROP FOREIGN KEY users_ibfk_2,
   DROP COLUMN country_of_residence;
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
   ADD COLUMN has_skipped_onboarding boolean,
   ADD COLUMN privilege tinyint(4),
   ADD COLUMN country_of_residence int(11),
   ADD FOREIGN KEY (country_of_residence) REFERENCES countries(id);

-- +goose StatementEnd
