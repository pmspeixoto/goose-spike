-- +goose Up
-- +goose StatementBegin
UPDATE markdown_templates
 SET title = 'PFS Business Onboarding Application Form'
 WHERE title = 'Pfs Business Onboarding Application Form'
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE markdown_templates
 SET title = 'Pfs Business Onboarding Application Form'
 WHERE title = 'PFS Business Onboarding Application Form'
 ;

-- +goose StatementEnd
