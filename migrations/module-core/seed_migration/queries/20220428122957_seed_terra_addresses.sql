-- +goose Up
-- +goose StatementBegin
INSERT INTO addresses
             (id,
 	     created_at,
              updated_at,
              premise,
              street,
              thoroughfare,
              posttown,
              postcode,
              country)
 VALUES      ( 1,
 	      1257894000000000000,
               1257894000000000000,
               '5',
               'Theale Lakes Business Park',
               '',
               'Reading',
               'RG7 4GB',
               235 )

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM addresses
 WHERE id=1; 

-- +goose StatementEnd
