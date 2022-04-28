-- +goose Up
-- +goose StatementBegin
INSERT INTO companies
             (created_at,
              updated_at,
              company_name,
              registration_number,
              registered_address,
 
              share_cert_number_counter,
              allotment_number_counter,
              transfer_number_counter,
              ordinary_share_count,
              ordinary_share_price_in_gbp
 
            )
 VALUES      ( 1257894000000000000,
               1257894000000000000,
               'GetGround Incorporation Limited',
               '11696497',
               4,
 
               2,
               2,
               1,
               1,
               1
             );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM companies
 WHERE  company_name = 'getGround Incorporation Limited'
        AND registration_number = '11696497'
        AND registered_address = 4
 

-- +goose StatementEnd
