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
 ('g', '7', 'sales', '', '', '', ''),
 ('g', '8', 'superuser', '', '', '', ''),
 ('g', '9', 'superuser', '', '', '', ''),
 ('g', '10', 'superuser', '', '', '', ''),
 ('g', '11', 'superuser', '', '', '', ''),
 ('g', '12', 'superuser', '', '', '', ''),
 ('g', '13', 'superuser', '', '', '', ''),
 ('g', '14', 'superuser', '', '', '', ''),
 ('g', '15', 'superuser', '', '', '', ''),
 ('g', '16', 'superuser', '', '', '', ''),
 ('g', '17', 'superuser', '', '', '', ''),
 ('g', '23', 'superuser', '', '', '', ''),
 ('g', '24', 'superuser', '', '', '', ''),
 ('g', '25', 'superuser', '', '', '', ''),
 ('g', '27', 'superuser', '', '', '', ''),
 ('g', '29', 'superuser', '', '', '', ''),
 ('g', '30', 'superuser', '', '', '', ''),
 ('g', '32', 'superuser', '', '', '', ''),
 ('g', '33', 'superuser', '', '', '', ''),
 ('g', '34', 'superuser', '', '', '', ''),
 ('g', '35', 'superuser', '', '', '', ''),
 ('g', '36', 'superuser', '', '', '', ''),
 ('g', '37', 'superuser', '', '', '', ''),
 ('g', '38', 'superuser', '', '', '', ''),
 ('g', '39', 'superuser', '', '', '', ''),
 ('g', '40', 'superuser', '', '', '', ''),
 ('g', '41', 'superuser', '', '', '', ''),
 ('g', '45', 'superuser', '', '', '', ''),
 ('g', '46', 'superuser', '', '', '', ''),
 ('g', '47', 'superuser', '', '', '', ''),
 ('g', '48', 'superuser', '', '', '', ''),
 ('g', '49', 'superuser', '', '', '', ''),
 ('g', '50', 'superuser', '', '', '', ''),
 ('g', '51', 'superuser', '', '', '', ''),
 ('g', '52', 'superuser', '', '', '', ''),
 ('g', '62', 'superuser', '', '', '', ''),
 ('g', '63', 'superuser', '', '', '', ''),
 ('g', '64', 'superuser', '', '', '', ''),
 ('g', '66', 'superuser', '', '', '', ''),
 ('p', 'admin', 'users', 'create', '', '', ''),
 ('p', 'admin', 'users', 'retrieve', '', '', ''),
 ('p', 'admin', 'users', 'update', '', '', ''),
 ('p', 'admin', 'users', 'delete', '', '', ''),
 ('p', 'admin', 'companies', 'create', '', '', ''),
 ('p', 'admin', 'companies', 'retrieve', '', '', ''),
 ('p', 'admin', 'companies', 'update', '', '', ''),
 ('p', 'admin', 'companies', 'delete', '', '', ''),
 ('p', 'admin', 'property_purchases', 'create', '', '', ''),
 ('p', 'admin', 'property_purchases', 'retrieve', '', '', ''),
 ('p', 'admin', 'property_purchases', 'update', '', '', ''),
 ('p', 'admin', 'property_purchases', 'delete', '', '', ''),
 ('p', 'admin', 'casbin_rules', 'create', '', '', ''),
 ('p', 'admin', 'casbin_rules', 'retrieve', '', '', ''),
 ('p', 'admin', 'casbin_rules', 'delete', '', '', ''),
 ('p', 'admin', 'kyc_check', 'create', '', '', ''),
 ('p', 'admin', 'modulr', 'create', '', '', ''),
 ('g', '1', 'superuser', '', '', '', ''),
 ('g', '2', 'superuser', '', '', '', ''),
 ('p', 'admin', 'employees', 'create', '', '', ''),
 ('p', 'admin', 'employees', 'retrieve', '', '', ''),
 ('p', 'admin', 'employees', 'update', '', '', ''),
 ('p', 'admin', 'employees', 'delete', '', '', ''),
 ('p', 'admin', 'markdown_templates', 'create', '', '', ''),
 ('p', 'admin', 'markdown_templates', 'retrieve', '', '', ''),
 ('p', 'admin', 'markdown_templates', 'update', '', '', ''),
 ('p', 'admin', 'markdown_templates', 'delete', '', '', ''),
 ('p', 'admin', 'register_member_entries', 'create', '', '', ''),
 ('p', 'admin', 'register_member_entries', 'retrieve', '', '', ''),
 ('p', 'admin', 'register_member_entries', 'update', '', '', ''),
 ('p', 'admin', 'register_member_entries', 'delete', '', '', ''),
 ('p', 'ops', 'users', 'retrieve', '', '', ''),
 ('p', 'ops', 'property_purchases', 'retrieve', '', '', ''),
 ('p', 'ops', 'companies', 'retrieve', '', '', ''),
 ('p', 'ops', 'markdown_templates', 'retrieve', '', '', ''),
 ('p', 'ops', 'kyc_check', 'retrieve', '', '', ''),
 ('p', 'ops', 'modulr', 'retrieve', '', '', ''),
 ('p', 'ops', 'property_purchases', 'update', '', '', ''),
 ('p', 'ops', 'companies', 'update', '', '', ''),
 ('p', 'ops', 'kyc_check', 'create', '', '', ''),
 ('p', 'ops', 'kyc_check', 'update', '', '', ''),
 ('p', 'ops', 'kyc_check', 'delete', '', '', ''),
 ('p', 'ops', 'users', 'update', '', '', ''),
 ('p', 'ops', 'modulr', 'create', '', '', ''),
 ('p', 'ops', 'modulr', 'update', '', '', ''),
 ('p', 'ops', 'property_purchases', 'create', '', '', ''),
 ('p', 'ops', 'companies', 'create', '', '', ''),
 ('p', 'ops', 'partners', 'retrieve', '', '', ''),
 ('p', 'ops', 'partners', 'create', '', '', ''),
 ('p', 'ops', 'partners', 'update', '', '', ''),
 ('p', 'ops', 'partners', 'delete', '', '', ''),
 ('p', 'ops', 'companies', 'delete', '', '', ''),
 ('p', 'ops', 'consultants', 'create', '', '', ''),
 ('p', 'ops', 'consultants', 'retrieve', '', '', ''),
 ('p', 'ops', 'consultants', 'update', '', '', ''),
 ('p', 'ops', 'consultants', 'delete', '', '', ''),
 ('p', 'ops', 'property_purchases', 'delete', '', '', ''),
 ('p', 'ops', 'employees', 'retrieve', '', '', ''),
 ('p', 'sales', 'users', 'retrieve', '', '', ''),
 ('p', 'sales', 'property_purchases', 'retrieve', '', '', ''),
 ('p', 'sales', 'companies', 'retrieve', '', '', ''),
 ('p', 'sales', 'markdown_templates', 'retrieve', '', '', ''),
 ('p', 'sales', 'kyc_check', 'retrieve', '', '', ''),
 ('p', 'sales', 'modulr', 'retrieve', '', '', ''),
 ('p', 'sales', 'partners', 'retrieve', '', '', ''),
 ('p', 'sales', 'partners', 'create', '', '', ''),
 ('p', 'sales', 'partners', 'update', '', '', ''),
 ('p', 'sales', 'partners', 'delete', '', '', ''),
 ('p', 'sales', 'consultants', 'create', '', '', ''),
 ('p', 'sales', 'consultants', 'retrieve', '', '', ''),
 ('p', 'sales', 'consultants', 'update', '', '', ''),
 ('p', 'sales', 'consultants', 'delete', '', '', ''),
 ('p', 'sales', 'referrals', 'create', '', '', ''),
 ('p', 'sales', 'referrals', 'retrieve', '', '', ''),
 ('p', 'sales', 'referrals', 'update', '', '', ''),
 ('p', 'sales', 'referrals', 'delete', '', '', ''),
 ('p', 'sales', 'employees', 'retrieve', '', '', ''),
 ('p', '', 'users_sensitive', 'update', '', '', ''),
 ('p', 'sales', 'users', 'update', '', '', ''),
 ('p', 'sales', 'users', 'create', '', '', ''),
 ('p', 'ops', 'users', 'create', '', '', ''),
 ('p', 'ops', 'users_sensitive', 'retrieve', '', '', ''),
 ('p', 'ops', 'referrals', 'create', '', '', ''),
 ('p', 'ops', 'referrals', 'retrieve', '', '', ''),
 ('p', 'ops', 'referrals', 'update', '', '', ''),
 ('g', '67', 'ops', '', '', '', ''),
 ('g', '68', 'superuser', '', '', '', ''),
 ('g', '69', 'superuser', '', '', '', ''),
 ('g', '70', 'superuser', '', '', '', ''),
 ('g', '71', 'superuser', '', '', '', ''),
 ('g', '72', 'superuser', '', '', '', ''),
 ('g', '73', 'superuser', '', '', '', '');

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin

-- +goose StatementEnd