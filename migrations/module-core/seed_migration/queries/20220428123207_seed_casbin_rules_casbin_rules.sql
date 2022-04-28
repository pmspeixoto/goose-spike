-- +goose Up
-- +goose StatementBegin
INSERT INTO casbin_rules
 (
     p_type, v0, v1, v2, v3, v4, v5
 )
 VALUES
 ('p', 'admin', 'casbin_rules', 'create', '', '', ''),
 ('p', 'admin', 'casbin_rules', 'retrieve', '', '', ''),
 ('p', 'admin', 'casbin_rules', 'delete', '', '', '');
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE
 FROM
     casbin_rules
 WHERE (p_type = 'p' AND v0 = 'admin' AND v1 = 'casbin_rules' AND v2 = 'create' AND v3 = '' AND v4 = '' AND v5 = '') OR
     (p_type = 'p' AND v0 = 'admin' AND v1 = 'casbin_rules' AND v2 = 'retrieve' AND v3 = '' AND v4 = '' AND v5 = '') OR
     (p_type = 'p' AND v0 = 'admin' AND v1 = 'casbin_rules' AND v2 = 'delete' AND v3 = '' AND v4 = '' AND v5 = '');
-- +goose StatementEnd
