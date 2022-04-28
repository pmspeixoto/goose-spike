-- +goose Up
-- +goose StatementBegin
CREATE TABLE share_transfer_requests_markdowns (
     share_transfer_request_id INT,
     markdown_id INT,
     created_at BIGINT NOT NULL,
     updated_at BIGINT NOT NULL,
     deleted_at BIGINT,
     FOREIGN KEY (share_transfer_request_id) REFERENCES share_transfer_requests(id),
     FOREIGN KEY (markdown_id) REFERENCES markdowns(id),
     CONSTRAINT pk_share_transfer_requests_markdowns PRIMARY KEY (share_transfer_request_id, markdown_id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE share_transfer_requests_markdowns;

-- +goose StatementEnd
