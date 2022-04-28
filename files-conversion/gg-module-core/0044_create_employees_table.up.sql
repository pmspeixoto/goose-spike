CREATE TABLE employees
  (
     id                     INT NOT NULL auto_increment,
     created_at              BIGINT,
     updated_at              BIGINT,
     deleted_at              BIGINT,
     first_name              VARCHAR(255),
     last_name               VARCHAR(255),
     email                  VARCHAR(255),
     CONSTRAINT PK_Employee PRIMARY KEY (id),
     UNIQUE (email)
  )
