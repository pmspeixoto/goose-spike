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
 VALUES      ( 4,
 	      1257894000000000000,
               1257894000000000000,
               '8',
               'Greencoat Place',
               '',
               'London',
               'SW1P 1PL',
               235 ),
 	    ( 5,
 	      1257894000000000000,
               1257894000000000000,
               '1',
               'Lyric Square',
               '',
               'London',
               'W6 0NB',
               235 )
 	    

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM addresses
 WHERE id in (4,5); 
 

-- +goose StatementEnd
