-- +goose Up
-- +goose StatementBegin
RENAME TABLE share_transfer_requests TO change_requests;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
RENAME TABLE change_requests TO share_transfer_requests;

-- +goose StatementEnd
