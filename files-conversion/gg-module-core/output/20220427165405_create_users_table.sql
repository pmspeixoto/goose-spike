-- +goose Up
-- +goose StatementBegin
CREATE TABLE users
   (
      id                     INT NOT NULL auto_increment,
      createdAt              BIGINT,
      updatedAt              BIGINT,
      deletedAt              BIGINT,
      title                  VARCHAR(10),
      firstname              VARCHAR(255),
      middlename             VARCHAR(255),
      lastname               VARCHAR(255),
      previous_names         VARCHAR(255),
      gender                 VARCHAR(6),
      email                  VARCHAR(255),
      privilege              TINYINT,
      hash                   TEXT,
      dob                    DATE,
      nationality            INT,
      occupation             VARCHAR(255),
      country_of_residence   INT,
      address                INT,
      birtown                VARCHAR(255),
      passno                 VARCHAR(30),
      phone                  VARCHAR(30),
      has_skipped_onboarding BOOLEAN NOT NULL DEFAULT 0,
      stripe_customer        VARCHAR(255),
      onfido_customer        VARCHAR(255),
      FOREIGN KEY (nationality) REFERENCES countries(id),
      FOREIGN KEY (country_of_residence) REFERENCES countries(id),
      FOREIGN KEY (address) REFERENCES addresses(id),
      CONSTRAINT PK_Person PRIMARY KEY (id),
      UNIQUE (email)
   ) 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS users; 

-- +goose StatementEnd
