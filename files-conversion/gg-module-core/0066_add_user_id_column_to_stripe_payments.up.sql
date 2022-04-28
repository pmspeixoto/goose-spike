ALTER TABLE stripe_payment_intents
  ADD COLUMN user_id INT NOT NULL,
  ADD FOREIGN KEY (user_id) REFERENCES users(id);
