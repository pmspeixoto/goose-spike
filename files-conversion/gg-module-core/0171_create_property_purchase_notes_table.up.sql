CREATE TABLE property_purchase_notes
(
    property_purchase_id  INT NOT NULL,
    note_id     INT NOT NULL,
    deleted_at  BIGINT,

    CONSTRAINT pk_property_purchase_notes PRIMARY KEY (property_purchase_id, note_id),
    FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id) ON DELETE CASCADE,
    FOREIGN KEY (note_id) REFERENCES notes(id) ON DELETE CASCADE
)
