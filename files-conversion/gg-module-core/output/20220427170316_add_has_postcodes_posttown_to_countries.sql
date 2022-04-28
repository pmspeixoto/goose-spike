-- +goose Up
-- +goose StatementBegin
ALTER TABLE countries
     ADD COLUMN has_postcodes BOOLEAN NOT NULL DEFAULT TRUE,
     ADD COLUMN has_posttowns BOOLEAN NOT NULL DEFAULT TRUE;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE countries
   DROP COLUMN has_postcodes,
   DROP COLUMN has_posttowns;

-- +goose StatementEnd
