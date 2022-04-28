-- +goose Up
-- +goose StatementBegin
CREATE TABLE uploaded_pdfs (
     id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
     uuid VARCHAR(36) NOT NULL,
     location VARCHAR(255) NOT NULL,
     signatures_data JSON NULL,
     title VARCHAR(255) NOT NULL,
     created_at BIGINT NOT NULL,
     updated_at BIGINT NOT NULL,
     deleted_at BIGINT NULL
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE uploaded_pdfs;
-- +goose StatementEnd
