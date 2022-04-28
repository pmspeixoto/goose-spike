-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
   CHANGE createdAt created_at BIGINT,
   CHANGE updatedAt updated_at BIGINT,
   CHANGE deletedAt deleted_at BIGINT,
   CHANGE firstname first_name VARCHAR(255),
   CHANGE middlename middle_name VARCHAR(255),
   CHANGE lastname last_name VARCHAR(255),
   CHANGE dob date_of_birth DATE,
   CHANGE birtown birth_town VARCHAR(255),
   CHANGE passno passport_number VARCHAR(30),
   CHANGE phone phone_number VARCHAR(30);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
   CHANGE created_at createdAt BIGINT,
   CHANGE updated_at updatedAt BIGINT,
   CHANGE deleted_at deletedAt BIGINT,
   CHANGE first_name firstname VARCHAR(255),
   CHANGE middle_name middlename VARCHAR(255),
   CHANGE last_name lastname VARCHAR(255),
   CHANGE date_of_birth dob DATE,
   CHANGE birth_town birtown VARCHAR(255),
   CHANGE passport_number passno VARCHAR(30),
   CHANGE phone_number phone VARCHAR(30);

-- +goose StatementEnd
