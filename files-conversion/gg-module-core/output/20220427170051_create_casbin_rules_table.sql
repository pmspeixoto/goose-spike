-- +goose Up
-- +goose StatementBegin
CREATE TABLE casbin_rules
 (
     id INT NOT NULL auto_increment,
     p_type VARCHAR(8) NOT NULL,
     v0 VARCHAR(64) NOT NULL DEFAULT '',
     v1 VARCHAR(64) NOT NULL DEFAULT '',
     v2 VARCHAR(64) NOT NULL DEFAULT '',
     v3 VARCHAR(64) NOT NULL DEFAULT '',
     v4 VARCHAR(64) NOT NULL DEFAULT '',
     v5 VARCHAR(64) NOT NULL DEFAULT '',
     UNIQUE INDEX(id, p_type, v0, v1, v2, v3, v4, v5)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE casbin_rules;
-- +goose StatementEnd
