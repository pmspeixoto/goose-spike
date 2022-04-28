-- +goose Up
-- +goose StatementBegin
update companies
   set registered_address = 5 -- 1 Lyric Square, London, W6 0NB
   where registration_number in (
     11696497, -- incorpco
     12024804  -- secretary
   );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
update companies
   set registered_address = 5 -- 8 Greencoat Place, London, United Kingdom, SW1P 1PL
   where registration_number in (
     11696497, -- incorpco
     12024804  -- secretary
   );

-- +goose StatementEnd
