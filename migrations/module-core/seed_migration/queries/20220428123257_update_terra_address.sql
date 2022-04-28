-- +goose Up
-- +goose StatementBegin
update companies
   set registered_address = 5 -- 1 Lyric Square
   where registration_number = 11273793;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
update companies
   set registered_address = 1 -- 5 Theale Lakes
   where registration_number = 11273793;

-- +goose StatementEnd
