-- +goose Up
-- +goose StatementBegin
ALTER TABLE expenses
     ADD COLUMN category VARCHAR(255) NOT NULL,
     ADD COLUMN currency VARCHAR(255) NOT NULL,
     ADD COLUMN description VARCHAR(255);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE expenses
     DROP COLUMN category,
     DROP COLUMN currency,
     DROP COLUMN description;
-- +goose StatementEnd
