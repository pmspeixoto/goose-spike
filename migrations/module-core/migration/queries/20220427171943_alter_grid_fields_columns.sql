-- +goose Up
-- +goose StatementBegin
ALTER TABLE grid_filters
   MODIFY COLUMN filter_value JSON NOT NULL,
   ADD COLUMN category VARCHAR(255) NOT NULL,
   DROP PRIMARY KEY,
   ADD PRIMARY KEY (employee_id, filter_name, category)
 ;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE grid_filters
   DROP PRIMARY KEY,
   ADD PRIMARY KEY (employee_id, filter_name),
   DROP COLUMN category,
   DROP COLUMN filter_value,
   ADD filter_value json NOT NULL
 ;
-- +goose StatementEnd
