INSERT INTO property_purchases_accounts_receivable (property_purchase_id, account_receivable_id)
SELECT id, property_purchase_id FROM accounts_receivables WHERE accounts_receivables.property_purchase_id IS NOT NULL;