-- +goose Up
-- +goose StatementBegin
INSERT INTO file_categories (category, label, category_group)
 VALUES
     ('EVIDENCE_OF_PROPERTY_PURCHASE_FUNDS','Evidence of property purchase funds', 'accounting');

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM file_categories WHERE category = "EVIDENCE_OF_PROPERTY_PURCHASE_FUNDS";

-- +goose StatementEnd
