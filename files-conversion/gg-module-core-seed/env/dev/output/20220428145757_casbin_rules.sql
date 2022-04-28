-- +goose Up
-- +goose StatementBegin
INSERT INTO casbin_rules
 (
     p_type, v0, v1, v2, v3, v4, v5
 )
 VALUES
 ('g', '1', 'superuser', '', '', '', ''),
 ('g', '2', 'superuser', '', '', '', ''),
 ('g', '3', 'superuser', '', '', '', ''),
 ('g', '4', 'superuser', '', '', '', ''),
 ('g', '5', 'superuser', '', '', '', ''),
 ('g', '6', 'superuser', '', '', '', ''),
 ('g', '7', 'superuser', '', '', '', ''),
 ('g', '8', 'superuser', '', '', '', ''),
 ('g', '9', 'superuser', '', '', '', ''),
 ('g', '10', 'superuser', '', '', '', ''),
 ('g', '11', 'superuser', '', '', '', ''),
 ('g', '12', 'superuser', '', '', '', ''),
 ('g', '13', 'superuser', '', '', '', ''),
 ('g', '14', 'superuser', '', '', '', ''),
 ('g', '15', 'superuser', '', '', '', ''),
 ('g', '17', 'superuser', '', '', '', ''),
 ('g', '18', 'superuser', '', '', '', ''),
 ('g', '19', 'superuser', '', '', '', ''),
 ('g', '20', 'superuser', '', '', '', ''),
 ('g', '22', 'superuser', '', '', '', ''),
 ('g', '23', 'superuser', '', '', '', ''),
 ('g', '24', 'superuser', '', '', '', ''),
 ('g', '25', 'superuser', '', '', '', ''),
 ('g', '26', 'superuser', '', '', '', ''),
 ('g', '27', 'superuser', '', '', '', ''),
 ('g', '28', 'superuser', '', '', '', ''),
 ('g', '29', 'superuser', '', '', '', ''),
 ('g', '30', 'superuser', '', '', '', ''),
 ('g', '31', 'superuser', '', '', '', ''),
 ('g', '32', 'superuser', '', '', '', ''),
 ('g', '33', 'superuser', '', '', '', ''),
 ('g', '34', 'superuser', '', '', '', ''),
 ('g', '35', 'superuser', '', '', '', '')
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin

-- +goose StatementEnd
