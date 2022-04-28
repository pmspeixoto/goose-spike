-- +goose Up
-- +goose StatementBegin
ALTER TABLE consultants
     MODIFY COLUMN employee_id INT,
     MODIFY COLUMN employee_name VARCHAR(255)
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE consultants
     MODIFY COLUMN employee_id INT NOT NULL,
     MODIFY COLUMN employee_name VARCHAR(255) NOT NULL DEFAULT ''
 ;

-- +goose StatementEnd
