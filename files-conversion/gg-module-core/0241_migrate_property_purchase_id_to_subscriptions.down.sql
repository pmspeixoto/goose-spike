INSERT INTO property_purchases_subscriptions (property_purchase_id, subscription_id)
SELECT id, property_purchase_id FROM subscriptions
WHERE subscriptions.property_purchase_id IS NOT NULL AND subscriptions.property_purchase_id != 0;