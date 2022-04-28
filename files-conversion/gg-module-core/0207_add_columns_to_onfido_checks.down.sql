ALTER TABLE onfido_checks
DROP FOREIGN KEY fk_approved_by,
DROP COLUMN status,
DROP COLUMN approved_at,
DROP COLUMN approved_by
;
