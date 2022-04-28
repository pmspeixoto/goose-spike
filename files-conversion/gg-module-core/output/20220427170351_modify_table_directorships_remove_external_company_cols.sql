-- +goose Up
-- +goose StatementBegin
ALTER TABLE directorships
     DROP FOREIGN KEY directorships_ibfk_3,
     DROP INDEX host_external_company_id,
     DROP COLUMN host_external_company_id,
     DROP FOREIGN KEY directorships_ibfk_5,
     DROP INDEX director_external_company_id,
     DROP COLUMN  director_external_company_id
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE directorships
     ADD COLUMN host_external_company_id INT(11) REFERENCES external_companies(id) ON DELETE CASCADE,
     ADD COLUMN director_external_company_id INT(11) REFERENCES external_companies(id) ON DELETE CASCADE
 ;

-- +goose StatementEnd
