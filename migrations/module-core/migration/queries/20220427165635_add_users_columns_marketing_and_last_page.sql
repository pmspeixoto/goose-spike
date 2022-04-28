-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
   ADD COLUMN receives_marketing BOOLEAN DEFAULT false,
   ADD COLUMN last_page_visited VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
   DROP COLUMN receives_marketing,
   DROP COLUMN last_page_visited;

-- +goose StatementEnd
