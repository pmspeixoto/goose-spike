-- +goose Up
-- +goose StatementBegin
CREATE TABLE user_notes
 (
     user_id  INT NOT NULL,
     note_id     INT NOT NULL,
     deleted_at  BIGINT,
 
     CONSTRAINT pk_user_notes PRIMARY KEY (user_id, note_id),
     FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
     FOREIGN KEY (note_id) REFERENCES notes(id) ON DELETE CASCADE
 )

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE user_notes;

-- +goose StatementEnd
