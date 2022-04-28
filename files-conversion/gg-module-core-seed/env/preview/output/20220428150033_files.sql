-- +goose Up
-- +goose StatementBegin
INSERT INTO
   files (
     id,
     created_at,
     updated_at,
     location,
     description,
     filename,
     category,
     title,
     mime_type,
     creator_type,
     creator
   )
 VALUES
   (
     -- Misrab
     1,
     1257894000000000000,
     1257894000000000000,
     'misrab_signature.png',
     'signature',
     'misrab_signature.png',
     null,
     null,
     null,
     null,
     1
   ),
   (
     -- Moubin
     2,
     1257894000000000000,
     1257894000000000000,
     'moubin_signature.png',
     'signature',
     'moubin_signature.png',
     null,
     null,
     null,
     null,
     2
   ),
   (
     -- Currencycloud Terms of Use (UK)
     3,
     1612259928000000000,
     1612259928000000000,
     'Terms-of-Use-UK-CC-Ltd-1-Oct-20.pdf',
     'Currencycloud Terms of Use (UK)',
     'Terms-of-Use-UK-CC-Ltd-1-Oct-20.pdf',
     'Terms of Use',
     'Currencycloud Terms of Use (UK)',
     'pdf',
     'system',
     null
   ),
   (
     -- Currencycloud Terms of Use (US)
     4,
     1612259928000000000,
     1612259928000000000,
     'Terms-of-Use-US-CC-Inc-1-Oct-20.pdf',
     'Currencycloud Terms of Use (US)',
     'Terms-of-Use-US-CC-Inc-1-Oct-20.pdf',
     'Terms of Use',
     'Currencycloud Terms of Use (US)',
     'pdf',
     'system',
     null
   );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin

-- +goose StatementEnd
