-- +goose Up
-- +goose StatementBegin
CREATE TABLE change_requests_webfilings
 (
     change_request_id INT NOT NULL,
     webfiling_id INT NOT NULL,
     FOREIGN KEY (change_request_id) REFERENCES change_requests(id),
     FOREIGN KEY (webfiling_id) REFERENCES webfilings(id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE change_requests_webfilings;

-- +goose StatementEnd
