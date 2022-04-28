-- +goose Up
-- +goose StatementBegin
ALTER TABLE `users`
     ADD COLUMN `comply_advantage_id` VARCHAR(255);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE `users`
     DROP COLUMN `comply_advantage_id`;
-- +goose StatementEnd
