-- +goose Up
-- +goose StatementBegin
UPDATE markdown_templates
 SET title = 'PFS Terms and Conditions'
 WHERE title = 'Pfs Terms and Conditions'
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE markdown_templates
 SET title = 'Pfs Terms and Conditions'
 WHERE title = 'PFS Terms and Conditions'
 ;

-- +goose StatementEnd
