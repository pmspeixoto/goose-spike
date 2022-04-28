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
