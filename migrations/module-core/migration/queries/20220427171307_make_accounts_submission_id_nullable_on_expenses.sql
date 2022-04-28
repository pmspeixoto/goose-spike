-- +goose Up
-- +goose StatementBegin
ALTER TABLE expenses MODIFY accounts_submission_id INT;
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE expenses MODIFY accounts_submission_id INT NOT NULL;

-- +goose StatementEnd
