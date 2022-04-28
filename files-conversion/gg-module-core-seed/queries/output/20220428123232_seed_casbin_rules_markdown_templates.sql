-- +goose Up
-- +goose StatementBegin
INSERT INTO casbin_rules
 (
     p_type, v0, v1, v2, v3, v4, v5
 )
 VALUES
 ('p', 'admin', 'markdown_templates', 'create', '', '', ''),
 ('p', 'admin', 'markdown_templates', 'retrieve', '', '', ''),
 ('p', 'admin', 'markdown_templates', 'update', '', '', ''),
 ('p', 'admin', 'markdown_templates', 'delete', '', '', '');
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE
 FROM
     casbin_rules
 WHERE (p_type = 'p' AND v0 = 'admin' AND v1 = 'markdown_templates' AND v2 = 'create' AND v3 = '' AND v4 = '' AND v5 = '') OR
     (p_type = 'p' AND v0 = 'admin' AND v1 = 'markdown_templates' AND v2 = 'retrieve' AND v3 = '' AND v4 = '' AND v5 = '') OR
     (p_type = 'p' AND v0 = 'admin' AND v1 = 'markdown_templates' AND v2 = 'update' AND v3 = '' AND v4 = '' AND v5 = '') OR
     (p_type = 'p' AND v0 = 'admin' AND v1 = 'markdown_templates' AND v2 = 'delete' AND v3 = '' AND v4 = '' AND v5 = '');
-- +goose StatementEnd
