-- +goose Up
-- +goose StatementBegin
ALTER TABLE stripe_payment_intents
   ADD COLUMN user_id INT NOT NULL,
   ADD FOREIGN KEY (user_id) REFERENCES users(id);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE stripe_payment_intents
   DROP COLUMN user_id,
   DROP FOREIGN KEY stripe_payment_intents_ibfk_2;
 

-- +goose StatementEnd
