-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
   ADD COLUMN ch_submission_number VARCHAR(6);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
   DROP COLUMN ch_submission_number;

-- +goose StatementEnd
