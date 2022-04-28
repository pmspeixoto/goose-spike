-- +goose Up
-- +goose StatementBegin
ALTER TABLE onfido_checks
 ADD COLUMN status VARCHAR(255) NOT NULL DEFAULT 'STARTED',
 ADD COLUMN approved_at BIGINT,
 ADD COLUMN approved_by INT,
 ADD CONSTRAINT fk_approved_by FOREIGN KEY (approved_by) REFERENCES employees(id)
 ;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE onfido_checks
 DROP FOREIGN KEY fk_approved_by,
 DROP COLUMN status,
 DROP COLUMN approved_at,
 DROP COLUMN approved_by
 ;

-- +goose StatementEnd
