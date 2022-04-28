-- +goose Up
-- +goose StatementBegin
ALTER TABLE webfilings
     MODIFY error TEXT
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE webfilings
     MODIFY error VARCHAR(256)
 ;

-- +goose StatementEnd
