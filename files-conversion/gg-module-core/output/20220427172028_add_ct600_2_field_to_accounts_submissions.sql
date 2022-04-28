-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     ADD COLUMN ct600_2_dms_id INT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_submissions
   DROP COLUMN ct600_2_dms_id;

-- +goose StatementEnd
