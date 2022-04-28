-- +goose Up
-- +goose StatementBegin
ALTER TABLE markdowns
   CHANGE createdAt created_at BIGINT,
   CHANGE updatedAt updated_at BIGINT,
   CHANGE deletedAt deleted_at BIGINT; 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE markdowns
   CHANGE created_at createdAt BIGINT,
   CHANGE updated_at updatedAt BIGINT,
   CHANGE deleted_at deletedAt BIGINT; 

-- +goose StatementEnd
