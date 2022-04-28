-- +goose Up
-- +goose StatementBegin
ALTER TABLE share_transfer_requests_markdowns RENAME change_requests_markdowns;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE change_requests_markdowns RENAME share_transfer_requests_markdowns;

-- +goose StatementEnd
