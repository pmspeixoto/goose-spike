-- +goose Up
-- +goose StatementBegin
INSERT INTO restricted_services (`key`, label)
VALUES
('all', 'Allow access to all services'),
('find_property', 'Find a Property'),
('btl_mortgages', 'Buy-to-let Mortgages'),
('property_management', 'Property Management'),
('insurance', 'Insurance'),
('furniture', 'Furniture'),
('solicitors', 'Solicitors'),
('accountant', 'Accountant')
;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM restricted_services WHERE true;
-- +goose StatementEnd
