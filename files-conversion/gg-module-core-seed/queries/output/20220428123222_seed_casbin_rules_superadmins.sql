-- +goose Up
-- +goose StatementBegin
INSERT INTO casbin_rules (
   p_type, v0, v1, v2, v3, v4, v5
 )
 VALUES
 ('g', '1', 'superuser', '', '', '', ''),
 ('g', '2', 'superuser', '', '', '', '');
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE
 FROM
     casbin_rules
 WHERE (p_type = 'g' AND v0 = '1' AND v1 = 'superuser' AND v2 = '' AND v3 = '' AND v4 = '' AND v5 = '') OR
     (p_type = 'g' AND v0 = '2' AND v1 = 'superuser' AND v2 = '' AND v3 = '' AND v4 = '' AND v5 = '');
-- +goose StatementEnd
