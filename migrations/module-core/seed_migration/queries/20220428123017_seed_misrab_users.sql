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
               'misrab@getground.co.uk',
               '+447599911558',
               '$2y$04$Vffb4ue5itwVANIPsh2kmem4ZzBHYAiowjlHMtNfEx563NjIVuHUS',
               '',
               'Misrab',
               'Musa',
               'Faizullah Khan',
               '1988-08-20',
               200,
               'Engineer',
               'Singapore',
               'K0948642B',
               2,
              'JWLZZNKEFJFJF2KX');

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM users
 WHERE  email = 'misrab@getground.co.uk';

-- +goose StatementEnd
