-- +goose Up
-- +goose StatementBegin
CREATE TABLE partner_notes
 (
     partner_id  INT NOT NULL,
     note_id     INT NOT NULL,
     deleted_at  BIGINT,
 
     CONSTRAINT pk_partner_notes PRIMARY KEY (partner_id, note_id),
     FOREIGN KEY (partner_id) REFERENCES partners(id) ON DELETE CASCADE,
     FOREIGN KEY (note_id) REFERENCES notes(id) ON DELETE CASCADE
 )

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE partner_notes;

-- +goose StatementEnd
