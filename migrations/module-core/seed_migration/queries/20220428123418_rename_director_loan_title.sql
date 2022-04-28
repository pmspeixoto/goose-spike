-- +goose Up
-- +goose StatementBegin
UPDATE markdown_templates
 SET title = "Shareholder's Loan"
 WHERE title = "Director's Loan";

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE markdown_templates
 SET title = "Director's Loan"
 WHERE title = "Shareholder's Loan";

-- +goose StatementEnd
