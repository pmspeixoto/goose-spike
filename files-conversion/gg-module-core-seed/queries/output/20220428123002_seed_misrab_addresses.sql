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
 VALUES      ( 2,
 	      1257894000000000000,
               1257894000000000000,
               '19',
               'Crisp Road',
               '',
               'London',
               'W6 9RL',
               235 )

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM addresses
 WHERE id=2; 

-- +goose StatementEnd
