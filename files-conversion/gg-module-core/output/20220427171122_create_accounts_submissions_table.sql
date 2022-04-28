-- +goose Up
-- +goose StatementBegin
CREATE TABLE accounts_submissions
 (
     id                           INT          NOT NULL PRIMARY KEY AUTO_INCREMENT,
     created_at                   BIGINT(20)   NOT NULL, # unix nano timestamp
     updated_at                   BIGINT(20)   NOT NULL, # unix nano timestamp
     deleted_at                   BIGINT(20),            # unix nano timestamp
     company_id                   INT          NOT NULL,
     user_id                      INT,
     accounting_period_start_date VARCHAR(255) NOT NULL, # 2006-01-02
     accounting_period_end_date   VARCHAR(255) NOT NULL, # 2006-01-02
     deadline                     VARCHAR(255) NOT NULL, # 2006-01-02
     submitted_at                 BIGINT(20),            # unix nano timestamp
 
     FOREIGN KEY (company_id) REFERENCES companies(id),
     FOREIGN KEY (user_id)    REFERENCES users(id)
 );
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE accounts_submissions;
-- +goose StatementEnd
