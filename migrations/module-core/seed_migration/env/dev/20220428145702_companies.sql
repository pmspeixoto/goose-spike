-- +goose Up
-- +goose StatementBegin
INSERT INTO
   companies (
     id,
     created_at,
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
 VALUES
   (
     1,
     1257894000000000000,
     1257894000000000000,
     'Terranova.network Limited',
     '11273793',
     5,
     3,
     3,
     1,
     10000,
     1
   ),
   (
     2,
     1257894000000000000,
     1257894000000000000,
     'GetGround Incorporation Limited',
     '11696497',
     5,
     2,
     2,
     1,
     1,
     1
   ),
   (
     3,
     1257894000000000000,
     1257894000000000000,
     'GetGround Secretary Limited',
     '12024804',
     5,
     2,
     2,
     1,
     1,
     1
   );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin

-- +goose StatementEnd
