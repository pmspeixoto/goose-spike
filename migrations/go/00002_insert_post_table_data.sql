-- +goose Up
-- +goose StatementBegin
INSERT INTO post (content, create_time)
VALUES ('dummy content 0', '2022-04-11 12:00:00'),
       ('dummy content 1', '2022-04-12 12:00:00');
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM post WHERE content IN ('dummy content 0', 'dummy content 1');
-- +goose StatementEnd