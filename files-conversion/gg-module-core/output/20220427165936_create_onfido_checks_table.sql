-- +goose Up
-- +goose StatementBegin
CREATE TABLE onfido_checks (
     check_id VARCHAR(255) NOT NULL UNIQUE,
     user_id  INT          NOT NULL,
 
     FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
     INDEX (check_id),
     INDEX (user_id)
 )
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE onfido_checks;

-- +goose StatementEnd
