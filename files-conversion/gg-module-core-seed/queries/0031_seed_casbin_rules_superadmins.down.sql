DELETE
FROM
    casbin_rules
WHERE (p_type = 'g' AND v0 = '1' AND v1 = 'superuser' AND v2 = '' AND v3 = '' AND v4 = '' AND v5 = '') OR
    (p_type = 'g' AND v0 = '2' AND v1 = 'superuser' AND v2 = '' AND v3 = '' AND v4 = '' AND v5 = '');