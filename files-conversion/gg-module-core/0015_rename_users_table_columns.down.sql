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
