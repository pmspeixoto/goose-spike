-- +goose Up
-- +goose StatementBegin
CREATE TABLE expenses
 (
     id                     INT          NOT NULL PRIMARY KEY AUTO_INCREMENT,
     created_at             BIGINT(20)   NOT NULL, # unix nano timestamp
     updated_at             BIGINT(20)   NOT NULL, # unix nano timestamp
     deleted_at             BIGINT(20),            # unix nano timestamp
     accounts_submission_id INT          NOT NULL,
     file_id                INT          NOT NULL,
     payment_date           VARCHAR(255) NOT NULL, # 2006-01-02
     merchant_name          VARCHAR(255) NOT NULL,
     amount_in_cents        INT          NOT NULL,
 
     FOREIGN KEY (accounts_submission_id) REFERENCES accounts_submissions(id),
     FOREIGN KEY (file_id)                REFERENCES files(id)
 );
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE expenses;
-- +goose StatementEnd
