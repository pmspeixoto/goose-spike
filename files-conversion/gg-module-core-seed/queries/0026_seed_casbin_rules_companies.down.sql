DELETE
FROM
    casbin_rules
WHERE (p_type = 'p' AND v0 = 'admin' AND v1 = 'companies' AND v2 = 'create' AND v3 = '' AND v4 = '' AND v5 = '') OR
    (p_type = 'p' AND v0 = 'admin' AND v1 = 'companies' AND v2 = 'retrieve' AND v3 = '' AND v4 = '' AND v5 = '') OR
    (p_type = 'p' AND v0 = 'admin' AND v1 = 'companies' AND v2 = 'update' AND v3 = '' AND v4 = '' AND v5 = '') OR
    (p_type = 'p' AND v0 = 'admin' AND v1 = 'companies' AND v2 = 'delete' AND v3 = '' AND v4 = '' AND v5 = '');
