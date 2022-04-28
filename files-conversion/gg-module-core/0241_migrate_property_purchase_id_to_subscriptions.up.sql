UPDATE subscriptions s, property_purchases_subscriptions pps
SET s.property_purchase_id = pps.property_purchase_id
WHERE s.id = pps.subscription_id;