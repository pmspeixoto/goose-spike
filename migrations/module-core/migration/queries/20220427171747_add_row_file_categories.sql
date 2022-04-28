-- +goose Up
-- +goose StatementBegin
INSERT INTO file_categories (category, label)
 VALUES
     ('MORTGAGES','Mortgages');

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM file_categories WHERE category = "MORTGAGES";

-- +goose StatementEnd
