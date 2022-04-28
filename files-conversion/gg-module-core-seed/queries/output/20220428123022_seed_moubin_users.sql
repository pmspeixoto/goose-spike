-- +goose Up
-- +goose StatementBegin
INSERT INTO users
             (created_at,
              updated_at,
              email_verified,
              email,
              phone_number,
              hash,
              title,
              first_name,
              middle_name,
              last_name,
              date_of_birth,
              nationality,
              occupation,
              birth_town,
              passport_number,
              address,
              shared_secret)
 VALUES      ( 1257894000000000000,
               1257894000000000000,
               true,
               'moubin@getground.co.uk',
               '+447768148602',
               '$2a$04$24m1quJeDcAx6W.1ymH4qeOvSE4PFnuBi1McjQwtbSm.NQ.Ntqyry',
               '',
               'Moubin',
               'Mamun',
               'Faizullah Khan',
               '1983-06-11',
               200,
               'CEO',
               'Singapore',
               'E5289084C',
               3,
              'LVGOE5N3KL7GQDWL');

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM users
 WHERE email = 'moubin@getground.co.uk';

-- +goose StatementEnd
