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
 VALUES      ( 3,
 	      1257894000000000000,
               1257894000000000000,
               '30',
               'Ashcombe Street',
               '',
               'London',
               'SW6 3AN',
               235 ) 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM addresses
 WHERE id=3; 
 

-- +goose StatementEnd
