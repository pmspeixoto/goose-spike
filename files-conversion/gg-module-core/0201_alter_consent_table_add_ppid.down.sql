ALTER TABLE consent
    ADD COLUMN company_id INT(11),
    DROP PRIMARY KEY,
    ADD PRIMARY KEY(user_id, company_id, consent_type),
    DROP FOREIGN KEY consent_ibfk_3,
    ADD CONSTRAINT consent_ibfk_1 FOREIGN KEY (company_id) REFERENCES companies(id),
    DROP COLUMN property_purchase_id
