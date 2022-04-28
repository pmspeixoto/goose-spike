-- +goose Up
-- +goose StatementBegin
INSERT INTO files
             (
               created_at,
               updated_at,
 	      location,
 	      description,
 	      filename,
 	      creator)
 VALUES
 (
   -- Misrab
   1257894000000000000,
   1257894000000000000,
   'misrab_signature.png',
   'signature',
   'misrab_signature.png',
   1
 ),
 (
   -- Moubin
   1257894000000000000,
   1257894000000000000,
   'moubin_signature.png',
   'signature',
   'moubin_signature.png',
   2
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM files;

-- +goose StatementEnd
