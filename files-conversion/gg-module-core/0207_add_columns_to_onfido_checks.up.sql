ALTER TABLE onfido_checks
ADD COLUMN status VARCHAR(255) NOT NULL DEFAULT 'STARTED',
ADD COLUMN approved_at BIGINT,
ADD COLUMN approved_by INT,
ADD CONSTRAINT fk_approved_by FOREIGN KEY (approved_by) REFERENCES employees(id)
;
