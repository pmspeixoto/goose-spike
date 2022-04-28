-- +goose Up
-- +goose StatementBegin
ALTER TABLE questionaires_explores
     ADD COLUMN purchase_timeframe VARCHAR(255),
     ADD COLUMN current_btl_knowledge VARCHAR(255) NOT NULL,
     ADD COLUMN confidence_in_investment VARCHAR(255) NOT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE questionaires_explores
     DROP COLUMN purchase_timeframe,
     DROP COLUMN current_btl_knowledge,
     DROP COLUMN confidence_in_investment;
-- +goose StatementEnd
