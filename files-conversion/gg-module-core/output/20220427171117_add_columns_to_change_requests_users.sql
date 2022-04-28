-- +goose Up
-- +goose StatementBegin
ALTER TABLE change_requests_users
     ADD COLUMN kyc_exempt  BOOLEAN      NOT NULL DEFAULT FALSE,
     ADD COLUMN user_type   VARCHAR(255) NOT NULL,
     ADD COLUMN shares      INT          NOT NULL,
     ADD COLUMN is_director BOOLEAN      NOT NULL DEFAULT FALSE,
     DROP COLUMN director
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE change_requests_users
     DROP COLUMN kyc_exempt,
     DROP COLUMN user_type,
     DROP COLUMN shares,
     DROP COLUMN is_director,
     ADD COLUMN director BOOLEAN;

-- +goose StatementEnd
