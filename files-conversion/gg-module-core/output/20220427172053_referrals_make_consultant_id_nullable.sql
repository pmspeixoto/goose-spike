-- +goose Up
-- +goose StatementBegin
ALTER TABLE referrals
     MODIFY consultant_id int(11),
     MODIFY consultant_name varchar(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE referrals
     MODIFY consultant_id int(11) NOT NULL,
     MODIFY consultant_name varchar(255) NOT NULL;

-- +goose StatementEnd
