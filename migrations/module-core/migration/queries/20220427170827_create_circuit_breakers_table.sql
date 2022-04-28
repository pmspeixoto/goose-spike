-- +goose Up
-- +goose StatementBegin
CREATE TABLE circuit_breakers
 (
     id          INT NOT NULL auto_increment,
     name        VARCHAR(60) NOT NULL,
     enabled     BOOL NOT NULL,
     description VARCHAR(255) NOT NULL DEFAULT "",
 
     PRIMARY KEY (id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE circuit_breakers;

-- +goose StatementEnd
