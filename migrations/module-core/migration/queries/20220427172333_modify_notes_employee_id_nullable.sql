-- +goose Up
-- +goose StatementBegin
ALTER TABLE notes
     MODIFY COLUMN employee_id INT NULL;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE notes
     MODIFY COLUMN employee_id INT NOT NULL;
-- +goose StatementEnd
