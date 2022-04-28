ALTER TABLE directorships
    ADD COLUMN host_external_company_id INT(11) REFERENCES external_companies(id) ON DELETE CASCADE,
    ADD COLUMN director_external_company_id INT(11) REFERENCES external_companies(id) ON DELETE CASCADE
;
