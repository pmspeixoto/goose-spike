ALTER TABLE grid_filters
  MODIFY COLUMN filter_value JSON NOT NULL,
  ADD COLUMN category VARCHAR(255) NOT NULL,
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (employee_id, filter_name, category);
;