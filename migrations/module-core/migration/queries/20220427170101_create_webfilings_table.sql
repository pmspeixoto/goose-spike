-- +goose Up
-- +goose StatementBegin
CREATE TABLE webfilings
 (
     id INT NOT NULL PRIMARY KEY auto_increment,
     company_id INT NOT NULL,
     action VARCHAR(128) NOT NULL,
     description VARCHAR(256) NOT NULL,
     status VARCHAR(128) NOT NULL,
     error VARCHAR(256),
     created_at TIMESTAMP NOT NULL,
 
     INDEX(company_id)
 );
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS webfilings;
-- +goose StatementEnd
