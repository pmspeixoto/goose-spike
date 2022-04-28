-- +goose Up
-- +goose StatementBegin
CREATE TABLE consultants (
     id           INT          NOT NULL AUTO_INCREMENT,
     created_at   BIGINT       NOT NULL,
     updated_at   BIGINT       NOT NULL,
     deleted_at   BIGINT,
     partner_id   INT          NOT NULL,
     name         VARCHAR(255) NOT NULL,
     email        VARCHAR(255) NOT NULL UNIQUE,
     phone_number VARCHAR(255),
     employee_id  INT          NOT NULL,
 
     PRIMARY KEY (id),
     FOREIGN KEY (partner_id) REFERENCES partners (id),
     FOREIGN KEY (employee_id) REFERENCES employees (id)
 );
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE consultants;
-- +goose StatementEnd
