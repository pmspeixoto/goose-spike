-- +goose Up
-- +goose StatementBegin
RENAME TABLE `codac_saved_filters` TO `grid_filters`
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
RENAME TABLE `grid_filters` TO `codac_saved_filters`

-- +goose StatementEnd
