-- +goose Up
-- +goose StatementBegin
DROP TABLE share_transfers;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
CREATE TABLE share_transfers
 (
     change_requests_id INT     NOT NULL,
     from_user_id       INT     NOT NULL,
     to_user_id         INT     NOT NULL,
     shares             INT     NOT NULL,
     is_gift            BOOLEAN NOT NULL DEFAULT FALSE,
     created_at         BIGINT  NOT NULL,
     updated_at         BIGINT  NOT NULL,
     CONSTRAINT PK_Share_Transfers PRIMARY KEY (change_requests_id, from_user_id),
     FOREIGN KEY (change_requests_id) REFERENCES change_requests (id),
     FOREIGN KEY (from_user_id) REFERENCES users (id),
     FOREIGN KEY (to_user_id) REFERENCES users (id)
 );
-- +goose StatementEnd
