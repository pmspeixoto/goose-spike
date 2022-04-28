ALTER TABLE directorships
    DROP FOREIGN KEY directorships_ibfk_3,
    DROP INDEX host_external_company_id,
    DROP COLUMN host_external_company_id,
    DROP FOREIGN KEY directorships_ibfk_5,
    DROP INDEX director_external_company_id,
    DROP COLUMN  director_external_company_id
;
