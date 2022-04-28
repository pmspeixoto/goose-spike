CREATE TRIGGER property_purchases_subscriptions_deprecation AFTER INSERT ON property_purchases_subscriptions
    FOR EACH ROW
    UPDATE subscriptions s SET s.property_purchase_id = NEW.property_purchase_id WHERE s.id = NEW.subscription_id;