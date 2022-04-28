ALTER TABLE grid_filters
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (employee_id, filter_name),
  DROP COLUMN category,
  DROP COLUMN filter_value,
  ADD filter_value json NOT NULL
;