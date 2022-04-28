-- +goose Up
-- +goose StatementBegin
INSERT INTO
 employees(
   first_name,
   last_name,
   email
 )
 VALUES
 (
   'Misrab',
   'Faizullah Khan',
   'misrab@getground.co.uk'
 ),
 (
   'Moubin',
   'Faizullah Khan',
   'moubin@getground.co.uk'
 )
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM employees;

-- +goose StatementEnd
