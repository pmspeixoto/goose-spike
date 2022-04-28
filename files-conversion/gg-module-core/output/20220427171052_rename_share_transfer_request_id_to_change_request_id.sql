-- +goose Up
-- +goose StatementBegin
ALTER TABLE change_requests_markdowns CHANGE COLUMN share_transfer_request_id change_request_id INT NOT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE change_requests_markdowns CHANGE COLUMN change_request_id share_transfer_request_id INT NOT NULL;

-- +goose StatementEnd
