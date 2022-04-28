ALTER TABLE stripe_payment_intents
  DROP COLUMN user_id,
  DROP FOREIGN KEY stripe_payment_intents_ibfk_2;

