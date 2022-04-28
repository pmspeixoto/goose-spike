-- +goose Up
-- +goose StatementBegin
ALTER TABLE net_promoter_scores
   ADD COLUMN skipped BOOLEAN NOT NULL DEFAULT FALSE;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE net_promoter_scores
   DROP COLUMN skipped;

-- +goose StatementEnd
